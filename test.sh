echo "Running tests..."
echo

echo "*****"
echo
echo "Matrix mutliplication..."
output_mat_mul=$(./mat_mul <test/input_mat_mul)
echo $output_mat_mul
expected_output_mat_mul="
   7   10 
  15   22"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_mat_mul == *$expected_output_mat_mul* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_mat_mul' but got: $output_mat_mul"
  exit 1
fi

echo
echo "*****"
echo
echo "Area calculator..."
output_area_calc=$(./area_calc <tests/input_area_calc)
echo $output_area_calc
expected_output_area_calc="25.00"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  # exit 1
fi

if [[ $output_area_calc == *$expected_output_area_calc* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_area_calc' but got: $output_area_calc"
  # exit 1
fi

echo
echo "*****"
echo
echo "Matrix transpose..."
output_mat_transpose=$(./mat_transpose <tests/input_mat_transpose)
echo $output_mat_transpose
expected_output_mat_transpose="   1   4
   2   5
   3   6"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_mat_transpose == *$expected_output_mat_transpose* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_mat_transpose' but got: $output_mat_transpose"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0