class WysiwygInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    @builder.trix_editor(attribute_name, merged_input_options)
  end
end
