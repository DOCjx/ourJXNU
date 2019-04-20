var Record = function() {
    var change = function() {
        var tt;
        var the = $hyall,
            idx = the.getRowIdx($(this)),
            dt = the.getDataTable(),
            id = dt.getHyPk(idx),
            $modal = the.getFormModal();
        the.actionsHandlers.actionChange = function(rows, $modal, columns) {
            tt = rows;
            $.loading();
            $.each(rows, function(k, v) {
                $.post($.U('ajax?q=edit'), {
                    pk: v
                }, function(r) {
                    $.unloading();
                    if (!r.status) {
                        the.dtActionAlert(r);
                        return false
                    }
                    if ($.isPlainObject(r.columns)) columns = r.columns;
                    var change_col = jQuery.extend(true, {}, columns);
                    var col = ['college', 'class', 'graduate_year', 'sex', 'operator', 'hand_time', 'status'];
                    $.each(col, function(i, n) {
                        change_col[n]['form']['edit'] = false
                    });
                    change_col['studentid']['form']['attr'] = 'disabled';
                    change_col['name']['form']['attr'] = 'disabled';
                    var build = the.formBuilder(change_col, r.val, {
                        _submit: 'update',
                        _token: r.token
                    }, 'edit');
                    var tpl = {
                        modal: 'edit',
                        size: $modal.data('size') || '',
                        title: {
                            icon: 'fa-edit',
                            action: '变更'
                        },
                        body: {
                            main: build.html
                        }
                    };
                    the.setModal(tpl);
                    $('.form-horizontal .submit').attr('id', 'record-change-button');
                    $('.form-horizontal').attr('id', 'record-change');
                    the.validateFormHandler({
                        form: $modal.find('form'),
                        rules: build.rules,
                        hy: true
                    });
                    if (the.config.options.tips.edit) $modal.find('.alert-tips').show().find('span').html(the.config.options.tips.change);
                    $modal.on('shown.bs.modal', function() {
                        the.trigger('shown.hyall.form.edit')
                    });
                    $modal.modal('toggle')
                })
            })
        };
        the.on('click', '#record-change-button', function(e) {
            e.preventDefault();
            e.stopPropagation();
            var i = 0;
            var data = new Array();
            $("#record-change input[type='text']").each(function() {
                data[i] = $(this).attr('id');
                i++;
                data[i] = $(this).val();
                i++
            });
            $.post($.U('ajax?q=record_change'), {
                id: tt[0],
                info: data.join(',')
            }, function(r) {
                $('.all-modal-edit').fadeOut('slow');
                $('.hy-form-modal').attr({
                    'aria-hidden': "true",
                    style: "display: none;"
                }).removeClass('in');
                $('.modal-backdrop').remove();
                the.dtActionAlert(r);
                $.actionAlert(r)
            })
        })
    };
    return {
        init: function() {
            change()
        }
    }
}();