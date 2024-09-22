// +build amd64

TEXT ·sseSupported(SB), $0
    MOVQ    $1, AX
    CPUID
    TESTQ   $(1<<25), DX
    JZ      sseFalse
sseTrue:
    MOVQ    $1, AX
    RET
sseFalse:
    MOVQ    $0, AX
    RET
