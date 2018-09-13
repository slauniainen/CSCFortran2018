program two_dimensional_array
  implicit none
  integer, parameter :: nx = 16, ny = 16
  
  real :: field(0:nx, 0:ny)
  integer :: i, j
  write(*,*) size(field, 1)
! Initialize array with ones, except those where indices
! i + j < 16

 do i=0,nx
   do j=0,ny
     if (i + j < 16) then
       field(i,j) = 5.0
     else
       field(i,j) = 1.0
     end if
    end do
 end do 
 write(*,*) field(0,0)
 write(*,*) field(nx,ny)
 ! do i = 0, ny+1
 !    write(*,'(*(F4.1))') field(i,:)
 ! end do
end program two_dimensional_array


