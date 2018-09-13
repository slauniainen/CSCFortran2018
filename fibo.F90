program fibo

implicit none

real, dimension (1:100) :: x
integer :: k = 1

x(1) = 0.0
x(2) = 1.0

do k=3,10
 x(k) = x(k-1) + x(k-2)
 write(*,*) k, x(k)
end do
end program fibo
