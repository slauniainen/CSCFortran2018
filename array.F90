program array
  implicit none
  integer :: nx, ny
  integer :: i, alloc_stat
  real, allocatable :: A(:,:)
  ! TODO: define allocatable matrix A
  !nx = 10
  !ny = 5
  write (*,*) 'Give x and y dimensions of matrix A:'
  read (*,*) nx, ny
  allocate( A(nx,ny), stat=alloc_stat)
  if (alloc_stat /= 0) stop ! allocation error
  !A = 1.0
  call random_number(A)

  do i = 1, ny
     write(*,'(*(F5.2))') A(i,:)
  end do

  ! TODO: Fill in the missing parts
  write (*,*) 'Size of A:', size(A)
  write (*,*) 'Shape of A:',  shape(A)
  write (*,*) 'Sum of elements across 2nd dimension of A: '
  write (*,*) sum(A, dim=2)

  write (*,*) 'Coordinates of maximum element: '
  write (*,*) maxloc(A)
  write (*,*) 'Absolute minimum value: ' 
  write (*,*) minval(abs(A))
  write (*,*) 'Are all  elements of A greater than or equal to 0: '
  write (*,*) all(A .ge. 0)
  write (*,*) 'Number of elements greater than or equal to 0.5: '
  write (*,*) count(A .ge. 0.5)

end program array
