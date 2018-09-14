program cmdargs
  implicit none

  character(len=80) :: input_file, args(3)
  integer :: nsteps, rows, cols
  integer :: nargs, i
  input_file = 'default_input_file_name'
  nsteps = 0
  rows = 0
  cols = 0

  ! Read in the command line arguments and
  ! set up the needed variables
  ! TODO: get the argument count and process the arguments
  nargs = command_argument_count()
  write(*,*) nargs
  select case(nargs)
  case(0) ! No arguments -> default values
     write(*,'(A)') 'No command line arguments!'
     stop
  case(1) ! One argument -> input file name
     call get_command_argument(1, args(1))
     !args(1) = trim(adjustl(args(1)))
     read(args(1),*) input_file
     stop
  case(2) ! Two arguments -> input file name and number of steps
     write(*,*) 'in case 2'
     do i = 1,2
        call get_command_argument(i, args(i))
        args(i) = trim(adjustl(args(i)))
     end do
     read(args(1),'(a)') input_file
     read(args(2),'(i10)') nsteps
     write(*,*) input_file, len(input_file), nsteps
     stop

  case(3) ! Three arguments -> rows, cols and nsteps
     stop
  case default
     stop
  end select

  write(*, '(A)') 'Values of variables after command line processing:'
  write(*,'(A,A)') '  input_file: ', input_file
  write(*,'(A,I0)') '  nsteps: ', nsteps
  write(*,'(A,I0)') '  rows:   ', rows
  write(*,'(A,I0)') '  cols:   ', cols

end program cmdargs
