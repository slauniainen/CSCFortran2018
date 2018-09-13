program factorial_a
  implicit none
  integer, parameter :: n = 10
  integer :: numbers(n), facts(n)
  integer :: i
  numbers(1:n) = [ (i, i=1,n) ]
  
  write (*,*) 'Factorials:'
  call comp_fact(numbers,facts)
  do i = 1, n
    write (*,*) numbers(i), facts(i)
  end do
 ! do i = 1, n
 !    write (*,'(2I10)') numbers(i), factorial(numbers(i))
 ! end do
  
contains
  subroutine comp_fact(x,f)
    implicit none
    integer, intent(in) :: x
    integer, dimension(:), allocatable, intent(out) :: f
    integer :: k,n

    n = len(x)
    
    allocate(f(n))
    
    do k=1,n
       f(k) = factorial(x(k))
    end do
 
   integer function factorial(var)
     !computes x!
     implicit none
     integer var

     factorial = 1.0
     do k = 1,var
       factorial = factorial * k
     end do
   end function factorial
  end subroutine comp_fact

end program factorial_a
