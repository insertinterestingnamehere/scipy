      subroutine cdotcwrp(ret, n, cx, incx, cy, incy)
        external wcdotc
        complex wcdotc
        complex ret
        integer n
        complex cx(n)
        integer incx
        complex cy(n)
        integer incy
        ret = wcdotc(n, cx, incx, cy, incy)
      end

      subroutine cdotuwrp(ret, n, cx, incx, cy, incy)
        external wcdotu
        complex wcdotu
        complex ret
        integer n
        complex cx(n)
        integer incx
        complex cy(n)
        integer incy
        ret = wcdotu(n, cx, incx, cy, incy)
      end

      subroutine dasumwrp(ret, n, dx, incx)
        external dasum
        double precision dasum
        double precision ret
        integer n
        double precision dx(n)
        integer incx
        ret = dasum(n, dx, incx)
      end

      subroutine dcabs1wrp(ret, z)
        external dcabs1
        double precision dcabs1
        double precision ret
        complex*16 z
        ret = dcabs1(z)
      end

      subroutine ddotwrp(ret, n, dx, incx, dy, incy)
        external ddot
        double precision ddot
        double precision ret
        integer n
        double precision dx(n)
        integer incx
        double precision dy(n)
        integer incy
        ret = ddot(n, dx, incx, dy, incy)
      end

      subroutine dnrm2wrp(ret, n, x, incx)
        external dnrm2
        double precision dnrm2
        double precision ret
        integer n
        double precision x(n)
        integer incx
        ret = dnrm2(n, x, incx)
      end

      subroutine dsdotwrp(ret, n, sx, incx, sy, incy)
        external dsdot
        double precision dsdot
        double precision ret
        integer n
        real sx(n)
        integer incx
        real sy(n)
        integer incy
        ret = dsdot(n, sx, incx, sy, incy)
      end

      subroutine dzasumwrp(ret, n, zx, incx)
        external dzasum
        double precision dzasum
        double precision ret
        integer n
        complex*16 zx(n)
        integer incx
        ret = dzasum(n, zx, incx)
      end

      subroutine dznrm2wrp(ret, n, x, incx)
        external dznrm2
        double precision dznrm2
        double precision ret
        integer n
        complex*16 x(n)
        integer incx
        ret = dznrm2(n, x, incx)
      end

      subroutine icamaxwrp(ret, n, cx, incx)
        external icamax
        integer icamax
        integer ret
        integer n
        complex cx(n)
        integer incx
        ret = icamax(n, cx, incx)
      end

      subroutine idamaxwrp(ret, n, dx, incx)
        external idamax
        integer idamax
        integer ret
        integer n
        double precision dx(n)
        integer incx
        ret = idamax(n, dx, incx)
      end

      subroutine isamaxwrp(ret, n, sx, incx)
        external isamax
        integer isamax
        integer ret
        integer n
        real sx(n)
        integer incx
        ret = isamax(n, sx, incx)
      end

      subroutine izamaxwrp(ret, n, zx, incx)
        external izamax
        integer izamax
        integer ret
        integer n
        complex*16 zx(n)
        integer incx
        ret = izamax(n, zx, incx)
      end

      subroutine lsamewrp(ret, ca, cb)
        external lsame
        logical lsame
        logical ret
        character ca
        character cb
        ret = lsame(ca, cb)
      end

      subroutine sasumwrp(ret, n, sx, incx)
        external wsasum
        real wsasum
        real ret
        integer n
        real sx(n)
        integer incx
        ret = wsasum(n, sx, incx)
      end

      subroutine scabs1wrp(ret, z)
        external scabs1
        real scabs1
        real ret
        complex z
        ret = scabs1(z)
      end

      subroutine scasumwrp(ret, n, cx, incx)
        external scasum
        real scasum
        real ret
        integer n
        complex cx(n)
        integer incx
        ret = scasum(n, cx, incx)
      end

      subroutine scnrm2wrp(ret, n, x, incx)
        external scnrm2
        real scnrm2
        real ret
        integer n
        complex x(n)
        integer incx
        ret = scnrm2(n, x, incx)
      end

      subroutine sdotwrp(ret, n, sx, incx, sy, incy)
        external wsdot
        real wsdot
        real ret
        integer n
        real sx(n)
        integer incx
        real sy(n)
        integer incy
        ret = wsdot(n, sx, incx, sy, incy)
      end

      subroutine sdsdotwrp(ret, n, sb, sx, incx, sy, incy)
        external sdsdot
        real sdsdot
        real ret
        integer n
        real sb
        real sx(n)
        integer incx
        real sy(n)
        integer incy
        ret = sdsdot(n, sb, sx, incx, sy, incy)
      end

      subroutine snrm2wrp(ret, n, x, incx)
        external wsnrm2
        real wsnrm2
        real ret
        integer n
        real x(n)
        integer incx
        ret = wsnrm2(n, x, incx)
      end

      subroutine zdotcwrp(ret, n, zx, incx, zy, incy)
        external wzdotc
        complex*16 wzdotc
        complex*16 ret
        integer n
        complex*16 zx(n)
        integer incx
        complex*16 zy(n)
        integer incy
        ret = wzdotc(n, zx, incx, zy, incy)
      end

      subroutine zdotuwrp(ret, n, zx, incx, zy, incy)
        external wzdotu
        complex*16 wzdotu
        complex*16 ret
        integer n
        complex*16 zx(n)
        integer incx
        complex*16 zy(n)
        integer incy
        ret = wzdotu(n, zx, incx, zy, incy)
      end
