program main
  interface
    subroutine sub_routine(a, array_size)
      !$acc routine seq
      real(8) :: a(:)
      integer :: array_size
    end subroutine
  end interface


  integer :: array_size = 10000
  integer :: n = 100000

  real(8), dimension(:), allocatable :: a

  allocate(a(n))

  !$acc kernels copy(a(1:n)), copyin(array_size)
  do i = 1, n
  call sub_routine(a, array_size)
  enddo
  !$acc end kernels

end program
