subroutine sub_routine(a, array_size)
  !$acc routine seq
  real(8) :: a(:)
  integer :: array_size

  real(8), dimension(array_size) :: array
  integer :: i

  do i = 1, array_size
    array(i) = a(i)
  end do
end subroutine
