      subroutine disnanwrp(ret, din)
        external disnan
        logical disnan
        logical ret
        double precision din
        ret = disnan(din)
      end

      subroutine dlamchwrp(ret, cmach)
        external dlamch
        double precision dlamch
        double precision ret
        character cmach
        ret = dlamch(cmach)
      end

      subroutine dzsum1wrp(ret, n, cx, incx)
        external dzsum1
        double precision dzsum1
        double precision ret
        integer n
        complex*16 cx(n)
        integer incx
        ret = dzsum1(n, cx, incx)
      end

      subroutine icmax1wrp(ret, n, cx, incx)
        external icmax1
        integer icmax1
        integer ret
        integer n
        complex cx(n)
        integer incx
        ret = icmax1(n, cx, incx)
      end

      subroutine ieeeckwrp(ret, ispec, zero, one)
        external ieeeck
        integer ieeeck
        integer ret
        integer ispec
        real zero
        real one
        ret = ieeeck(ispec, zero, one)
      end

      subroutine iparmqwrp(ret, ispec, name, opts, n, ilo, ihi, lwork)
        external iparmq
        integer iparmq
        integer ret
        integer ispec
        character name
        character opts
        integer n
        integer ilo
        integer ihi
        integer lwork
        ret = iparmq(ispec, name, opts, n, ilo, ihi, lwork)
      end

      subroutine izmax1wrp(ret, n, cx, incx)
        external izmax1
        integer izmax1
        integer ret
        integer n
        complex*16 cx(n)
        integer incx
        ret = izmax1(n, cx, incx)
      end

      subroutine lsamenwrp(ret, n, ca, cb)
        external lsamen
        logical lsamen
        logical ret
        integer n
        character ca
        character cb
        ret = lsamen(n, ca, cb)
      end

      subroutine scsum1wrp(ret, n, cx, incx)
        external wscsum1
        real wscsum1
        real ret
        integer n
        complex cx(n)
        integer incx
        ret = wscsum1(n, cx, incx)
      end

      subroutine slamchwrp(ret, cmach)
        external wslamch
        real wslamch
        real ret
        character cmach
        ret = wslamch(cmach)
      end
