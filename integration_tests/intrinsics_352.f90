program intrinsics_352
    real :: i = -1
    real :: i2 = 1.7
    real :: x1
    real :: x2
    real :: x3
    real :: x4
    real :: x5
    real :: x6
    real :: x7
    real :: x8
    character(len=6) :: s = "   abc"
    character(len=3) :: s1
    complex :: c1 = (1.0,2.0)
    real :: r1

    x1 = abs(a = i)
    print *, x1
    if (x1-1.0 > 1e-8) error stop

    x2 = acos(x = i) 
    print *, x2
    if(x2 - 3.14159274 > 1e-8) error stop

    x3 = acosd(x = i)
    print *, x3
    if(x3 - 180 > 1e-8) error stop

    x4 = acosh(x = i2)
    print *, x4 
    if(x4 - 1.12323105 > 1e-8) error stop

    x5 = asin(x = i)
    print *, x5
    if(x5 - (-1.57079637) > 1e-8) error stop

    x6 = asind(x = i)
    print *, x6
    if(x6 - (-90) > 1e-8) error stop

    x7 = asinh(x = i)
    print *, x7
    if(x7 - (-0.881373584) > 1e-8) error stop

    x8 = cos(x = i)
    print *, x8
    if(x8 - 0.540302277 > 1e-8) error stop

    s1 = adjustl(string = s)
    print *, s1
    if(s1 /= "abc") error stop

    r1 = aimag(z = c1)
    print *, r1
    if(r1 - 2.0 > 1e-8) error stop
end program