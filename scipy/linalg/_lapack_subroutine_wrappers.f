      subroutine clangbwrp(ret, norm, n, kl, ku, ab, ldab, work)
        external wclangb
        real wclangb
        real ret
        character norm
        integer n
        integer kl
        integer ku
        complex ab
        integer ldab
        real work
        ret = wclangb(norm, n, kl, ku, ab, ldab, work)
      end

      subroutine clangewrp(ret, norm, m, n, a, lda, work)
        external wclange
        real wclange
        real ret
        character norm
        integer m
        integer n
        complex a
        integer lda
        real work
        ret = wclange(norm, m, n, a, lda, work)
      end

      subroutine clangtwrp(ret, norm, n, dl, d, du)
        external wclangt
        real wclangt
        real ret
        character norm
        integer n
        complex dl
        complex d
        complex du
        ret = wclangt(norm, n, dl, d, du)
      end

      subroutine clanhbwrp(ret, norm, uplo, n, k, ab, ldab, work)
        external wclanhb
        real wclanhb
        real ret
        character norm
        character uplo
        integer n
        integer k
        complex ab
        integer ldab
        real work
        ret = wclanhb(norm, uplo, n, k, ab, ldab, work)
      end

      subroutine clanhewrp(ret, norm, uplo, n, a, lda, work)
        external wclanhe
        real wclanhe
        real ret
        character norm
        character uplo
        integer n
        complex a
        integer lda
        real work
        ret = wclanhe(norm, uplo, n, a, lda, work)
      end

      subroutine clanhpwrp(ret, norm, uplo, n, ap, work)
        external wclanhp
        real wclanhp
        real ret
        character norm
        character uplo
        integer n
        complex ap
        real work
        ret = wclanhp(norm, uplo, n, ap, work)
      end

      subroutine clanhswrp(ret, norm, n, a, lda, work)
        external wclanhs
        real wclanhs
        real ret
        character norm
        integer n
        complex a
        integer lda
        real work
        ret = wclanhs(norm, n, a, lda, work)
      end

      subroutine clanhtwrp(ret, norm, n, d, e)
        external wclanht
        real wclanht
        real ret
        character norm
        integer n
        real d
        complex e
        ret = wclanht(norm, n, d, e)
      end

      subroutine clansbwrp(ret, norm, uplo, n, k, ab, ldab, work)
        external wclansb
        real wclansb
        real ret
        character norm
        character uplo
        integer n
        integer k
        complex ab
        integer ldab
        real work
        ret = wclansb(norm, uplo, n, k, ab, ldab, work)
      end

      subroutine clanspwrp(ret, norm, uplo, n, ap, work)
        external wclansp
        real wclansp
        real ret
        character norm
        character uplo
        integer n
        complex ap
        real work
        ret = wclansp(norm, uplo, n, ap, work)
      end

      subroutine clansywrp(ret, norm, uplo, n, a, lda, work)
        external wclansy
        real wclansy
        real ret
        character norm
        character uplo
        integer n
        complex a
        integer lda
        real work
        ret = wclansy(norm, uplo, n, a, lda, work)
      end

      subroutine clantbwrp(ret, norm, uplo, diag, n, k, ab, ldab, work)
        external wclantb
        real wclantb
        real ret
        character norm
        character uplo
        character diag
        integer n
        integer k
        complex ab
        integer ldab
        real work
        ret = wclantb(norm, uplo, diag, n, k, ab, ldab, work)
      end

      subroutine clantpwrp(ret, norm, uplo, diag, n, ap, work)
        external wclantp
        real wclantp
        real ret
        character norm
        character uplo
        character diag
        integer n
        complex ap
        real work
        ret = wclantp(norm, uplo, diag, n, ap, work)
      end

      subroutine clantrwrp(ret, norm, uplo, diag, m, n, a, lda, work)
        external wclantr
        real wclantr
        real ret
        character norm
        character uplo
        character diag
        integer m
        integer n
        complex a
        integer lda
        real work
        ret = wclantr(norm, uplo, diag, m, n, a, lda, work)
      end

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

      subroutine dlangbwrp(ret, norm, n, kl, ku, ab, ldab, work)
        external dlangb
        double precision dlangb
        double precision ret
        character norm
        integer n
        integer kl
        integer ku
        double precision ab
        integer ldab
        double precision work
        ret = dlangb(norm, n, kl, ku, ab, ldab, work)
      end

      subroutine dlangewrp(ret, norm, m, n, a, lda, work)
        external dlange
        double precision dlange
        double precision ret
        character norm
        integer m
        integer n
        double precision a
        integer lda
        double precision work
        ret = dlange(norm, m, n, a, lda, work)
      end

      subroutine dlangtwrp(ret, norm, n, dl, d, du)
        external dlangt
        double precision dlangt
        double precision ret
        character norm
        integer n
        double precision dl
        double precision d
        double precision du
        ret = dlangt(norm, n, dl, d, du)
      end

      subroutine dlanhswrp(ret, norm, n, a, lda, work)
        external dlanhs
        double precision dlanhs
        double precision ret
        character norm
        integer n
        double precision a
        integer lda
        double precision work
        ret = dlanhs(norm, n, a, lda, work)
      end

      subroutine dlansbwrp(ret, norm, uplo, n, k, ab, ldab, work)
        external dlansb
        double precision dlansb
        double precision ret
        character norm
        character uplo
        integer n
        integer k
        double precision ab
        integer ldab
        double precision work
        ret = dlansb(norm, uplo, n, k, ab, ldab, work)
      end

      subroutine dlanspwrp(ret, norm, uplo, n, ap, work)
        external dlansp
        double precision dlansp
        double precision ret
        character norm
        character uplo
        integer n
        double precision ap
        double precision work
        ret = dlansp(norm, uplo, n, ap, work)
      end

      subroutine dlanstwrp(ret, norm, n, d, e)
        external dlanst
        double precision dlanst
        double precision ret
        character norm
        integer n
        double precision d
        double precision e
        ret = dlanst(norm, n, d, e)
      end

      subroutine dlansywrp(ret, norm, uplo, n, a, lda, work)
        external dlansy
        double precision dlansy
        double precision ret
        character norm
        character uplo
        integer n
        double precision a
        integer lda
        double precision work
        ret = dlansy(norm, uplo, n, a, lda, work)
      end

      subroutine dlantbwrp(ret, norm, uplo, diag, n, k, ab, ldab, work)
        external dlantb
        double precision dlantb
        double precision ret
        character norm
        character uplo
        character diag
        integer n
        integer k
        double precision ab
        integer ldab
        double precision work
        ret = dlantb(norm, uplo, diag, n, k, ab, ldab, work)
      end

      subroutine dlantpwrp(ret, norm, uplo, diag, n, ap, work)
        external dlantp
        double precision dlantp
        double precision ret
        character norm
        character uplo
        character diag
        integer n
        double precision ap
        double precision work
        ret = dlantp(norm, uplo, diag, n, ap, work)
      end

      subroutine dlantrwrp(ret, norm, uplo, diag, m, n, a, lda, work)
        external dlantr
        double precision dlantr
        double precision ret
        character norm
        character uplo
        character diag
        integer m
        integer n
        double precision a
        integer lda
        double precision work
        ret = dlantr(norm, uplo, diag, m, n, a, lda, work)
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

      subroutine ilaenvwrp(ret, ispec, name, opts, n1, n2, n3, n4)
        external ilaenv
        integer ilaenv
        integer ret
        integer ispec
        character name
        character opts
        integer n1
        integer n2
        integer n3
        integer n4
        ret = ilaenv(ispec, name, opts, n1, n2, n3, n4)
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

      subroutine slangbwrp(ret, norm, n, kl, ku, ab, ldab, work)
        external wslangb
        real wslangb
        real ret
        character norm
        integer n
        integer kl
        integer ku
        real ab
        integer ldab
        real work
        ret = wslangb(norm, n, kl, ku, ab, ldab, work)
      end

      subroutine slangewrp(ret, norm, m, n, a, lda, work)
        external wslange
        real wslange
        real ret
        character norm
        integer m
        integer n
        real a
        integer lda
        real work
        ret = wslange(norm, m, n, a, lda, work)
      end

      subroutine slangtwrp(ret, norm, n, dl, d, du)
        external wslangt
        real wslangt
        real ret
        character norm
        integer n
        real dl
        real d
        real du
        ret = wslangt(norm, n, dl, d, du)
      end

      subroutine slanhswrp(ret, norm, n, a, lda, work)
        external wslanhs
        real wslanhs
        real ret
        character norm
        integer n
        real a
        integer lda
        real work
        ret = wslanhs(norm, n, a, lda, work)
      end

      subroutine slansbwrp(ret, norm, uplo, n, k, ab, ldab, work)
        external wslansb
        real wslansb
        real ret
        character norm
        character uplo
        integer n
        integer k
        real ab
        integer ldab
        real work
        ret = wslansb(norm, uplo, n, k, ab, ldab, work)
      end

      subroutine slanspwrp(ret, norm, uplo, n, ap, work)
        external wslansp
        real wslansp
        real ret
        character norm
        character uplo
        integer n
        real ap
        real work
        ret = wslansp(norm, uplo, n, ap, work)
      end

      subroutine slanstwrp(ret, norm, n, d, e)
        external wslanst
        real wslanst
        real ret
        character norm
        integer n
        real d
        real e
        ret = wslanst(norm, n, d, e)
      end

      subroutine slansywrp(ret, norm, uplo, n, a, lda, work)
        external wslansy
        real wslansy
        real ret
        character norm
        character uplo
        integer n
        real a
        integer lda
        real work
        ret = wslansy(norm, uplo, n, a, lda, work)
      end

      subroutine slantbwrp(ret, norm, uplo, diag, n, k, ab, ldab, work)
        external wslantb
        real wslantb
        real ret
        character norm
        character uplo
        character diag
        integer n
        integer k
        real ab
        integer ldab
        real work
        ret = wslantb(norm, uplo, diag, n, k, ab, ldab, work)
      end

      subroutine slantpwrp(ret, norm, uplo, diag, n, ap, work)
        external wslantp
        real wslantp
        real ret
        character norm
        character uplo
        character diag
        integer n
        real ap
        real work
        ret = wslantp(norm, uplo, diag, n, ap, work)
      end

      subroutine slantrwrp(ret, norm, uplo, diag, m, n, a, lda, work)
        external wslantr
        real wslantr
        real ret
        character norm
        character uplo
        character diag
        integer m
        integer n
        real a
        integer lda
        real work
        ret = wslantr(norm, uplo, diag, m, n, a, lda, work)
      end

      subroutine zlangbwrp(ret, norm, n, kl, ku, ab, ldab, work)
        external wzlangb
        double precision wzlangb
        double precision ret
        character norm
        integer n
        integer kl
        integer ku
        complex*16 ab
        integer ldab
        double precision work
        ret = wzlangb(norm, n, kl, ku, ab, ldab, work)
      end

      subroutine zlangewrp(ret, norm, m, n, a, lda, work)
        external wzlange
        double precision wzlange
        double precision ret
        character norm
        integer m
        integer n
        complex*16 a
        integer lda
        double precision work
        ret = wzlange(norm, m, n, a, lda, work)
      end

      subroutine zlangtwrp(ret, norm, n, dl, d, du)
        external wzlangt
        double precision wzlangt
        double precision ret
        character norm
        integer n
        complex*16 dl
        complex*16 d
        complex*16 du
        ret = wzlangt(norm, n, dl, d, du)
      end

      subroutine zlanhbwrp(ret, norm, uplo, n, k, ab, ldab, work)
        external wzlanhb
        double precision wzlanhb
        double precision ret
        character norm
        character uplo
        integer n
        integer k
        complex*16 ab
        integer ldab
        double precision work
        ret = wzlanhb(norm, uplo, n, k, ab, ldab, work)
      end

      subroutine zlanhewrp(ret, norm, uplo, n, a, lda, work)
        external wzlanhe
        double precision wzlanhe
        double precision ret
        character norm
        character uplo
        integer n
        complex*16 a
        integer lda
        double precision work
        ret = wzlanhe(norm, uplo, n, a, lda, work)
      end

      subroutine zlanhpwrp(ret, norm, uplo, n, ap, work)
        external wzlanhp
        double precision wzlanhp
        double precision ret
        character norm
        character uplo
        integer n
        complex*16 ap
        double precision work
        ret = wzlanhp(norm, uplo, n, ap, work)
      end

      subroutine zlanhswrp(ret, norm, n, a, lda, work)
        external wzlanhs
        double precision wzlanhs
        double precision ret
        character norm
        integer n
        complex*16 a
        integer lda
        double precision work
        ret = wzlanhs(norm, n, a, lda, work)
      end

      subroutine zlanhtwrp(ret, norm, n, d, e)
        external wzlanht
        double precision wzlanht
        double precision ret
        character norm
        integer n
        double precision d
        complex*16 e
        ret = wzlanht(norm, n, d, e)
      end

      subroutine zlansbwrp(ret, norm, uplo, n, k, ab, ldab, work)
        external wzlansb
        double precision wzlansb
        double precision ret
        character norm
        character uplo
        integer n
        integer k
        complex*16 ab
        integer ldab
        double precision work
        ret = wzlansb(norm, uplo, n, k, ab, ldab, work)
      end

      subroutine zlanspwrp(ret, norm, uplo, n, ap, work)
        external wzlansp
        double precision wzlansp
        double precision ret
        character norm
        character uplo
        integer n
        complex*16 ap
        double precision work
        ret = wzlansp(norm, uplo, n, ap, work)
      end

      subroutine zlansywrp(ret, norm, uplo, n, a, lda, work)
        external wzlansy
        double precision wzlansy
        double precision ret
        character norm
        character uplo
        integer n
        complex*16 a
        integer lda
        double precision work
        ret = wzlansy(norm, uplo, n, a, lda, work)
      end

      subroutine zlantbwrp(ret, norm, uplo, diag, n, k, ab, ldab, work)
        external wzlantb
        double precision wzlantb
        double precision ret
        character norm
        character uplo
        character diag
        integer n
        integer k
        complex*16 ab
        integer ldab
        double precision work
        ret = wzlantb(norm, uplo, diag, n, k, ab, ldab, work)
      end

      subroutine zlantpwrp(ret, norm, uplo, diag, n, ap, work)
        external wzlantp
        double precision wzlantp
        double precision ret
        character norm
        character uplo
        character diag
        integer n
        complex*16 ap
        double precision work
        ret = wzlantp(norm, uplo, diag, n, ap, work)
      end

      subroutine zlantrwrp(ret, norm, uplo, diag, m, n, a, lda, work)
        external wzlantr
        double precision wzlantr
        double precision ret
        character norm
        character uplo
        character diag
        integer m
        integer n
        complex*16 a
        integer lda
        double precision work
        ret = wzlantr(norm, uplo, diag, m, n, a, lda, work)
      end
