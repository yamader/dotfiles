set OPTS \
  --inplace \
  --end_of_line lf \
  --indent_style space \
  --indent_size 2 \
  --tab_width 2 \
  --max_line_length 120 \
  --brace_style otbs \
  --soft_max_line_length 80 \
  --align_switch_statements true \
  --outdent_attributes false \
  --split_operator_at_line_end false \
  --space_after_cast false \
  --space_before_function_parameters false \
  --selective_import_space false \
  --compact_labeled_statements true \
  --template_constraint_style conditional_newline \
  --single_template_constraint_indent false \
  --space_before_aa_colon false \
  --keep_line_breaks true

alias _dfmt "dub run -q dfmt --"

function dfmt
  if [ -n "$argv" ]
    _dfmt $OPTS $argv
  else
    _dfmt $OPTS **/*.d
  end
end
