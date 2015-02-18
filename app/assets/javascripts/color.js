var initColorpicker = function() {
    $('input[type=color]').each(function() {
        var $input = $(this);
        $input.ColorPicker({
            onSubmit: function(hsb, hex, rgb, el) {
                $(el).val(hex);
                $(el).ColorPickerHide();
            }
        });
    });         
};
 
if(!Modernizr.inputtypes.color){
    $(document).ready(initColorpicker);
};