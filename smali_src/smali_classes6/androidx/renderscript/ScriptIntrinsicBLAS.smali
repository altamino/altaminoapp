.class public final Landroidx/renderscript/ScriptIntrinsicBLAS;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/ScriptIntrinsicBLAS$Side;,
        Landroidx/renderscript/ScriptIntrinsicBLAS$Diag;,
        Landroidx/renderscript/ScriptIntrinsicBLAS$Uplo;,
        Landroidx/renderscript/ScriptIntrinsicBLAS$Transpose;
    }
.end annotation


# static fields
.field public static final CONJ_TRANSPOSE:I = 0x71

.field private static final INTRINSIC_API_LEVEL:I = 0x17

.field public static final LEFT:I = 0x8d

.field public static final LOWER:I = 0x7a

.field public static final NON_UNIT:I = 0x83

.field public static final NO_TRANSPOSE:I = 0x6f

.field public static final RIGHT:I = 0x8e

.field private static final RsBlas_bnnm:I = 0x3e8

.field private static final RsBlas_caxpy:I = 0x1d

.field private static final RsBlas_ccopy:I = 0x1c

.field private static final RsBlas_cdotc_sub:I = 0x6

.field private static final RsBlas_cdotu_sub:I = 0x5

.field private static final RsBlas_cgbmv:I = 0x40

.field private static final RsBlas_cgemm:I = 0x7d

.field private static final RsBlas_cgemv:I = 0x3f

.field private static final RsBlas_cgerc:I = 0x63

.field private static final RsBlas_cgeru:I = 0x62

.field private static final RsBlas_chbmv:I = 0x60

.field private static final RsBlas_chemm:I = 0x89

.field private static final RsBlas_chemv:I = 0x5f

.field private static final RsBlas_cher:I = 0x64

.field private static final RsBlas_cher2:I = 0x66

.field private static final RsBlas_cher2k:I = 0x8b

.field private static final RsBlas_cherk:I = 0x8a

.field private static final RsBlas_chpmv:I = 0x61

.field private static final RsBlas_chpr:I = 0x65

.field private static final RsBlas_chpr2:I = 0x67

.field private static final RsBlas_cscal:I = 0x2b

.field private static final RsBlas_csscal:I = 0x2d

.field private static final RsBlas_cswap:I = 0x1b

.field private static final RsBlas_csymm:I = 0x7e

.field private static final RsBlas_csyr2k:I = 0x80

.field private static final RsBlas_csyrk:I = 0x7f

.field private static final RsBlas_ctbmv:I = 0x42

.field private static final RsBlas_ctbsv:I = 0x45

.field private static final RsBlas_ctpmv:I = 0x43

.field private static final RsBlas_ctpsv:I = 0x46

.field private static final RsBlas_ctrmm:I = 0x81

.field private static final RsBlas_ctrmv:I = 0x41

.field private static final RsBlas_ctrsm:I = 0x82

.field private static final RsBlas_ctrsv:I = 0x44

.field private static final RsBlas_dasum:I = 0xc

.field private static final RsBlas_daxpy:I = 0x1a

.field private static final RsBlas_dcopy:I = 0x19

.field private static final RsBlas_ddot:I = 0x4

.field private static final RsBlas_dgbmv:I = 0x38

.field private static final RsBlas_dgemm:I = 0x77

.field private static final RsBlas_dgemv:I = 0x37

.field private static final RsBlas_dger:I = 0x5a

.field private static final RsBlas_dnrm2:I = 0xb

.field private static final RsBlas_drot:I = 0x27

.field private static final RsBlas_drotg:I = 0x25

.field private static final RsBlas_drotm:I = 0x28

.field private static final RsBlas_drotmg:I = 0x26

.field private static final RsBlas_dsbmv:I = 0x58

.field private static final RsBlas_dscal:I = 0x2a

.field private static final RsBlas_dsdot:I = 0x2

.field private static final RsBlas_dspmv:I = 0x59

.field private static final RsBlas_dspr:I = 0x5c

.field private static final RsBlas_dspr2:I = 0x5e

.field private static final RsBlas_dswap:I = 0x18

.field private static final RsBlas_dsymm:I = 0x78

.field private static final RsBlas_dsymv:I = 0x57

.field private static final RsBlas_dsyr:I = 0x5b

.field private static final RsBlas_dsyr2:I = 0x5d

.field private static final RsBlas_dsyr2k:I = 0x7a

.field private static final RsBlas_dsyrk:I = 0x79

.field private static final RsBlas_dtbmv:I = 0x3a

.field private static final RsBlas_dtbsv:I = 0x3d

.field private static final RsBlas_dtpmv:I = 0x3b

.field private static final RsBlas_dtpsv:I = 0x3e

.field private static final RsBlas_dtrmm:I = 0x7b

.field private static final RsBlas_dtrmv:I = 0x39

.field private static final RsBlas_dtrsm:I = 0x7c

.field private static final RsBlas_dtrsv:I = 0x3c

.field private static final RsBlas_dzasum:I = 0x10

.field private static final RsBlas_dznrm2:I = 0xf

.field private static final RsBlas_icamax:I = 0x13

.field private static final RsBlas_idamax:I = 0x12

.field private static final RsBlas_isamax:I = 0x11

.field private static final RsBlas_izamax:I = 0x14

.field private static final RsBlas_sasum:I = 0xa

.field private static final RsBlas_saxpy:I = 0x17

.field private static final RsBlas_scasum:I = 0xe

.field private static final RsBlas_scnrm2:I = 0xd

.field private static final RsBlas_scopy:I = 0x16

.field private static final RsBlas_sdot:I = 0x3

.field private static final RsBlas_sdsdot:I = 0x1

.field private static final RsBlas_sgbmv:I = 0x30

.field private static final RsBlas_sgemm:I = 0x71

.field private static final RsBlas_sgemv:I = 0x2f

.field private static final RsBlas_sger:I = 0x52

.field private static final RsBlas_snrm2:I = 0x9

.field private static final RsBlas_srot:I = 0x23

.field private static final RsBlas_srotg:I = 0x21

.field private static final RsBlas_srotm:I = 0x24

.field private static final RsBlas_srotmg:I = 0x22

.field private static final RsBlas_ssbmv:I = 0x50

.field private static final RsBlas_sscal:I = 0x29

.field private static final RsBlas_sspmv:I = 0x51

.field private static final RsBlas_sspr:I = 0x54

.field private static final RsBlas_sspr2:I = 0x56

.field private static final RsBlas_sswap:I = 0x15

.field private static final RsBlas_ssymm:I = 0x72

.field private static final RsBlas_ssymv:I = 0x4f

.field private static final RsBlas_ssyr:I = 0x53

.field private static final RsBlas_ssyr2:I = 0x55

.field private static final RsBlas_ssyr2k:I = 0x74

.field private static final RsBlas_ssyrk:I = 0x73

.field private static final RsBlas_stbmv:I = 0x32

.field private static final RsBlas_stbsv:I = 0x35

.field private static final RsBlas_stpmv:I = 0x33

.field private static final RsBlas_stpsv:I = 0x36

.field private static final RsBlas_strmm:I = 0x75

.field private static final RsBlas_strmv:I = 0x31

.field private static final RsBlas_strsm:I = 0x76

.field private static final RsBlas_strsv:I = 0x34

.field private static final RsBlas_zaxpy:I = 0x20

.field private static final RsBlas_zcopy:I = 0x1f

.field private static final RsBlas_zdotc_sub:I = 0x8

.field private static final RsBlas_zdotu_sub:I = 0x7

.field private static final RsBlas_zdscal:I = 0x2e

.field private static final RsBlas_zgbmv:I = 0x48

.field private static final RsBlas_zgemm:I = 0x83

.field private static final RsBlas_zgemv:I = 0x47

.field private static final RsBlas_zgerc:I = 0x6c

.field private static final RsBlas_zgeru:I = 0x6b

.field private static final RsBlas_zhbmv:I = 0x69

.field private static final RsBlas_zhemm:I = 0x8c

.field private static final RsBlas_zhemv:I = 0x68

.field private static final RsBlas_zher:I = 0x6d

.field private static final RsBlas_zher2:I = 0x6f

.field private static final RsBlas_zher2k:I = 0x8e

.field private static final RsBlas_zherk:I = 0x8d

.field private static final RsBlas_zhpmv:I = 0x6a

.field private static final RsBlas_zhpr:I = 0x6e

.field private static final RsBlas_zhpr2:I = 0x70

.field private static final RsBlas_zscal:I = 0x2c

.field private static final RsBlas_zswap:I = 0x1e

.field private static final RsBlas_zsymm:I = 0x84

.field private static final RsBlas_zsyr2k:I = 0x86

.field private static final RsBlas_zsyrk:I = 0x85

.field private static final RsBlas_ztbmv:I = 0x4a

.field private static final RsBlas_ztbsv:I = 0x4d

.field private static final RsBlas_ztpmv:I = 0x4b

.field private static final RsBlas_ztpsv:I = 0x4e

.field private static final RsBlas_ztrmm:I = 0x87

.field private static final RsBlas_ztrmv:I = 0x49

.field private static final RsBlas_ztrsm:I = 0x88

.field private static final RsBlas_ztrsv:I = 0x4c

.field public static final TRANSPOSE:I = 0x70

.field public static final UNIT:I = 0x84

.field public static final UPPER:I = 0x79


# instance fields
.field private mLUT:Landroidx/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/ScriptIntrinsicBLAS;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/renderscript/Element;->U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    const/16 v2, 0xd

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2, v0, v1, v3}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    new-instance v2, Landroidx/renderscript/ScriptIntrinsicBLAS;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/ScriptIntrinsicBLAS;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 27
    return-object v2
.end method

.method static validateConjTranspose(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x6f

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x71

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 12
    .line 13
    const-string v0, "Invalid transpose passed to BLAS"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method static validateDiag(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x83

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x84

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 12
    .line 13
    const-string v0, "Invalid diag passed to BLAS"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method static validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 45
    move-result p2

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 59
    move-result p0

    .line 60
    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 69
    move-result p0

    .line 70
    const/4 p2, 0x1

    .line 71
    .line 72
    if-gt p0, p2, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 80
    move-result p0

    .line 81
    .line 82
    if-gt p0, p2, :cond_3

    .line 83
    .line 84
    if-lez p4, :cond_2

    .line 85
    .line 86
    if-lez p6, :cond_2

    .line 87
    .line 88
    const/16 p0, 0x6f

    .line 89
    .line 90
    if-ne p1, p0, :cond_0

    .line 91
    sub-int/2addr v1, p2

    .line 92
    mul-int/2addr v1, p4

    .line 93
    add-int/2addr v1, p2

    .line 94
    sub-int/2addr v0, p2

    .line 95
    mul-int/2addr v0, p6

    .line 96
    add-int/2addr v0, p2

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sub-int/2addr v0, p2

    .line 99
    mul-int/2addr v0, p4

    .line 100
    .line 101
    add-int/lit8 p0, v0, 0x1

    .line 102
    sub-int/2addr v1, p2

    .line 103
    mul-int/2addr v1, p6

    .line 104
    .line 105
    add-int/lit8 v0, v1, 0x1

    .line 106
    move v1, p0

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 110
    move-result-object p0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 114
    move-result p0

    .line 115
    .line 116
    if-ne p0, v1, :cond_1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 120
    move-result-object p0

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 124
    move-result p0

    .line 125
    .line 126
    if-ne p0, v0, :cond_1

    .line 127
    return-void

    .line 128
    .line 129
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 130
    .line 131
    const-string p1, "Incorrect vector dimensions for GEMV"

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0

    .line 136
    .line 137
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 138
    .line 139
    const-string p1, "Vector increments must be greater than 0"

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p0

    .line 144
    .line 145
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 146
    .line 147
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p0

    .line 152
    .line 153
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 154
    .line 155
    const-string p1, "Called BLAS with wrong Element type"

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p0
.end method

.method static validateGER(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 50
    move-result p0

    .line 51
    const/4 v0, 0x1

    .line 52
    .line 53
    if-gt p0, v0, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 61
    move-result p0

    .line 62
    .line 63
    if-gt p0, v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 71
    move-result p0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 75
    move-result-object p5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p5}, Landroidx/renderscript/Type;->getX()I

    .line 79
    move-result p5

    .line 80
    .line 81
    if-lt p5, v0, :cond_3

    .line 82
    .line 83
    if-lt p0, v0, :cond_3

    .line 84
    .line 85
    if-lez p2, :cond_2

    .line 86
    .line 87
    if-lez p4, :cond_2

    .line 88
    sub-int/2addr p0, v0

    .line 89
    mul-int/2addr p0, p2

    .line 90
    add-int/2addr p0, v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 98
    move-result p1

    .line 99
    .line 100
    const-string p2, "Incorrect vector dimensions for GER"

    .line 101
    .line 102
    if-ne p1, p0, :cond_1

    .line 103
    sub-int/2addr p5, v0

    .line 104
    mul-int/2addr p5, p4

    .line 105
    add-int/2addr p5, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 113
    move-result p0

    .line 114
    .line 115
    if-ne p0, p5, :cond_0

    .line 116
    return-void

    .line 117
    .line 118
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p0

    .line 123
    .line 124
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p0

    .line 129
    .line 130
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 131
    .line 132
    const-string p1, "Vector increments must be greater than 0"

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p0

    .line 137
    .line 138
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 139
    .line 140
    const-string p1, "M and N must be 1 or greater for GER"

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 144
    throw p0

    .line 145
    .line 146
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 147
    .line 148
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p0

    .line 153
    .line 154
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 155
    .line 156
    const-string p1, "Called BLAS with wrong Element type"

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p0
.end method

.method static validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 50
    move-result p0

    .line 51
    const/4 v0, 0x1

    .line 52
    .line 53
    if-gt p0, v0, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 61
    move-result p0

    .line 62
    .line 63
    if-gt p0, v0, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 71
    move-result p0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 75
    move-result-object p5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p5}, Landroidx/renderscript/Type;->getX()I

    .line 79
    move-result p5

    .line 80
    .line 81
    if-lez p2, :cond_2

    .line 82
    .line 83
    if-lez p4, :cond_2

    .line 84
    sub-int/2addr p0, v0

    .line 85
    mul-int/2addr p0, p2

    .line 86
    add-int/2addr p0, v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 94
    move-result p1

    .line 95
    .line 96
    const-string p2, "Incorrect vector dimensions for GERU"

    .line 97
    .line 98
    if-ne p1, p0, :cond_1

    .line 99
    sub-int/2addr p5, v0

    .line 100
    mul-int/2addr p5, p4

    .line 101
    add-int/2addr p5, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 105
    move-result-object p0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 109
    move-result p0

    .line 110
    .line 111
    if-ne p0, p5, :cond_0

    .line 112
    return-void

    .line 113
    .line 114
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p0

    .line 119
    .line 120
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0

    .line 125
    .line 126
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 127
    .line 128
    const-string p1, "Vector increments must be greater than 0"

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p0

    .line 133
    .line 134
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 135
    .line 136
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p0

    .line 141
    .line 142
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 143
    .line 144
    const-string p1, "Called BLAS with wrong Element type"

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p0
.end method

.method static validateHEMM(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 43
    move-result p0

    .line 44
    .line 45
    if-eqz p0, :cond_5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 53
    move-result p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    .line 61
    move-result p2

    .line 62
    .line 63
    if-ne p0, p2, :cond_4

    .line 64
    .line 65
    const/16 p2, 0x8d

    .line 66
    .line 67
    if-ne p1, p2, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    .line 75
    move-result p2

    .line 76
    .line 77
    if-ne p0, p2, :cond_1

    .line 78
    .line 79
    :cond_0
    const/16 p2, 0x8e

    .line 80
    .line 81
    if-ne p1, p2, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 89
    move-result p1

    .line 90
    .line 91
    if-ne p0, p1, :cond_1

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 95
    .line 96
    const-string p1, "Called HEMM with invalid B"

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 108
    move-result p0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 116
    move-result p1

    .line 117
    .line 118
    if-ne p0, p1, :cond_3

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 122
    move-result-object p0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 126
    move-result p0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 134
    move-result p1

    .line 135
    .line 136
    if-ne p0, p1, :cond_3

    .line 137
    return-void

    .line 138
    .line 139
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 140
    .line 141
    const-string p1, "Called HEMM with mismatched B and C"

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 146
    .line 147
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 148
    .line 149
    const-string p1, "Called HEMM with non-square A"

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0

    .line 154
    .line 155
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 156
    .line 157
    const-string p1, "Called BLAS with wrong Element type"

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p0
.end method

.method static validateHER2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 53
    move-result p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 57
    move-result-object p4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4}, Landroidx/renderscript/Type;->getY()I

    .line 61
    move-result p4

    .line 62
    .line 63
    if-ne p0, p4, :cond_4

    .line 64
    .line 65
    const/16 p4, 0x6f

    .line 66
    .line 67
    const-string v0, "Called HER2K with invalid matrices"

    .line 68
    .line 69
    if-ne p1, p4, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 77
    move-result p1

    .line 78
    .line 79
    if-ne p1, p0, :cond_0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 94
    move-result p1

    .line 95
    .line 96
    if-ne p1, p0, :cond_3

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 104
    move-result p0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 112
    move-result p1

    .line 113
    .line 114
    if-ne p0, p1, :cond_2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 118
    move-result-object p0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 122
    move-result p0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 130
    move-result p1

    .line 131
    .line 132
    if-ne p0, p1, :cond_2

    .line 133
    return-void

    .line 134
    .line 135
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 136
    .line 137
    const-string p1, "Called HER2K with invalid A and B matrices"

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p0

    .line 142
    .line 143
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p0

    .line 148
    .line 149
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 150
    .line 151
    const-string p1, "Called HER2K with non-square C"

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p0

    .line 156
    .line 157
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 158
    .line 159
    const-string p1, "Called BLAS with wrong Element type"

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p0
.end method

.method static validateHERK(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 26
    move-result p0

    .line 27
    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 39
    move-result p0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getY()I

    .line 47
    move-result p3

    .line 48
    .line 49
    if-ne p0, p3, :cond_3

    .line 50
    .line 51
    const/16 p3, 0x6f

    .line 52
    .line 53
    const-string v0, "Called HERK with invalid A"

    .line 54
    .line 55
    if-ne p1, p3, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 63
    move-result p1

    .line 64
    .line 65
    if-ne p0, p1, :cond_0

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 80
    move-result p1

    .line 81
    .line 82
    if-ne p0, p1, :cond_2

    .line 83
    :goto_0
    return-void

    .line 84
    .line 85
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0

    .line 90
    .line 91
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 92
    .line 93
    const-string p1, "Called HERK with non-square C"

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0

    .line 98
    .line 99
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 100
    .line 101
    const-string p1, "Called BLAS with wrong Element type"

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0
.end method

.method static validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :cond_0
    if-eqz p5, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :cond_1
    if-eqz p6, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 46
    move-result p0

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 52
    .line 53
    const-string p1, "Called BLAS with wrong Element type"

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 58
    .line 59
    :cond_3
    :goto_0
    if-eqz p6, :cond_17

    .line 60
    .line 61
    .line 62
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 67
    move-result p0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 71
    move-result-object p6

    .line 72
    .line 73
    .line 74
    invoke-virtual {p6}, Landroidx/renderscript/Type;->getX()I

    .line 75
    move-result p6

    .line 76
    .line 77
    const/16 v0, 0x8e

    .line 78
    const/4 v1, -0x1

    .line 79
    .line 80
    if-ne p3, v0, :cond_9

    .line 81
    .line 82
    if-nez p4, :cond_4

    .line 83
    .line 84
    if-nez p5, :cond_5

    .line 85
    .line 86
    :cond_4
    if-eqz p4, :cond_6

    .line 87
    .line 88
    if-eqz p5, :cond_5

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 92
    .line 93
    const-string p1, "Provided Matrix A without Matrix B, or vice versa"

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0

    .line 98
    .line 99
    :cond_6
    :goto_1
    if-eqz p5, :cond_7

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 107
    move-result p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 115
    move-result p2

    .line 116
    goto :goto_2

    .line 117
    :cond_7
    move p1, v1

    .line 118
    move p2, p1

    .line 119
    .line 120
    :goto_2
    if-eqz p4, :cond_8

    .line 121
    .line 122
    .line 123
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 124
    move-result-object p3

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getY()I

    .line 128
    move-result v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 132
    move-result-object p3

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    .line 136
    move-result p3

    .line 137
    move v3, p3

    .line 138
    move p3, p2

    .line 139
    move p2, v1

    .line 140
    move v1, v3

    .line 141
    .line 142
    goto/16 :goto_7

    .line 143
    :cond_8
    move p3, p2

    .line 144
    move p2, v1

    .line 145
    .line 146
    goto/16 :goto_7

    .line 147
    .line 148
    :cond_9
    const/16 p3, 0x71

    .line 149
    .line 150
    const/16 v0, 0x70

    .line 151
    .line 152
    if-eqz p4, :cond_c

    .line 153
    .line 154
    if-eq p1, v0, :cond_b

    .line 155
    .line 156
    if-ne p1, p3, :cond_a

    .line 157
    goto :goto_3

    .line 158
    .line 159
    .line 160
    :cond_a
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 165
    move-result p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 173
    move-result v2

    .line 174
    goto :goto_4

    .line 175
    .line 176
    .line 177
    :cond_b
    :goto_3
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 182
    move-result v2

    .line 183
    .line 184
    .line 185
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 190
    move-result p1

    .line 191
    goto :goto_4

    .line 192
    :cond_c
    move p1, v1

    .line 193
    move v2, p1

    .line 194
    .line 195
    :goto_4
    if-eqz p5, :cond_f

    .line 196
    .line 197
    if-eq p2, v0, :cond_e

    .line 198
    .line 199
    if-ne p2, p3, :cond_d

    .line 200
    goto :goto_6

    .line 201
    .line 202
    .line 203
    :cond_d
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 204
    move-result-object p2

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    .line 208
    move-result v1

    .line 209
    .line 210
    .line 211
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 212
    move-result-object p2

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 216
    move-result p2

    .line 217
    move p3, p2

    .line 218
    move p2, p1

    .line 219
    move p1, v1

    .line 220
    :goto_5
    move v1, v2

    .line 221
    goto :goto_7

    .line 222
    .line 223
    .line 224
    :cond_e
    :goto_6
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 225
    move-result-object p2

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    .line 229
    move-result v1

    .line 230
    .line 231
    .line 232
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 233
    move-result-object p2

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 237
    move-result p2

    .line 238
    move p3, v1

    .line 239
    move v1, v2

    .line 240
    move v3, p2

    .line 241
    move p2, p1

    .line 242
    move p1, v3

    .line 243
    goto :goto_7

    .line 244
    :cond_f
    move p2, p1

    .line 245
    move p1, v1

    .line 246
    move p3, p1

    .line 247
    goto :goto_5

    .line 248
    .line 249
    :goto_7
    const-string v0, "Called BLAS with invalid dimensions"

    .line 250
    .line 251
    if-eqz p4, :cond_11

    .line 252
    .line 253
    if-eqz p5, :cond_11

    .line 254
    .line 255
    if-ne v1, p1, :cond_10

    .line 256
    .line 257
    if-ne p2, p0, :cond_10

    .line 258
    .line 259
    if-ne p3, p6, :cond_10

    .line 260
    goto :goto_8

    .line 261
    .line 262
    :cond_10
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 263
    .line 264
    .line 265
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 266
    throw p0

    .line 267
    .line 268
    :cond_11
    if-eqz p4, :cond_14

    .line 269
    .line 270
    if-ne p0, p6, :cond_13

    .line 271
    .line 272
    if-ne p2, p0, :cond_12

    .line 273
    goto :goto_8

    .line 274
    .line 275
    :cond_12
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 276
    .line 277
    .line 278
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 279
    throw p0

    .line 280
    .line 281
    :cond_13
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 282
    .line 283
    const-string p1, "Matrix C is not symmetric"

    .line 284
    .line 285
    .line 286
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 287
    throw p0

    .line 288
    .line 289
    :cond_14
    if-eqz p4, :cond_16

    .line 290
    .line 291
    if-eqz p5, :cond_16

    .line 292
    .line 293
    if-ne v1, p1, :cond_15

    .line 294
    goto :goto_8

    .line 295
    .line 296
    :cond_15
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 297
    .line 298
    .line 299
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 300
    throw p0

    .line 301
    :cond_16
    :goto_8
    return-void

    .line 302
    .line 303
    :cond_17
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 304
    .line 305
    const-string p1, "Allocation C cannot be null"

    .line 306
    .line 307
    .line 308
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 309
    throw p0
.end method

.method static validateSPMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_6

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_6

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 43
    move-result p0

    .line 44
    .line 45
    if-eqz p0, :cond_6

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 53
    move-result p0

    .line 54
    const/4 p1, 0x1

    .line 55
    .line 56
    if-gt p0, p1, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 64
    move-result p0

    .line 65
    .line 66
    if-gt p0, p1, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 74
    move-result p0

    .line 75
    .line 76
    if-gt p0, p1, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 84
    move-result p0

    .line 85
    int-to-double v0, p0

    .line 86
    .line 87
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 88
    mul-double/2addr v0, v2

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 92
    move-result-wide v0

    .line 93
    double-to-int p0, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 101
    move-result p2

    .line 102
    .line 103
    add-int/lit8 v0, p0, 0x1

    .line 104
    mul-int/2addr v0, p0

    .line 105
    .line 106
    div-int/lit8 v0, v0, 0x2

    .line 107
    .line 108
    if-ne p2, v0, :cond_3

    .line 109
    .line 110
    if-lez p4, :cond_2

    .line 111
    .line 112
    if-lez p6, :cond_2

    .line 113
    .line 114
    add-int/lit8 p2, p0, -0x1

    .line 115
    mul-int/2addr p4, p2

    .line 116
    add-int/2addr p4, p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 120
    move-result-object p3

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    .line 124
    move-result p3

    .line 125
    .line 126
    const-string v0, "Incorrect vector dimensions for SPMV"

    .line 127
    .line 128
    if-ne p3, p4, :cond_1

    .line 129
    mul-int/2addr p2, p6

    .line 130
    add-int/2addr p2, p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 138
    move-result p1

    .line 139
    .line 140
    if-ne p1, p2, :cond_0

    .line 141
    return p0

    .line 142
    .line 143
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p0

    .line 148
    .line 149
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0

    .line 154
    .line 155
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 156
    .line 157
    const-string p1, "Vector increments must be greater than 0"

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p0

    .line 162
    .line 163
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 164
    .line 165
    const-string p1, "Invalid dimension for Ap"

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0

    .line 170
    .line 171
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 172
    .line 173
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p0

    .line 178
    .line 179
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 180
    .line 181
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 185
    throw p0

    .line 186
    .line 187
    :cond_6
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 188
    .line 189
    const-string p1, "Called BLAS with wrong Element type"

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 193
    throw p0
.end method

.method static validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 29
    move-result p0

    .line 30
    .line 31
    if-eqz p0, :cond_5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 39
    move-result p0

    .line 40
    const/4 p1, 0x1

    .line 41
    .line 42
    if-gt p0, p1, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 50
    move-result p0

    .line 51
    .line 52
    if-gt p0, p1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 60
    move-result p0

    .line 61
    int-to-double v0, p0

    .line 62
    .line 63
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 64
    mul-double/2addr v0, v2

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 68
    move-result-wide v0

    .line 69
    double-to-int p0, v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 73
    move-result-object p4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4}, Landroidx/renderscript/Type;->getX()I

    .line 77
    move-result p4

    .line 78
    .line 79
    add-int/lit8 v0, p0, 0x1

    .line 80
    mul-int/2addr v0, p0

    .line 81
    .line 82
    div-int/lit8 v0, v0, 0x2

    .line 83
    .line 84
    if-ne p4, v0, :cond_2

    .line 85
    .line 86
    if-lez p3, :cond_1

    .line 87
    .line 88
    add-int/lit8 p4, p0, -0x1

    .line 89
    mul-int/2addr p4, p3

    .line 90
    add-int/2addr p4, p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 98
    move-result p1

    .line 99
    .line 100
    if-ne p1, p4, :cond_0

    .line 101
    return p0

    .line 102
    .line 103
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 104
    .line 105
    const-string p1, "Incorrect vector dimensions for SPR"

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0

    .line 110
    .line 111
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 112
    .line 113
    const-string p1, "Vector increments must be greater than 0"

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p0

    .line 118
    .line 119
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 120
    .line 121
    const-string p1, "Invalid dimension for Ap"

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p0

    .line 126
    .line 127
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 128
    .line 129
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    .line 135
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 136
    .line 137
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p0

    .line 142
    .line 143
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 144
    .line 145
    const-string p1, "Called BLAS with wrong Element type"

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0
.end method

.method static validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 43
    move-result p0

    .line 44
    .line 45
    if-eqz p0, :cond_5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 53
    move-result p0

    .line 54
    const/4 p1, 0x1

    .line 55
    .line 56
    if-gt p0, p1, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 64
    move-result p0

    .line 65
    .line 66
    if-gt p0, p1, :cond_4

    .line 67
    .line 68
    .line 69
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 74
    move-result p0

    .line 75
    .line 76
    if-gt p0, p1, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 84
    move-result p0

    .line 85
    int-to-double v0, p0

    .line 86
    .line 87
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 88
    mul-double/2addr v0, v2

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 92
    move-result-wide v0

    .line 93
    double-to-int p0, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 97
    move-result-object p6

    .line 98
    .line 99
    .line 100
    invoke-virtual {p6}, Landroidx/renderscript/Type;->getX()I

    .line 101
    move-result p6

    .line 102
    .line 103
    add-int/lit8 v0, p0, 0x1

    .line 104
    mul-int/2addr v0, p0

    .line 105
    .line 106
    div-int/lit8 v0, v0, 0x2

    .line 107
    .line 108
    if-ne p6, v0, :cond_2

    .line 109
    .line 110
    if-lez p3, :cond_1

    .line 111
    .line 112
    if-lez p5, :cond_1

    .line 113
    .line 114
    add-int/lit8 p6, p0, -0x1

    .line 115
    mul-int/2addr p3, p6

    .line 116
    add-int/2addr p3, p1

    .line 117
    mul-int/2addr p6, p5

    .line 118
    add-int/2addr p6, p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 126
    move-result p1

    .line 127
    .line 128
    if-ne p1, p3, :cond_0

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 136
    move-result p1

    .line 137
    .line 138
    if-ne p1, p6, :cond_0

    .line 139
    return p0

    .line 140
    .line 141
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 142
    .line 143
    const-string p1, "Incorrect vector dimensions for SPR2"

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p0

    .line 148
    .line 149
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 150
    .line 151
    const-string p1, "Vector increments must be greater than 0"

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p0

    .line 156
    .line 157
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 158
    .line 159
    const-string p1, "Invalid dimension for Ap"

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p0

    .line 164
    .line 165
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 166
    .line 167
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 168
    .line 169
    .line 170
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    throw p0

    .line 172
    .line 173
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 174
    .line 175
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 176
    .line 177
    .line 178
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p0

    .line 180
    .line 181
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 182
    .line 183
    const-string p1, "Called BLAS with wrong Element type"

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p0
.end method

.method static validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-ne v0, p1, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 33
    move-result p2

    .line 34
    .line 35
    if-eqz p2, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 47
    move-result p2

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 71
    move-result p0

    .line 72
    const/4 p2, 0x1

    .line 73
    .line 74
    if-gt p0, p2, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 82
    move-result p0

    .line 83
    .line 84
    if-gt p0, p2, :cond_3

    .line 85
    .line 86
    if-lez p5, :cond_2

    .line 87
    .line 88
    if-lez p6, :cond_2

    .line 89
    .line 90
    add-int/lit8 p0, p1, -0x1

    .line 91
    mul-int/2addr p5, p0

    .line 92
    add-int/2addr p5, p2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    .line 100
    move-result p3

    .line 101
    .line 102
    const-string v0, "Incorrect vector dimensions for SYMV"

    .line 103
    .line 104
    if-ne p3, p5, :cond_1

    .line 105
    mul-int/2addr p0, p6

    .line 106
    add-int/2addr p0, p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 114
    move-result p2

    .line 115
    .line 116
    if-ne p2, p0, :cond_0

    .line 117
    return p1

    .line 118
    .line 119
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0

    .line 124
    .line 125
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 130
    .line 131
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 132
    .line 133
    const-string p1, "Vector increments must be greater than 0"

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p0

    .line 138
    .line 139
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 140
    .line 141
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 146
    .line 147
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 148
    .line 149
    const-string p1, "Called BLAS with wrong Element type"

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p0

    .line 154
    .line 155
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 156
    .line 157
    const-string p1, "A must be a square matrix for SYMV"

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p0
.end method

.method static validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 29
    move-result p0

    .line 30
    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 39
    move-result p0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 47
    move-result p1

    .line 48
    const/4 v0, 0x1

    .line 49
    .line 50
    if-gt p1, v0, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 58
    move-result p1

    .line 59
    .line 60
    if-ne p0, p1, :cond_2

    .line 61
    .line 62
    if-lez p3, :cond_1

    .line 63
    .line 64
    add-int/lit8 p1, p0, -0x1

    .line 65
    mul-int/2addr p1, p3

    .line 66
    add-int/2addr p1, v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 74
    move-result p2

    .line 75
    .line 76
    if-ne p2, p1, :cond_0

    .line 77
    return p0

    .line 78
    .line 79
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 80
    .line 81
    const-string p1, "Incorrect vector dimensions for SYR"

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0

    .line 86
    .line 87
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 88
    .line 89
    const-string p1, "Vector increments must be greater than 0"

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0

    .line 94
    .line 95
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 96
    .line 97
    const-string p1, "A must be a symmetric matrix"

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0

    .line 102
    .line 103
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 104
    .line 105
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0

    .line 110
    .line 111
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 112
    .line 113
    const-string p1, "Called BLAS with wrong Element type"

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p0
.end method

.method static validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 43
    move-result p0

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 53
    move-result p0

    .line 54
    const/4 p1, 0x1

    .line 55
    .line 56
    if-gt p0, p1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 64
    move-result p0

    .line 65
    .line 66
    if-gt p0, p1, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 74
    move-result p0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 78
    move-result-object p6

    .line 79
    .line 80
    .line 81
    invoke-virtual {p6}, Landroidx/renderscript/Type;->getY()I

    .line 82
    move-result p6

    .line 83
    .line 84
    if-ne p0, p6, :cond_2

    .line 85
    .line 86
    if-lez p3, :cond_1

    .line 87
    .line 88
    if-lez p5, :cond_1

    .line 89
    .line 90
    add-int/lit8 p6, p0, -0x1

    .line 91
    mul-int/2addr p3, p6

    .line 92
    add-int/2addr p3, p1

    .line 93
    mul-int/2addr p6, p5

    .line 94
    add-int/2addr p6, p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 102
    move-result p1

    .line 103
    .line 104
    if-ne p1, p3, :cond_0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 112
    move-result p1

    .line 113
    .line 114
    if-ne p1, p6, :cond_0

    .line 115
    return p0

    .line 116
    .line 117
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 118
    .line 119
    const-string p1, "Incorrect vector dimensions for SYR"

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0

    .line 124
    .line 125
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 126
    .line 127
    const-string p1, "Vector increments must be greater than 0"

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 132
    .line 133
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 134
    .line 135
    const-string p1, "A must be a symmetric matrix"

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p0

    .line 140
    .line 141
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 142
    .line 143
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p0

    .line 148
    .line 149
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 150
    .line 151
    const-string p1, "Called BLAS with wrong Element type"

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p0
.end method

.method static validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 43
    move-result p0

    .line 44
    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    const/16 p0, 0x70

    .line 48
    .line 49
    if-ne p1, p0, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 57
    move-result p0

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 66
    move-result p0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 74
    move-result p1

    .line 75
    .line 76
    if-ne p1, p0, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 84
    move-result p1

    .line 85
    .line 86
    if-ne p1, p0, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 94
    move-result p0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 102
    move-result p1

    .line 103
    .line 104
    if-ne p0, p1, :cond_1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 112
    move-result p0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 120
    move-result p1

    .line 121
    .line 122
    if-ne p0, p1, :cond_1

    .line 123
    return-void

    .line 124
    .line 125
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 126
    .line 127
    const-string p1, "Invalid A and B in SYR2K"

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 132
    .line 133
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 134
    .line 135
    const-string p1, "Invalid symmetric matrix in SYR2K"

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p0

    .line 140
    .line 141
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 142
    .line 143
    const-string p1, "Called BLAS with wrong Element type"

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p0
.end method

.method static validateSide(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x8d

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x8e

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 12
    .line 13
    const-string v0, "Invalid side passed to BLAS"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method static validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 35
    move-result p0

    .line 36
    .line 37
    if-eqz p0, :cond_5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 45
    move-result p0

    .line 46
    const/4 p1, 0x1

    .line 47
    .line 48
    if-gt p0, p1, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 56
    move-result p0

    .line 57
    .line 58
    if-gt p0, p1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 66
    move-result p0

    .line 67
    int-to-double p2, p0

    .line 68
    .line 69
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 70
    mul-double/2addr p2, v0

    .line 71
    .line 72
    .line 73
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 74
    move-result-wide p2

    .line 75
    double-to-int p0, p2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 83
    move-result p2

    .line 84
    .line 85
    add-int/lit8 p3, p0, 0x1

    .line 86
    mul-int/2addr p3, p0

    .line 87
    .line 88
    div-int/lit8 p3, p3, 0x2

    .line 89
    .line 90
    if-ne p2, p3, :cond_2

    .line 91
    .line 92
    if-lez p6, :cond_1

    .line 93
    .line 94
    add-int/lit8 p2, p0, -0x1

    .line 95
    mul-int/2addr p2, p6

    .line 96
    add-int/2addr p2, p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 104
    move-result p1

    .line 105
    .line 106
    if-ne p1, p2, :cond_0

    .line 107
    return p0

    .line 108
    .line 109
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 110
    .line 111
    const-string p1, "Incorrect vector dimensions for TPMV"

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p0

    .line 116
    .line 117
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 118
    .line 119
    const-string p1, "Vector increments must be greater than 0"

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0

    .line 124
    .line 125
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 126
    .line 127
    const-string p1, "Invalid dimension for Ap"

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 132
    .line 133
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 134
    .line 135
    const-string p1, "Ap must have a Y dimension of 0 or 1"

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p0

    .line 140
    .line 141
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 142
    .line 143
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p0

    .line 148
    .line 149
    :cond_5
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 150
    .line 151
    const-string p1, "Called BLAS with wrong Element type"

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p0
.end method

.method static validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 32
    move-result p0

    .line 33
    .line 34
    if-eqz p0, :cond_4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 42
    move-result p0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 50
    move-result p2

    .line 51
    .line 52
    if-ne p0, p2, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getY()I

    .line 60
    move-result p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 64
    move-result-object p4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4}, Landroidx/renderscript/Type;->getX()I

    .line 68
    move-result p4

    .line 69
    .line 70
    const/16 v0, 0x8d

    .line 71
    .line 72
    const-string v1, "Called TRMM with invalid matrices"

    .line 73
    .line 74
    if-ne p1, v0, :cond_1

    .line 75
    .line 76
    if-ne p2, p3, :cond_0

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    .line 85
    :cond_1
    if-ne p4, p0, :cond_2

    .line 86
    :goto_0
    return-void

    .line 87
    .line 88
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0

    .line 93
    .line 94
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 95
    .line 96
    const-string p1, "Called TRMM with a non-symmetric matrix A"

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 101
    .line 102
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 103
    .line 104
    const-string p1, "Called BLAS with wrong Element type"

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0
.end method

.method static validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getX()I

    .line 25
    move-result p2

    .line 26
    .line 27
    if-ne p2, p1, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 39
    move-result p2

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 53
    move-result p0

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 63
    move-result p0

    .line 64
    const/4 p2, 0x1

    .line 65
    .line 66
    if-gt p0, p2, :cond_2

    .line 67
    .line 68
    if-lez p6, :cond_1

    .line 69
    sub-int/2addr p1, p2

    .line 70
    mul-int/2addr p1, p6

    .line 71
    add-int/2addr p1, p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 79
    move-result p0

    .line 80
    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    return-void

    .line 83
    .line 84
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 85
    .line 86
    const-string p1, "Incorrect vector dimensions for TRMV"

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0

    .line 91
    .line 92
    :cond_1
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 93
    .line 94
    const-string p1, "Vector increments must be greater than 0"

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0

    .line 99
    .line 100
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 101
    .line 102
    const-string p1, "BLAS vectors must have Y dimension of 0 or 1"

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0

    .line 107
    .line 108
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 109
    .line 110
    const-string p1, "Called BLAS with wrong Element type"

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p0

    .line 115
    .line 116
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 117
    .line 118
    const-string p1, "A must be a square matrix for TRMV"

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p0
.end method

.method static validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 32
    move-result p0

    .line 33
    .line 34
    if-eqz p0, :cond_4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 42
    move-result p0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    .line 50
    move-result p2

    .line 51
    .line 52
    if-ne p0, p2, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getY()I

    .line 60
    move-result p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Landroidx/renderscript/Type;->getX()I

    .line 68
    move-result p3

    .line 69
    .line 70
    const/16 p4, 0x8d

    .line 71
    .line 72
    const-string v0, "Called TRSM with invalid matrix dimensions"

    .line 73
    .line 74
    if-ne p1, p4, :cond_1

    .line 75
    .line 76
    if-ne p0, p2, :cond_0

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    .line 85
    :cond_1
    if-ne p0, p3, :cond_2

    .line 86
    :goto_0
    return-void

    .line 87
    .line 88
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0

    .line 93
    .line 94
    :cond_3
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 95
    .line 96
    const-string p1, "Called TRSM with a non-symmetric matrix A"

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p0

    .line 101
    .line 102
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 103
    .line 104
    const-string p1, "Called BLAS with wrong Element type"

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0
.end method

.method static validateTranspose(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x6f

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x70

    .line 7
    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x71

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 16
    .line 17
    const-string v0, "Invalid transpose passed to BLAS"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method static validateUplo(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x79

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x7a

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 12
    .line 13
    const-string v0, "Invalid uplo passed to BLAS"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public BNNM(Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;II)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v9, p2

    .line 5
    .line 6
    move-object/from16 v8, p3

    .line 7
    .line 8
    move/from16 v12, p4

    .line 9
    .line 10
    move-object/from16 v10, p5

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const/16 v2, 0x6f

    .line 19
    .line 20
    const/16 v3, 0x70

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    move-object/from16 v5, p1

    .line 24
    .line 25
    move-object/from16 v6, p3

    .line 26
    .line 27
    move-object/from16 v7, p5

    .line 28
    .line 29
    .line 30
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 31
    .line 32
    if-ltz v9, :cond_2

    .line 33
    .line 34
    const/16 v1, 0xff

    .line 35
    .line 36
    if-gt v9, v1, :cond_2

    .line 37
    .line 38
    if-ltz v12, :cond_1

    .line 39
    .line 40
    if-gt v12, v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 48
    move-result v4

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 56
    move-result v5

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 64
    move-result v6

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 68
    move-result v17

    .line 69
    .line 70
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 71
    .line 72
    move-object/from16 v2, p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 76
    move-result-wide v13

    .line 77
    .line 78
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 82
    move-result-wide v15

    .line 83
    .line 84
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 88
    move-result-wide v18

    .line 89
    .line 90
    if-eqz v17, :cond_0

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p0 .. p1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 94
    move-result-wide v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 98
    move-result-wide v7

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 102
    move-result-wide v10

    .line 103
    move-wide v13, v10

    .line 104
    move-wide v10, v7

    .line 105
    move-wide v7, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    move-wide v7, v13

    .line 108
    move-wide v10, v15

    .line 109
    .line 110
    move-wide/from16 v13, v18

    .line 111
    .line 112
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 113
    move-object v1, v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 117
    move-result-wide v2

    .line 118
    .line 119
    move/from16 v9, p2

    .line 120
    .line 121
    move/from16 v12, p4

    .line 122
    .line 123
    move/from16 v15, p6

    .line 124
    .line 125
    move/from16 v16, p7

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v1 .. v17}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJIIZ)V

    .line 129
    return-void

    .line 130
    .line 131
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 132
    .line 133
    const-string v2, "Invalid b_offset passed to BNNM"

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    throw v1

    .line 138
    .line 139
    :cond_2
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 140
    .line 141
    const-string v2, "Invalid a_offset passed to BNNM"

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    throw v1
.end method

.method public CGBMV(IIILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p6

    .line 9
    .line 10
    move-object/from16 v11, p8

    .line 11
    .line 12
    move-object/from16 v12, p9

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p5

    .line 23
    .line 24
    move-object/from16 v5, p6

    .line 25
    .line 26
    move/from16 v6, p7

    .line 27
    .line 28
    move-object/from16 v7, p9

    .line 29
    .line 30
    move/from16 v8, p10

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 34
    .line 35
    if-ltz p2, :cond_1

    .line 36
    .line 37
    if-ltz p3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 45
    move-result v21

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 53
    move-result v22

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 57
    move-result v38

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 63
    move-result-wide v2

    .line 64
    .line 65
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 69
    move-result-wide v4

    .line 70
    .line 71
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 75
    move-result-wide v6

    .line 76
    .line 77
    if-eqz v38, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 85
    move-result-wide v4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 89
    move-result-wide v6

    .line 90
    .line 91
    :cond_0
    move-wide/from16 v26, v2

    .line 92
    .line 93
    move-wide/from16 v28, v4

    .line 94
    .line 95
    move-wide/from16 v32, v6

    .line 96
    .line 97
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 98
    move-object v12, v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 102
    move-result-wide v13

    .line 103
    .line 104
    const/16 v15, 0x40

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    const/16 v18, 0x0

    .line 109
    .line 110
    const/16 v19, 0x0

    .line 111
    .line 112
    const/16 v20, 0x0

    .line 113
    .line 114
    const/16 v23, 0x0

    .line 115
    .line 116
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 117
    .line 118
    move/from16 v24, v2

    .line 119
    .line 120
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 121
    .line 122
    move/from16 v25, v1

    .line 123
    .line 124
    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    .line 125
    .line 126
    move/from16 v30, v1

    .line 127
    .line 128
    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    .line 129
    .line 130
    move/from16 v31, v1

    .line 131
    .line 132
    move/from16 v16, p1

    .line 133
    .line 134
    move/from16 v34, p7

    .line 135
    .line 136
    move/from16 v35, p10

    .line 137
    .line 138
    move/from16 v36, p2

    .line 139
    .line 140
    move/from16 v37, p3

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 144
    return-void

    .line 145
    .line 146
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 147
    .line 148
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    throw v1
.end method

.method public CGEMM(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 39

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 16
    .line 17
    .line 18
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 24
    move-result-object v2

    .line 25
    const/4 v5, 0x0

    .line 26
    .line 27
    move/from16 v3, p1

    .line 28
    .line 29
    move/from16 v4, p2

    .line 30
    .line 31
    move-object/from16 v6, p4

    .line 32
    .line 33
    move-object/from16 v7, p5

    .line 34
    .line 35
    move-object/from16 v8, p7

    .line 36
    .line 37
    .line 38
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 39
    .line 40
    const/16 v2, 0x6f

    .line 41
    .line 42
    if-eq v3, v2, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getX()I

    .line 50
    move-result v4

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getY()I

    .line 58
    move-result v5

    .line 59
    .line 60
    :goto_0
    move/from16 v21, v4

    .line 61
    .line 62
    move/from16 v23, v5

    .line 63
    .line 64
    move/from16 v4, p2

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getY()I

    .line 73
    move-result v4

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getX()I

    .line 81
    move-result v5

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :goto_1
    if-eq v4, v2, :cond_1

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 92
    move-result v2

    .line 93
    .line 94
    :goto_2
    move/from16 v22, v2

    .line 95
    goto :goto_3

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 103
    move-result v2

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 108
    move-result v38

    .line 109
    .line 110
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 114
    move-result-wide v5

    .line 115
    .line 116
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 120
    move-result-wide v7

    .line 121
    .line 122
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 126
    move-result-wide v13

    .line 127
    .line 128
    if-eqz v38, :cond_2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 132
    move-result-wide v5

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 136
    move-result-wide v7

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 140
    move-result-wide v9

    .line 141
    .line 142
    move-wide/from16 v26, v5

    .line 143
    .line 144
    move-wide/from16 v28, v7

    .line 145
    .line 146
    move-wide/from16 v32, v9

    .line 147
    goto :goto_4

    .line 148
    .line 149
    :cond_2
    move-wide/from16 v26, v5

    .line 150
    .line 151
    move-wide/from16 v28, v7

    .line 152
    .line 153
    move-wide/from16 v32, v13

    .line 154
    .line 155
    :goto_4
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 156
    move-object v12, v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 160
    move-result-wide v13

    .line 161
    .line 162
    const/16 v15, 0x7d

    .line 163
    .line 164
    const/16 v18, 0x0

    .line 165
    .line 166
    const/16 v19, 0x0

    .line 167
    .line 168
    const/16 v20, 0x0

    .line 169
    .line 170
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 171
    .line 172
    move/from16 v24, v2

    .line 173
    .line 174
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 175
    .line 176
    move/from16 v25, v1

    .line 177
    .line 178
    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    .line 179
    .line 180
    move/from16 v30, v1

    .line 181
    .line 182
    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    .line 183
    .line 184
    move/from16 v31, v1

    .line 185
    .line 186
    const/16 v34, 0x0

    .line 187
    .line 188
    const/16 v35, 0x0

    .line 189
    .line 190
    const/16 v36, 0x0

    .line 191
    .line 192
    const/16 v37, 0x0

    .line 193
    .line 194
    move/from16 v16, p1

    .line 195
    .line 196
    move/from16 v17, p2

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 200
    return-void
.end method

.method public CGEMV(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p3

    .line 23
    .line 24
    move-object/from16 v5, p4

    .line 25
    .line 26
    move/from16 v6, p5

    .line 27
    .line 28
    move-object/from16 v7, p7

    .line 29
    .line 30
    move/from16 v8, p8

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 41
    move-result v21

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 49
    move-result v22

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 53
    move-result v38

    .line 54
    .line 55
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v2

    .line 60
    .line 61
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v4

    .line 66
    .line 67
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v6

    .line 72
    .line 73
    if-eqz v38, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 85
    move-result-wide v6

    .line 86
    .line 87
    :cond_0
    move-wide/from16 v26, v2

    .line 88
    .line 89
    move-wide/from16 v28, v4

    .line 90
    .line 91
    move-wide/from16 v32, v6

    .line 92
    .line 93
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 94
    move-object v12, v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 98
    move-result-wide v13

    .line 99
    .line 100
    const/16 v15, 0x3f

    .line 101
    .line 102
    const/16 v17, 0x0

    .line 103
    .line 104
    const/16 v18, 0x0

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    const/16 v20, 0x0

    .line 109
    .line 110
    const/16 v23, 0x0

    .line 111
    .line 112
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 113
    .line 114
    move/from16 v24, v2

    .line 115
    .line 116
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 117
    .line 118
    move/from16 v25, v1

    .line 119
    .line 120
    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    .line 121
    .line 122
    move/from16 v30, v1

    .line 123
    .line 124
    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    .line 125
    .line 126
    move/from16 v31, v1

    .line 127
    .line 128
    const/16 v36, 0x0

    .line 129
    .line 130
    const/16 v37, 0x0

    .line 131
    .line 132
    move/from16 v16, p1

    .line 133
    .line 134
    move/from16 v34, p5

    .line 135
    .line 136
    move/from16 v35, p8

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 140
    return-void
.end method

.method public CGERC(Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v9, p4

    .line 9
    .line 10
    move-object/from16 v10, p6

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move-object/from16 v7, p6

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v12

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 45
    move-result v13

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v29

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v2

    .line 56
    .line 57
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v6

    .line 68
    .line 69
    if-eqz v29, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v6

    .line 82
    .line 83
    :cond_0
    move-wide/from16 v23, v2

    .line 84
    .line 85
    move-wide/from16 v17, v4

    .line 86
    .line 87
    move-wide/from16 v19, v6

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 90
    move-object v3, v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 94
    move-result-wide v4

    .line 95
    .line 96
    const/16 v6, 0x63

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v14, 0x0

    .line 103
    .line 104
    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    .line 105
    .line 106
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 107
    .line 108
    move/from16 v16, v1

    .line 109
    .line 110
    const/16 v21, 0x0

    .line 111
    .line 112
    const/16 v22, 0x0

    .line 113
    .line 114
    const/16 v27, 0x0

    .line 115
    .line 116
    const/16 v28, 0x0

    .line 117
    .line 118
    move/from16 v25, p3

    .line 119
    .line 120
    move/from16 v26, p5

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 124
    return-void
.end method

.method public CGERU(Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v9, p4

    .line 9
    .line 10
    move-object/from16 v10, p6

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move-object/from16 v7, p6

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v12

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 45
    move-result v13

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v29

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v2

    .line 56
    .line 57
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v6

    .line 68
    .line 69
    if-eqz v29, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v6

    .line 82
    .line 83
    :cond_0
    move-wide/from16 v23, v2

    .line 84
    .line 85
    move-wide/from16 v17, v4

    .line 86
    .line 87
    move-wide/from16 v19, v6

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 90
    move-object v3, v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 94
    move-result-wide v4

    .line 95
    .line 96
    const/16 v6, 0x62

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v14, 0x0

    .line 103
    .line 104
    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    .line 105
    .line 106
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 107
    .line 108
    move/from16 v16, v1

    .line 109
    .line 110
    const/16 v21, 0x0

    .line 111
    .line 112
    const/16 v22, 0x0

    .line 113
    .line 114
    const/16 v27, 0x0

    .line 115
    .line 116
    const/16 v28, 0x0

    .line 117
    .line 118
    move/from16 v25, p3

    .line 119
    .line 120
    move/from16 v26, p5

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 124
    return-void
.end method

.method public CHBMV(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p7

    .line 11
    .line 12
    move-object/from16 v12, p8

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p5

    .line 23
    .line 24
    move/from16 v5, p6

    .line 25
    .line 26
    move-object/from16 v6, p8

    .line 27
    .line 28
    move/from16 v7, p9

    .line 29
    .line 30
    move-object/from16 v8, p4

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 34
    move-result v22

    .line 35
    .line 36
    if-ltz p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 40
    move-result v38

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v2

    .line 47
    .line 48
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v4

    .line 53
    .line 54
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 58
    move-result-wide v6

    .line 59
    .line 60
    if-eqz v38, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 72
    move-result-wide v6

    .line 73
    .line 74
    :cond_0
    move-wide/from16 v26, v2

    .line 75
    .line 76
    move-wide/from16 v28, v4

    .line 77
    .line 78
    move-wide/from16 v32, v6

    .line 79
    .line 80
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 81
    move-object v12, v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 85
    move-result-wide v13

    .line 86
    .line 87
    const/16 v15, 0x60

    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 100
    .line 101
    move/from16 v24, v2

    .line 102
    .line 103
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 104
    .line 105
    move/from16 v25, v1

    .line 106
    .line 107
    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    .line 108
    .line 109
    move/from16 v30, v1

    .line 110
    .line 111
    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    .line 112
    .line 113
    move/from16 v31, v1

    .line 114
    .line 115
    const/16 v36, 0x0

    .line 116
    .line 117
    const/16 v37, 0x0

    .line 118
    .line 119
    move/from16 v19, p1

    .line 120
    .line 121
    move/from16 v23, p2

    .line 122
    .line 123
    move/from16 v34, p6

    .line 124
    .line 125
    move/from16 v35, p9

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 129
    return-void

    .line 130
    .line 131
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 132
    .line 133
    const-string v2, "K must be 0 or greater for HBMV"

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    throw v1
.end method

.method public CHEMM(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 34

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    move-object/from16 v3, p5

    .line 9
    .line 10
    move-object/from16 v4, p6

    .line 11
    .line 12
    move-object/from16 v5, p7

    .line 13
    .line 14
    .line 15
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 16
    .line 17
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 18
    .line 19
    .line 20
    invoke-static {v6}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 21
    move-result-object v6

    .line 22
    .line 23
    move/from16 v13, p1

    .line 24
    .line 25
    .line 26
    invoke-static {v6, v13, v2, v3, v5}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 30
    move-result v33

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v8

    .line 43
    .line 44
    iget-object v10, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v10

    .line 49
    .line 50
    if-eqz v33, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v8

    .line 63
    .line 64
    move-wide/from16 v23, v2

    .line 65
    .line 66
    move-wide/from16 v21, v6

    .line 67
    .line 68
    move-wide/from16 v27, v8

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_0
    move-wide/from16 v21, v6

    .line 72
    .line 73
    move-wide/from16 v23, v8

    .line 74
    .line 75
    move-wide/from16 v27, v10

    .line 76
    .line 77
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 78
    move-object v7, v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 82
    move-result-wide v8

    .line 83
    .line 84
    const/16 v10, 0x89

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 95
    move-result v16

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 103
    move-result v17

    .line 104
    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 108
    .line 109
    move/from16 v19, v2

    .line 110
    .line 111
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 112
    .line 113
    move/from16 v20, v1

    .line 114
    .line 115
    iget v1, v4, Landroidx/renderscript/Float2;->x:F

    .line 116
    .line 117
    move/from16 v25, v1

    .line 118
    .line 119
    iget v1, v4, Landroidx/renderscript/Float2;->y:F

    .line 120
    .line 121
    move/from16 v26, v1

    .line 122
    .line 123
    const/16 v29, 0x0

    .line 124
    .line 125
    const/16 v30, 0x0

    .line 126
    .line 127
    const/16 v31, 0x0

    .line 128
    .line 129
    const/16 v32, 0x0

    .line 130
    .line 131
    move/from16 v13, p1

    .line 132
    .line 133
    move/from16 v14, p2

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {v7 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 137
    return-void
.end method

.method public CHEMV(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p4

    .line 23
    .line 24
    move/from16 v5, p5

    .line 25
    .line 26
    move-object/from16 v6, p7

    .line 27
    .line 28
    move/from16 v7, p8

    .line 29
    .line 30
    move-object/from16 v8, p3

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 34
    move-result v22

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 38
    move-result v38

    .line 39
    .line 40
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v2

    .line 45
    .line 46
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 50
    move-result-wide v4

    .line 51
    .line 52
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 56
    move-result-wide v6

    .line 57
    .line 58
    if-eqz v38, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 70
    move-result-wide v6

    .line 71
    .line 72
    :cond_0
    move-wide/from16 v26, v2

    .line 73
    .line 74
    move-wide/from16 v28, v4

    .line 75
    .line 76
    move-wide/from16 v32, v6

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 79
    move-object v12, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 83
    move-result-wide v13

    .line 84
    .line 85
    const/16 v15, 0x5f

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v20, 0x0

    .line 94
    .line 95
    const/16 v21, 0x0

    .line 96
    .line 97
    const/16 v23, 0x0

    .line 98
    .line 99
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 100
    .line 101
    move/from16 v24, v2

    .line 102
    .line 103
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 104
    .line 105
    move/from16 v25, v1

    .line 106
    .line 107
    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    .line 108
    .line 109
    move/from16 v30, v1

    .line 110
    .line 111
    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    .line 112
    .line 113
    move/from16 v31, v1

    .line 114
    .line 115
    const/16 v36, 0x0

    .line 116
    .line 117
    const/16 v37, 0x0

    .line 118
    .line 119
    move/from16 v19, p1

    .line 120
    .line 121
    move/from16 v34, p5

    .line 122
    .line 123
    move/from16 v35, p8

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 127
    return-void
.end method

.method public CHER(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p4

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v30

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v30, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v18, v1

    .line 49
    .line 50
    move-wide/from16 v24, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v24, v4

    .line 54
    .line 55
    move-wide/from16 v18, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x64

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    const-wide/16 v20, 0x0

    .line 75
    .line 76
    const/16 v22, 0x0

    .line 77
    .line 78
    const/16 v23, 0x0

    .line 79
    .line 80
    const/16 v27, 0x0

    .line 81
    .line 82
    const/16 v28, 0x0

    .line 83
    .line 84
    const/16 v29, 0x0

    .line 85
    .line 86
    move/from16 v11, p1

    .line 87
    move v14, v3

    .line 88
    .line 89
    move/from16 v16, p2

    .line 90
    .line 91
    move/from16 v26, p4

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 95
    return-void
.end method

.method public CHER2(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p7

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move/from16 v3, p1

    .line 19
    .line 20
    move-object/from16 v4, p3

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move-object/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p6

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 32
    move-result v13

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 36
    move-result v29

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v2

    .line 43
    .line 44
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v4

    .line 49
    .line 50
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    if-eqz v29, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 60
    move-result-wide v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v6

    .line 69
    .line 70
    :cond_0
    move-wide/from16 v23, v2

    .line 71
    .line 72
    move-wide/from16 v17, v4

    .line 73
    .line 74
    move-wide/from16 v19, v6

    .line 75
    .line 76
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 77
    move-object v3, v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    const/16 v6, 0x66

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    .line 91
    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    .line 92
    .line 93
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 94
    .line 95
    move/from16 v16, v1

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    const/16 v27, 0x0

    .line 102
    .line 103
    const/16 v28, 0x0

    .line 104
    .line 105
    move/from16 v10, p1

    .line 106
    .line 107
    move/from16 v25, p4

    .line 108
    .line 109
    move/from16 v26, p6

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 113
    return-void
.end method

.method public CHER2K(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v8, p3

    .line 7
    .line 8
    move-object/from16 v12, p4

    .line 9
    .line 10
    move-object/from16 v1, p5

    .line 11
    .line 12
    move-object/from16 v11, p7

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v5, v12, v1, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 25
    .line 26
    const/16 v2, 0x6f

    .line 27
    .line 28
    if-ne v5, v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 36
    move-result v2

    .line 37
    .line 38
    :goto_0
    move/from16 v17, v2

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 47
    move-result v2

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 52
    move-result v27

    .line 53
    .line 54
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 63
    move-result-wide v2

    .line 64
    .line 65
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 69
    move-result-wide v6

    .line 70
    .line 71
    if-eqz v27, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 78
    move-result-wide v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 82
    move-result-wide v3

    .line 83
    .line 84
    move-wide/from16 v18, v1

    .line 85
    .line 86
    move-wide/from16 v21, v3

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_1
    move-wide/from16 v18, v2

    .line 90
    .line 91
    move-wide/from16 v21, v6

    .line 92
    .line 93
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 94
    move-object v1, v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 98
    move-result-wide v2

    .line 99
    .line 100
    const/16 v4, 0x8b

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 108
    move-result-object v11

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    .line 112
    move-result v11

    .line 113
    .line 114
    iget v13, v8, Landroidx/renderscript/Float2;->x:F

    .line 115
    .line 116
    iget v14, v8, Landroidx/renderscript/Float2;->y:F

    .line 117
    .line 118
    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v12, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 122
    move-result-wide v15

    .line 123
    .line 124
    const/16 v20, 0x0

    .line 125
    .line 126
    const/16 v23, 0x0

    .line 127
    .line 128
    const/16 v24, 0x0

    .line 129
    .line 130
    const/16 v25, 0x0

    .line 131
    .line 132
    const/16 v26, 0x0

    .line 133
    .line 134
    move/from16 v5, p2

    .line 135
    .line 136
    move/from16 v8, p1

    .line 137
    .line 138
    move/from16 v12, v17

    .line 139
    .line 140
    move-wide/from16 v17, v18

    .line 141
    .line 142
    move/from16 v19, p6

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 146
    return-void
.end method

.method public CHERK(IIFLandroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v1, p4

    .line 7
    .line 8
    move-object/from16 v8, p6

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v5, v1, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 21
    .line 22
    const/16 v2, 0x71

    .line 23
    .line 24
    if-ne v5, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 32
    move-result v2

    .line 33
    :goto_0
    move v12, v2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 42
    move-result v2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 47
    move-result v27

    .line 48
    .line 49
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v2

    .line 54
    .line 55
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v6

    .line 60
    .line 61
    if-eqz v27, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 65
    move-result-wide v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 69
    move-result-wide v3

    .line 70
    move-wide v15, v1

    .line 71
    .line 72
    move-wide/from16 v21, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move-wide v15, v2

    .line 75
    .line 76
    move-wide/from16 v21, v6

    .line 77
    .line 78
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 79
    move-object v1, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 83
    move-result-wide v2

    .line 84
    .line 85
    const/16 v4, 0x8a

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 93
    move-result-object v8

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    .line 97
    move-result v11

    .line 98
    const/4 v14, 0x0

    .line 99
    .line 100
    const-wide/16 v17, 0x0

    .line 101
    .line 102
    const/16 v20, 0x0

    .line 103
    .line 104
    const/16 v23, 0x0

    .line 105
    .line 106
    const/16 v24, 0x0

    .line 107
    .line 108
    const/16 v25, 0x0

    .line 109
    .line 110
    const/16 v26, 0x0

    .line 111
    .line 112
    move/from16 v5, p2

    .line 113
    .line 114
    move/from16 v8, p1

    .line 115
    .line 116
    move/from16 v13, p3

    .line 117
    .line 118
    move/from16 v19, p5

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 122
    return-void
.end method

.method public CHPMV(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;I)V
    .locals 39

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p4

    .line 23
    .line 24
    move/from16 v5, p5

    .line 25
    .line 26
    move-object/from16 v6, p7

    .line 27
    .line 28
    move/from16 v7, p8

    .line 29
    .line 30
    move-object/from16 v8, p3

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 34
    move-result v22

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 38
    move-result v38

    .line 39
    .line 40
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v2

    .line 45
    .line 46
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 50
    move-result-wide v4

    .line 51
    .line 52
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 56
    move-result-wide v6

    .line 57
    .line 58
    if-eqz v38, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 70
    move-result-wide v6

    .line 71
    .line 72
    :cond_0
    move-wide/from16 v26, v2

    .line 73
    .line 74
    move-wide/from16 v28, v4

    .line 75
    .line 76
    move-wide/from16 v32, v6

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 79
    move-object v12, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 83
    move-result-wide v13

    .line 84
    .line 85
    const/16 v15, 0x61

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v20, 0x0

    .line 94
    .line 95
    const/16 v21, 0x0

    .line 96
    .line 97
    const/16 v23, 0x0

    .line 98
    .line 99
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 100
    .line 101
    move/from16 v24, v2

    .line 102
    .line 103
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 104
    .line 105
    move/from16 v25, v1

    .line 106
    .line 107
    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    .line 108
    .line 109
    move/from16 v30, v1

    .line 110
    .line 111
    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    .line 112
    .line 113
    move/from16 v31, v1

    .line 114
    .line 115
    const/16 v36, 0x0

    .line 116
    .line 117
    const/16 v37, 0x0

    .line 118
    .line 119
    move/from16 v19, p1

    .line 120
    .line 121
    move/from16 v34, p5

    .line 122
    .line 123
    move/from16 v35, p8

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 127
    return-void
.end method

.method public CHPR(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p4

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v30

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v30, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v18, v1

    .line 49
    .line 50
    move-wide/from16 v24, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v24, v4

    .line 54
    .line 55
    move-wide/from16 v18, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x65

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    const-wide/16 v20, 0x0

    .line 75
    .line 76
    const/16 v22, 0x0

    .line 77
    .line 78
    const/16 v23, 0x0

    .line 79
    .line 80
    const/16 v27, 0x0

    .line 81
    .line 82
    const/16 v28, 0x0

    .line 83
    .line 84
    const/16 v29, 0x0

    .line 85
    .line 86
    move/from16 v11, p1

    .line 87
    move v14, v3

    .line 88
    .line 89
    move/from16 v16, p2

    .line 90
    .line 91
    move/from16 v26, p4

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 95
    return-void
.end method

.method public CHPR2(ILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 30

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p7

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move/from16 v3, p1

    .line 19
    .line 20
    move-object/from16 v4, p3

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move-object/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p6

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 32
    move-result v13

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 36
    move-result v29

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v2

    .line 43
    .line 44
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v4

    .line 49
    .line 50
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    if-eqz v29, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 60
    move-result-wide v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v6

    .line 69
    .line 70
    :cond_0
    move-wide/from16 v23, v2

    .line 71
    .line 72
    move-wide/from16 v17, v4

    .line 73
    .line 74
    move-wide/from16 v19, v6

    .line 75
    .line 76
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 77
    move-object v3, v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    const/16 v6, 0x67

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    .line 91
    iget v15, v1, Landroidx/renderscript/Float2;->x:F

    .line 92
    .line 93
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 94
    .line 95
    move/from16 v16, v1

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    const/16 v27, 0x0

    .line 102
    .line 103
    const/16 v28, 0x0

    .line 104
    .line 105
    move/from16 v10, p1

    .line 106
    .line 107
    move/from16 v25, p4

    .line 108
    .line 109
    move/from16 v26, p6

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {v3 .. v29}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 113
    return-void
.end method

.method public CSYMM(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 40

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 16
    .line 17
    .line 18
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 34
    move-result v3

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    .line 46
    move/from16 v5, p1

    .line 47
    .line 48
    move-object/from16 v6, p4

    .line 49
    .line 50
    move-object/from16 v7, p5

    .line 51
    .line 52
    move-object/from16 v8, p7

    .line 53
    .line 54
    .line 55
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 59
    move-result v39

    .line 60
    .line 61
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v2

    .line 66
    .line 67
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v4

    .line 72
    .line 73
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 77
    move-result-wide v6

    .line 78
    .line 79
    if-eqz v39, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 83
    move-result-wide v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 87
    move-result-wide v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 91
    move-result-wide v6

    .line 92
    .line 93
    :cond_0
    move-wide/from16 v27, v2

    .line 94
    .line 95
    move-wide/from16 v29, v4

    .line 96
    .line 97
    move-wide/from16 v33, v6

    .line 98
    .line 99
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 100
    move-object v13, v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 104
    move-result-wide v14

    .line 105
    .line 106
    const/16 v16, 0x7e

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/16 v21, 0x0

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 120
    move-result v22

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 128
    move-result v23

    .line 129
    .line 130
    const/16 v24, 0x0

    .line 131
    .line 132
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 133
    .line 134
    move/from16 v25, v2

    .line 135
    .line 136
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 137
    .line 138
    move/from16 v26, v1

    .line 139
    .line 140
    iget v1, v11, Landroidx/renderscript/Float2;->x:F

    .line 141
    .line 142
    move/from16 v31, v1

    .line 143
    .line 144
    iget v1, v11, Landroidx/renderscript/Float2;->y:F

    .line 145
    .line 146
    move/from16 v32, v1

    .line 147
    .line 148
    const/16 v35, 0x0

    .line 149
    .line 150
    const/16 v36, 0x0

    .line 151
    .line 152
    const/16 v37, 0x0

    .line 153
    .line 154
    const/16 v38, 0x0

    .line 155
    .line 156
    move/from16 v19, p1

    .line 157
    .line 158
    move/from16 v20, p2

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {v13 .. v39}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 162
    return-void

    .line 163
    .line 164
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 165
    .line 166
    const-string v2, "Matrix A is not symmetric"

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    throw v1
.end method

.method public CSYR2K(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 30

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v8, p3

    .line 7
    .line 8
    move-object/from16 v1, p4

    .line 9
    .line 10
    move-object/from16 v2, p5

    .line 11
    .line 12
    move-object/from16 v12, p6

    .line 13
    .line 14
    move-object/from16 v11, p7

    .line 15
    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v5, v1, v2, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 27
    .line 28
    const/16 v3, 0x6f

    .line 29
    .line 30
    if-eq v5, v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 38
    move-result v3

    .line 39
    :goto_0
    move v15, v3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    .line 48
    move-result v3

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 53
    move-result v27

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v3

    .line 60
    .line 61
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v6

    .line 66
    .line 67
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v9

    .line 72
    .line 73
    if-eqz v27, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 85
    move-result-wide v6

    .line 86
    .line 87
    move-wide/from16 v21, v1

    .line 88
    .line 89
    move-wide/from16 v16, v3

    .line 90
    .line 91
    move-wide/from16 v28, v6

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :cond_1
    move-wide/from16 v16, v3

    .line 95
    .line 96
    move-wide/from16 v21, v6

    .line 97
    .line 98
    move-wide/from16 v28, v9

    .line 99
    .line 100
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 101
    move-object v1, v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 105
    move-result-wide v2

    .line 106
    .line 107
    const/16 v4, 0x80

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v10, 0x0

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 115
    move-result-object v11

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    .line 119
    move-result v11

    .line 120
    .line 121
    iget v13, v8, Landroidx/renderscript/Float2;->x:F

    .line 122
    .line 123
    iget v14, v8, Landroidx/renderscript/Float2;->y:F

    .line 124
    .line 125
    iget v8, v12, Landroidx/renderscript/Float2;->x:F

    .line 126
    .line 127
    move/from16 v19, v8

    .line 128
    .line 129
    iget v8, v12, Landroidx/renderscript/Float2;->y:F

    .line 130
    .line 131
    move/from16 v20, v8

    .line 132
    .line 133
    const/16 v23, 0x0

    .line 134
    .line 135
    const/16 v24, 0x0

    .line 136
    .line 137
    const/16 v25, 0x0

    .line 138
    .line 139
    const/16 v26, 0x0

    .line 140
    .line 141
    move/from16 v5, p2

    .line 142
    .line 143
    move/from16 v8, p1

    .line 144
    move v12, v15

    .line 145
    .line 146
    move-wide/from16 v15, v16

    .line 147
    .line 148
    move-wide/from16 v17, v21

    .line 149
    .line 150
    move-wide/from16 v21, v28

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 154
    return-void
.end method

.method public CSYRK(IILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Float2;Landroidx/renderscript/Allocation;)V
    .locals 39

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    .line 13
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 22
    move-result-object v2

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    .line 27
    move/from16 v3, p2

    .line 28
    .line 29
    move-object/from16 v6, p4

    .line 30
    .line 31
    move-object/from16 v8, p6

    .line 32
    .line 33
    .line 34
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 35
    .line 36
    const/16 v2, 0x6f

    .line 37
    .line 38
    if-eq v3, v2, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 46
    move-result v2

    .line 47
    .line 48
    :goto_0
    move/from16 v23, v2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 62
    move-result v38

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 68
    move-result-wide v4

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 74
    .line 75
    if-eqz v38, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 79
    move-result-wide v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 83
    .line 84
    :cond_1
    move-wide/from16 v26, v4

    .line 85
    .line 86
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 87
    move-object v12, v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 91
    move-result-wide v13

    .line 92
    .line 93
    const/16 v15, 0x7f

    .line 94
    .line 95
    const/16 v17, 0x0

    .line 96
    .line 97
    const/16 v18, 0x0

    .line 98
    .line 99
    const/16 v20, 0x0

    .line 100
    .line 101
    const/16 v21, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 109
    move-result v22

    .line 110
    .line 111
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 112
    .line 113
    move/from16 v24, v2

    .line 114
    .line 115
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 116
    .line 117
    move/from16 v25, v1

    .line 118
    .line 119
    const-wide/16 v28, 0x0

    .line 120
    .line 121
    iget v1, v10, Landroidx/renderscript/Float2;->x:F

    .line 122
    .line 123
    move/from16 v30, v1

    .line 124
    .line 125
    iget v1, v10, Landroidx/renderscript/Float2;->y:F

    .line 126
    .line 127
    move/from16 v31, v1

    .line 128
    .line 129
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 133
    move-result-wide v32

    .line 134
    .line 135
    const/16 v34, 0x0

    .line 136
    .line 137
    const/16 v35, 0x0

    .line 138
    .line 139
    const/16 v36, 0x0

    .line 140
    .line 141
    const/16 v37, 0x0

    .line 142
    .line 143
    move/from16 v16, p2

    .line 144
    .line 145
    move/from16 v19, p1

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {v12 .. v38}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 149
    return-void
.end method

.method public CTBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    if-ltz p4, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    move/from16 v7, p7

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v11

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v27

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v27, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    :cond_0
    move-wide v15, v1

    .line 65
    .line 66
    move-wide/from16 v17, v3

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 69
    move-object v1, v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 73
    move-result-wide v2

    .line 74
    .line 75
    const/16 v4, 0x42

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    .line 82
    const/16 v19, 0x0

    .line 83
    .line 84
    const/16 v20, 0x0

    .line 85
    .line 86
    const-wide/16 v21, 0x0

    .line 87
    .line 88
    const/16 v24, 0x0

    .line 89
    .line 90
    const/16 v25, 0x0

    .line 91
    .line 92
    const/16 v26, 0x0

    .line 93
    .line 94
    move/from16 v5, p2

    .line 95
    .line 96
    move/from16 v8, p1

    .line 97
    .line 98
    move/from16 v9, p3

    .line 99
    .line 100
    move/from16 v12, p4

    .line 101
    .line 102
    move/from16 v23, p7

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 106
    return-void

    .line 107
    .line 108
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 109
    .line 110
    const-string v2, "K must be greater than or equal to 0"

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    throw v1
.end method

.method public CTBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p5

    .line 21
    .line 22
    move-object/from16 v6, p6

    .line 23
    .line 24
    move/from16 v7, p7

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    if-ltz p4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v28

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v28, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    .line 65
    :cond_0
    move-wide/from16 v16, v1

    .line 66
    .line 67
    move-wide/from16 v18, v3

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    move-object v2, v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 74
    move-result-wide v3

    .line 75
    .line 76
    const/16 v5, 0x45

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    .line 83
    const/16 v20, 0x0

    .line 84
    .line 85
    const/16 v21, 0x0

    .line 86
    .line 87
    const-wide/16 v22, 0x0

    .line 88
    .line 89
    const/16 v25, 0x0

    .line 90
    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    move/from16 v6, p2

    .line 96
    .line 97
    move/from16 v9, p1

    .line 98
    .line 99
    move/from16 v10, p3

    .line 100
    .line 101
    move/from16 v13, p4

    .line 102
    .line 103
    move/from16 v24, p7

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 107
    return-void

    .line 108
    .line 109
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 110
    .line 111
    const-string v2, "Number of diagonals must be positive"

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    throw v1
.end method

.method public CTPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v28

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v28, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    .line 56
    :cond_0
    move-wide/from16 v16, v1

    .line 57
    .line 58
    move-wide/from16 v18, v3

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    move-object v2, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    const/16 v5, 0x43

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const/16 v21, 0x0

    .line 78
    .line 79
    const-wide/16 v22, 0x0

    .line 80
    .line 81
    const/16 v25, 0x0

    .line 82
    .line 83
    const/16 v26, 0x0

    .line 84
    .line 85
    const/16 v27, 0x0

    .line 86
    .line 87
    move/from16 v6, p2

    .line 88
    .line 89
    move/from16 v9, p1

    .line 90
    .line 91
    move/from16 v10, p3

    .line 92
    .line 93
    move/from16 v24, p6

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 97
    return-void
.end method

.method public CTPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v28

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v28, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    .line 56
    :cond_0
    move-wide/from16 v16, v1

    .line 57
    .line 58
    move-wide/from16 v18, v3

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    move-object v2, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    const/16 v5, 0x46

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const/16 v21, 0x0

    .line 78
    .line 79
    const-wide/16 v22, 0x0

    .line 80
    .line 81
    const/16 v25, 0x0

    .line 82
    .line 83
    const/16 v26, 0x0

    .line 84
    .line 85
    const/16 v27, 0x0

    .line 86
    .line 87
    move/from16 v6, p2

    .line 88
    .line 89
    move/from16 v9, p1

    .line 90
    .line 91
    move/from16 v10, p3

    .line 92
    .line 93
    move/from16 v24, p6

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 97
    return-void
.end method

.method public CTRMM(IIIILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 32

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p5

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    move-object/from16 v3, p7

    .line 9
    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 15
    .line 16
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    move/from16 v11, p1

    .line 23
    .line 24
    move/from16 v9, p3

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 31
    move-result v31

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 43
    move-result-wide v6

    .line 44
    .line 45
    if-eqz v31, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 53
    move-result-wide v6

    .line 54
    .line 55
    :cond_0
    move-wide/from16 v19, v4

    .line 56
    .line 57
    move-wide/from16 v21, v6

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    move-object v5, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    const/16 v8, 0x81

    .line 67
    const/4 v10, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 75
    move-result v14

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 83
    move-result v15

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 88
    .line 89
    move/from16 v17, v2

    .line 90
    .line 91
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 92
    .line 93
    move/from16 v18, v1

    .line 94
    .line 95
    const/16 v23, 0x0

    .line 96
    .line 97
    const/16 v24, 0x0

    .line 98
    .line 99
    const-wide/16 v25, 0x0

    .line 100
    .line 101
    const/16 v27, 0x0

    .line 102
    .line 103
    const/16 v28, 0x0

    .line 104
    .line 105
    const/16 v29, 0x0

    .line 106
    .line 107
    const/16 v30, 0x0

    .line 108
    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move/from16 v11, p1

    .line 112
    .line 113
    move/from16 v12, p2

    .line 114
    .line 115
    move/from16 v13, p4

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {v5 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 119
    return-void
.end method

.method public CTRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v28

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v28, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    :cond_0
    move-wide/from16 v16, v1

    .line 64
    .line 65
    move-wide/from16 v18, v3

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    move-object v2, v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    const/16 v5, 0x41

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    const-wide/16 v22, 0x0

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    const/16 v26, 0x0

    .line 91
    .line 92
    const/16 v27, 0x0

    .line 93
    .line 94
    move/from16 v6, p2

    .line 95
    .line 96
    move/from16 v9, p1

    .line 97
    .line 98
    move/from16 v10, p3

    .line 99
    .line 100
    move/from16 v24, p6

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 104
    return-void
.end method

.method public CTRSM(IIIILandroidx/renderscript/Float2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 32

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p5

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    move-object/from16 v3, p7

    .line 9
    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 15
    .line 16
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    move/from16 v11, p1

    .line 23
    .line 24
    move/from16 v9, p3

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 31
    move-result v31

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 43
    move-result-wide v6

    .line 44
    .line 45
    if-eqz v31, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 53
    move-result-wide v6

    .line 54
    .line 55
    :cond_0
    move-wide/from16 v19, v4

    .line 56
    .line 57
    move-wide/from16 v21, v6

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    move-object v5, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    const/16 v8, 0x82

    .line 67
    const/4 v10, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 75
    move-result v14

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 83
    move-result v15

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    iget v2, v1, Landroidx/renderscript/Float2;->x:F

    .line 88
    .line 89
    move/from16 v17, v2

    .line 90
    .line 91
    iget v1, v1, Landroidx/renderscript/Float2;->y:F

    .line 92
    .line 93
    move/from16 v18, v1

    .line 94
    .line 95
    const/16 v23, 0x0

    .line 96
    .line 97
    const/16 v24, 0x0

    .line 98
    .line 99
    const-wide/16 v25, 0x0

    .line 100
    .line 101
    const/16 v27, 0x0

    .line 102
    .line 103
    const/16 v28, 0x0

    .line 104
    .line 105
    const/16 v29, 0x0

    .line 106
    .line 107
    const/16 v30, 0x0

    .line 108
    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move/from16 v11, p1

    .line 112
    .line 113
    move/from16 v12, p2

    .line 114
    .line 115
    move/from16 v13, p4

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {v5 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 119
    return-void
.end method

.method public CTRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v28

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v28, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    :cond_0
    move-wide/from16 v16, v1

    .line 64
    .line 65
    move-wide/from16 v18, v3

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    move-object v2, v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    const/16 v5, 0x44

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    const-wide/16 v22, 0x0

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    const/16 v26, 0x0

    .line 91
    .line 92
    const/16 v27, 0x0

    .line 93
    .line 94
    move/from16 v6, p2

    .line 95
    .line 96
    move/from16 v9, p1

    .line 97
    .line 98
    move/from16 v10, p3

    .line 99
    .line 100
    move/from16 v24, p6

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 104
    return-void
.end method

.method public DGBMV(IIIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p6

    .line 5
    .line 6
    move-object/from16 v9, p7

    .line 7
    .line 8
    move-object/from16 v10, p11

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p6

    .line 19
    .line 20
    move-object/from16 v4, p7

    .line 21
    .line 22
    move/from16 v5, p8

    .line 23
    .line 24
    move-object/from16 v6, p11

    .line 25
    .line 26
    move/from16 v7, p12

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    if-ltz p2, :cond_1

    .line 32
    .line 33
    if-ltz p3, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 41
    move-result v11

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 49
    move-result v12

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 53
    move-result v28

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v5

    .line 72
    .line 73
    if-eqz v28, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 85
    move-result-wide v5

    .line 86
    .line 87
    :cond_0
    move-wide/from16 v16, v1

    .line 88
    .line 89
    move-wide/from16 v18, v3

    .line 90
    .line 91
    move-wide/from16 v22, v5

    .line 92
    .line 93
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 94
    move-object v2, v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 98
    move-result-wide v3

    .line 99
    .line 100
    const/16 v5, 0x38

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v13, 0x0

    .line 106
    .line 107
    move/from16 v6, p1

    .line 108
    .line 109
    move-wide/from16 v14, p4

    .line 110
    .line 111
    move-wide/from16 v20, p9

    .line 112
    .line 113
    move/from16 v24, p8

    .line 114
    .line 115
    move/from16 v25, p12

    .line 116
    .line 117
    move/from16 v26, p2

    .line 118
    .line 119
    move/from16 v27, p3

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 123
    return-void

    .line 124
    .line 125
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 126
    .line 127
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v1
.end method

.method public DGEMM(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    move-object/from16 v10, p9

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 20
    move-result-object v1

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    move/from16 v2, p1

    .line 24
    .line 25
    move/from16 v3, p2

    .line 26
    .line 27
    move-object/from16 v5, p5

    .line 28
    .line 29
    move-object/from16 v6, p6

    .line 30
    .line 31
    move-object/from16 v7, p9

    .line 32
    .line 33
    .line 34
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 35
    .line 36
    const/16 v1, 0x6f

    .line 37
    .line 38
    move/from16 v6, p1

    .line 39
    .line 40
    if-eq v6, v1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 56
    move-result v3

    .line 57
    .line 58
    :goto_0
    move/from16 v7, p2

    .line 59
    move v11, v2

    .line 60
    move v13, v3

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    .line 77
    move-result v3

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :goto_1
    if-eq v7, v1, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 88
    move-result v1

    .line 89
    :goto_2
    move v12, v1

    .line 90
    goto :goto_3

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 98
    move-result v1

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 103
    move-result v28

    .line 104
    .line 105
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 109
    move-result-wide v1

    .line 110
    .line 111
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 115
    move-result-wide v3

    .line 116
    .line 117
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 121
    move-result-wide v14

    .line 122
    .line 123
    if-eqz v28, :cond_2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 127
    move-result-wide v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 131
    move-result-wide v3

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 135
    move-result-wide v8

    .line 136
    .line 137
    move-wide/from16 v16, v1

    .line 138
    .line 139
    move-wide/from16 v18, v3

    .line 140
    .line 141
    move-wide/from16 v22, v8

    .line 142
    goto :goto_4

    .line 143
    .line 144
    :cond_2
    move-wide/from16 v16, v1

    .line 145
    .line 146
    move-wide/from16 v18, v3

    .line 147
    .line 148
    move-wide/from16 v22, v14

    .line 149
    .line 150
    :goto_4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 151
    move-object v2, v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 155
    move-result-wide v3

    .line 156
    .line 157
    const/16 v5, 0x77

    .line 158
    const/4 v8, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, 0x0

    .line 161
    .line 162
    const/16 v24, 0x0

    .line 163
    .line 164
    const/16 v25, 0x0

    .line 165
    .line 166
    const/16 v26, 0x0

    .line 167
    .line 168
    const/16 v27, 0x0

    .line 169
    .line 170
    move/from16 v6, p1

    .line 171
    .line 172
    move/from16 v7, p2

    .line 173
    .line 174
    move-wide/from16 v14, p3

    .line 175
    .line 176
    move-wide/from16 v20, p7

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 180
    return-void
.end method

.method public DGEMV(IDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p9

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p4

    .line 19
    .line 20
    move-object/from16 v4, p5

    .line 21
    .line 22
    move/from16 v5, p6

    .line 23
    .line 24
    move-object/from16 v6, p9

    .line 25
    .line 26
    move/from16 v7, p10

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v11

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 45
    move-result v12

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v28

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v1

    .line 56
    .line 57
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v5

    .line 68
    .line 69
    if-eqz v28, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v5

    .line 82
    .line 83
    :cond_0
    move-wide/from16 v16, v1

    .line 84
    .line 85
    move-wide/from16 v18, v3

    .line 86
    .line 87
    move-wide/from16 v22, v5

    .line 88
    .line 89
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 90
    move-object v2, v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 94
    move-result-wide v3

    .line 95
    .line 96
    const/16 v5, 0x37

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v13, 0x0

    .line 102
    .line 103
    const/16 v26, 0x0

    .line 104
    .line 105
    const/16 v27, 0x0

    .line 106
    .line 107
    move/from16 v6, p1

    .line 108
    .line 109
    move-wide/from16 v14, p2

    .line 110
    .line 111
    move-wide/from16 v20, p7

    .line 112
    .line 113
    move/from16 v24, p6

    .line 114
    .line 115
    move/from16 v25, p10

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 119
    return-void
.end method

.method public DGER(DLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p3

    .line 5
    .line 6
    move-object/from16 v8, p5

    .line 7
    .line 8
    move-object/from16 v9, p7

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 16
    move-result v11

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 24
    move-result v12

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    move-object/from16 v2, p3

    .line 33
    .line 34
    move/from16 v3, p4

    .line 35
    .line 36
    move-object/from16 v4, p5

    .line 37
    .line 38
    move/from16 v5, p6

    .line 39
    .line 40
    move-object/from16 v6, p7

    .line 41
    .line 42
    .line 43
    invoke-static/range {v1 .. v6}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 47
    move-result v28

    .line 48
    .line 49
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v1

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v3

    .line 60
    .line 61
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v5

    .line 66
    .line 67
    if-eqz v28, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 71
    move-result-wide v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v7}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 75
    move-result-wide v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 79
    move-result-wide v5

    .line 80
    .line 81
    :cond_0
    move-wide/from16 v22, v1

    .line 82
    .line 83
    move-wide/from16 v16, v3

    .line 84
    .line 85
    move-wide/from16 v18, v5

    .line 86
    .line 87
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 88
    move-object v2, v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 92
    move-result-wide v3

    .line 93
    .line 94
    const/16 v5, 0x5a

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v13, 0x0

    .line 101
    .line 102
    const-wide/16 v20, 0x0

    .line 103
    .line 104
    const/16 v26, 0x0

    .line 105
    .line 106
    const/16 v27, 0x0

    .line 107
    .line 108
    move-wide/from16 v14, p1

    .line 109
    .line 110
    move/from16 v24, p4

    .line 111
    .line 112
    move/from16 v25, p6

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 116
    return-void
.end method

.method public DSBMV(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    move-object/from16 v10, p10

    .line 9
    .line 10
    if-ltz p2, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    move/from16 v2, p1

    .line 19
    .line 20
    move-object/from16 v3, p5

    .line 21
    .line 22
    move-object/from16 v4, p6

    .line 23
    .line 24
    move-object/from16 v5, p10

    .line 25
    .line 26
    move/from16 v6, p7

    .line 27
    .line 28
    move/from16 v7, p11

    .line 29
    .line 30
    .line 31
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    .line 32
    move-result v11

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 36
    move-result v27

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v1

    .line 43
    .line 44
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v3

    .line 49
    .line 50
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 54
    move-result-wide v5

    .line 55
    .line 56
    if-eqz v27, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 60
    move-result-wide v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v5

    .line 69
    :cond_0
    move-wide v15, v1

    .line 70
    .line 71
    move-wide/from16 v17, v3

    .line 72
    .line 73
    move-wide/from16 v21, v5

    .line 74
    .line 75
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 76
    move-object v1, v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 80
    move-result-wide v2

    .line 81
    .line 82
    const/16 v4, 0x58

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    .line 89
    const/16 v25, 0x0

    .line 90
    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    move/from16 v8, p1

    .line 94
    .line 95
    move/from16 v12, p2

    .line 96
    .line 97
    move-wide/from16 v13, p3

    .line 98
    .line 99
    move-wide/from16 v19, p8

    .line 100
    .line 101
    move/from16 v23, p7

    .line 102
    .line 103
    move/from16 v24, p11

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 107
    return-void

    .line 108
    .line 109
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 110
    .line 111
    const-string v2, "K must be greater than or equal to 0"

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    throw v1
.end method

.method public DSPMV(IDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p9

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p4

    .line 19
    .line 20
    move-object/from16 v4, p5

    .line 21
    .line 22
    move/from16 v5, p6

    .line 23
    .line 24
    move-object/from16 v6, p9

    .line 25
    .line 26
    move/from16 v7, p10

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v28

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v28, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    .line 68
    :cond_0
    move-wide/from16 v16, v1

    .line 69
    .line 70
    move-wide/from16 v18, v3

    .line 71
    .line 72
    move-wide/from16 v22, v5

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 75
    move-object v2, v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 79
    move-result-wide v3

    .line 80
    .line 81
    const/16 v5, 0x59

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    .line 89
    const/16 v26, 0x0

    .line 90
    .line 91
    const/16 v27, 0x0

    .line 92
    .line 93
    move/from16 v9, p1

    .line 94
    .line 95
    move-wide/from16 v14, p2

    .line 96
    .line 97
    move-wide/from16 v20, p7

    .line 98
    .line 99
    move/from16 v24, p6

    .line 100
    .line 101
    move/from16 v25, p10

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 105
    return-void
.end method

.method public DSPR(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p5

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v30

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v30, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v18, v1

    .line 49
    .line 50
    move-wide/from16 v20, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v20, v4

    .line 54
    .line 55
    move-wide/from16 v18, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x5c

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const-wide/16 v22, 0x0

    .line 73
    .line 74
    const-wide/16 v24, 0x0

    .line 75
    .line 76
    const/16 v27, 0x0

    .line 77
    .line 78
    const/16 v28, 0x0

    .line 79
    .line 80
    const/16 v29, 0x0

    .line 81
    .line 82
    move/from16 v11, p1

    .line 83
    move v14, v3

    .line 84
    .line 85
    move-wide/from16 v16, p2

    .line 86
    .line 87
    move/from16 v26, p5

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 91
    return-void
.end method

.method public DSPR2(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    move-object/from16 v10, p8

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p4

    .line 19
    .line 20
    move/from16 v4, p5

    .line 21
    .line 22
    move-object/from16 v5, p6

    .line 23
    .line 24
    move/from16 v6, p7

    .line 25
    .line 26
    move-object/from16 v7, p8

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v28

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v28, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    .line 68
    :cond_0
    move-wide/from16 v22, v1

    .line 69
    .line 70
    move-wide/from16 v16, v3

    .line 71
    .line 72
    move-wide/from16 v18, v5

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 75
    move-object v2, v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 79
    move-result-wide v3

    .line 80
    .line 81
    const/16 v5, 0x5e

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    .line 89
    const-wide/16 v20, 0x0

    .line 90
    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    move/from16 v9, p1

    .line 96
    .line 97
    move-wide/from16 v14, p2

    .line 98
    .line 99
    move/from16 v24, p5

    .line 100
    .line 101
    move/from16 v25, p7

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 105
    return-void
.end method

.method public DSYMM(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 38

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    move-object/from16 v10, p9

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 30
    move-result v2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    move/from16 v4, p1

    .line 43
    .line 44
    move-object/from16 v5, p5

    .line 45
    .line 46
    move-object/from16 v6, p6

    .line 47
    .line 48
    move-object/from16 v7, p9

    .line 49
    .line 50
    .line 51
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 55
    move-result v37

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v1

    .line 62
    .line 63
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v3

    .line 68
    .line 69
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 73
    move-result-wide v5

    .line 74
    .line 75
    if-eqz v37, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 79
    move-result-wide v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 83
    move-result-wide v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 87
    move-result-wide v5

    .line 88
    .line 89
    :cond_0
    move-wide/from16 v25, v1

    .line 90
    .line 91
    move-wide/from16 v27, v3

    .line 92
    .line 93
    move-wide/from16 v31, v5

    .line 94
    .line 95
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 96
    move-object v11, v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 100
    move-result-wide v12

    .line 101
    .line 102
    const/16 v14, 0x78

    .line 103
    const/4 v15, 0x0

    .line 104
    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p9 .. p9}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 115
    move-result v20

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p9 .. p9}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 123
    move-result v21

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    const/16 v33, 0x0

    .line 128
    .line 129
    const/16 v34, 0x0

    .line 130
    .line 131
    const/16 v35, 0x0

    .line 132
    .line 133
    const/16 v36, 0x0

    .line 134
    .line 135
    move/from16 v17, p1

    .line 136
    .line 137
    move/from16 v18, p2

    .line 138
    .line 139
    move-wide/from16 v23, p3

    .line 140
    .line 141
    move-wide/from16 v29, p7

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {v11 .. v37}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 145
    return-void

    .line 146
    .line 147
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 148
    .line 149
    const-string v2, "Matrix A is not symmetric"

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v1
.end method

.method public DSYMV(IDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IDLandroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p9

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p4

    .line 19
    .line 20
    move-object/from16 v4, p5

    .line 21
    .line 22
    move-object/from16 v5, p9

    .line 23
    .line 24
    move/from16 v6, p6

    .line 25
    .line 26
    move/from16 v7, p10

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v28

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v28, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    .line 68
    :cond_0
    move-wide/from16 v16, v1

    .line 69
    .line 70
    move-wide/from16 v18, v3

    .line 71
    .line 72
    move-wide/from16 v22, v5

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 75
    move-object v2, v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 79
    move-result-wide v3

    .line 80
    .line 81
    const/16 v5, 0x57

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    .line 89
    const/16 v26, 0x0

    .line 90
    .line 91
    const/16 v27, 0x0

    .line 92
    .line 93
    move/from16 v9, p1

    .line 94
    .line 95
    move-wide/from16 v14, p2

    .line 96
    .line 97
    move-wide/from16 v20, p7

    .line 98
    .line 99
    move/from16 v24, p6

    .line 100
    .line 101
    move/from16 v25, p10

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 105
    return-void
.end method

.method public DSYR(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p5

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v30

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v30, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v18, v1

    .line 49
    .line 50
    move-wide/from16 v20, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v20, v4

    .line 54
    .line 55
    move-wide/from16 v18, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x5b

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const-wide/16 v22, 0x0

    .line 73
    .line 74
    const-wide/16 v24, 0x0

    .line 75
    .line 76
    const/16 v27, 0x0

    .line 77
    .line 78
    const/16 v28, 0x0

    .line 79
    .line 80
    const/16 v29, 0x0

    .line 81
    .line 82
    move/from16 v11, p1

    .line 83
    move v14, v3

    .line 84
    .line 85
    move-wide/from16 v16, p2

    .line 86
    .line 87
    move/from16 v26, p5

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 91
    return-void
.end method

.method public DSYR2(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    move-object/from16 v10, p8

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p4

    .line 19
    .line 20
    move/from16 v4, p5

    .line 21
    .line 22
    move-object/from16 v5, p6

    .line 23
    .line 24
    move/from16 v6, p7

    .line 25
    .line 26
    move-object/from16 v7, p8

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v28

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v28, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    .line 68
    :cond_0
    move-wide/from16 v22, v1

    .line 69
    .line 70
    move-wide/from16 v16, v3

    .line 71
    .line 72
    move-wide/from16 v18, v5

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 75
    move-object v2, v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 79
    move-result-wide v3

    .line 80
    .line 81
    const/16 v5, 0x5d

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    .line 89
    const-wide/16 v20, 0x0

    .line 90
    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    move/from16 v9, p1

    .line 96
    .line 97
    move-wide/from16 v14, p2

    .line 98
    .line 99
    move/from16 v24, p5

    .line 100
    .line 101
    move/from16 v25, p7

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 105
    return-void
.end method

.method public DSYR2K(IIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    move-object/from16 v2, p6

    .line 9
    .line 10
    move-object/from16 v8, p9

    .line 11
    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 14
    .line 15
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v5, v1, v2, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 23
    .line 24
    const/16 v3, 0x6f

    .line 25
    .line 26
    if-eq v5, v3, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 34
    move-result v3

    .line 35
    :goto_0
    move v12, v3

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v27

    .line 50
    .line 51
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v3

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v6

    .line 62
    .line 63
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v9

    .line 68
    .line 69
    if-eqz v27, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v6

    .line 82
    .line 83
    move-wide/from16 v17, v1

    .line 84
    move-wide v15, v3

    .line 85
    .line 86
    move-wide/from16 v21, v6

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    move-wide v15, v3

    .line 89
    .line 90
    move-wide/from16 v17, v6

    .line 91
    .line 92
    move-wide/from16 v21, v9

    .line 93
    .line 94
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 95
    move-object v1, v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 99
    move-result-wide v2

    .line 100
    .line 101
    const/16 v4, 0x7a

    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p9 .. p9}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 109
    move-result-object v8

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    .line 113
    move-result v11

    .line 114
    .line 115
    const/16 v23, 0x0

    .line 116
    .line 117
    const/16 v24, 0x0

    .line 118
    .line 119
    const/16 v25, 0x0

    .line 120
    .line 121
    const/16 v26, 0x0

    .line 122
    .line 123
    move/from16 v5, p2

    .line 124
    .line 125
    move/from16 v8, p1

    .line 126
    .line 127
    move-wide/from16 v13, p3

    .line 128
    .line 129
    move-wide/from16 v19, p7

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 133
    return-void
.end method

.method public DSYRK(IIDLandroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 37

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p8

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    .line 23
    move/from16 v2, p2

    .line 24
    .line 25
    move-object/from16 v5, p5

    .line 26
    .line 27
    move-object/from16 v7, p8

    .line 28
    .line 29
    .line 30
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 31
    .line 32
    const/16 v1, 0x6f

    .line 33
    .line 34
    if-eq v2, v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 42
    move-result v1

    .line 43
    .line 44
    :goto_0
    move/from16 v21, v1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 58
    move-result v36

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 70
    move-result-wide v5

    .line 71
    .line 72
    if-eqz v36, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 76
    move-result-wide v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 80
    move-result-wide v5

    .line 81
    .line 82
    :cond_1
    move-wide/from16 v24, v3

    .line 83
    .line 84
    move-wide/from16 v30, v5

    .line 85
    .line 86
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 87
    move-object v10, v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 91
    move-result-wide v11

    .line 92
    .line 93
    const/16 v13, 0x79

    .line 94
    const/4 v15, 0x0

    .line 95
    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/16 v18, 0x0

    .line 99
    .line 100
    const/16 v19, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 108
    move-result v20

    .line 109
    .line 110
    const-wide/16 v26, 0x0

    .line 111
    .line 112
    const/16 v32, 0x0

    .line 113
    .line 114
    const/16 v33, 0x0

    .line 115
    .line 116
    const/16 v34, 0x0

    .line 117
    .line 118
    const/16 v35, 0x0

    .line 119
    .line 120
    move/from16 v14, p2

    .line 121
    .line 122
    move/from16 v17, p1

    .line 123
    .line 124
    move-wide/from16 v22, p3

    .line 125
    .line 126
    move-wide/from16 v28, p6

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {v10 .. v36}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 130
    return-void
.end method

.method public DTBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    if-ltz p4, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    move/from16 v7, p7

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v11

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v27

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v27, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    :cond_0
    move-wide v15, v1

    .line 65
    .line 66
    move-wide/from16 v17, v3

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 69
    move-object v1, v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 73
    move-result-wide v2

    .line 74
    .line 75
    const/16 v4, 0x3a

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    .line 80
    const-wide/16 v13, 0x0

    .line 81
    .line 82
    const-wide/16 v19, 0x0

    .line 83
    .line 84
    const-wide/16 v21, 0x0

    .line 85
    .line 86
    const/16 v24, 0x0

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    const/16 v26, 0x0

    .line 91
    .line 92
    move/from16 v5, p2

    .line 93
    .line 94
    move/from16 v8, p1

    .line 95
    .line 96
    move/from16 v9, p3

    .line 97
    .line 98
    move/from16 v12, p4

    .line 99
    .line 100
    move/from16 v23, p7

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v1 .. v27}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 104
    return-void

    .line 105
    .line 106
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 107
    .line 108
    const-string v2, "K must be greater than or equal to 0"

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v1
.end method

.method public DTBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p5

    .line 21
    .line 22
    move-object/from16 v6, p6

    .line 23
    .line 24
    move/from16 v7, p7

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    if-ltz p4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v28

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v28, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    .line 65
    :cond_0
    move-wide/from16 v16, v1

    .line 66
    .line 67
    move-wide/from16 v18, v3

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    move-object v2, v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 74
    move-result-wide v3

    .line 75
    .line 76
    const/16 v5, 0x3d

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    .line 81
    const-wide/16 v14, 0x0

    .line 82
    .line 83
    const-wide/16 v20, 0x0

    .line 84
    .line 85
    const-wide/16 v22, 0x0

    .line 86
    .line 87
    const/16 v25, 0x0

    .line 88
    .line 89
    const/16 v26, 0x0

    .line 90
    .line 91
    const/16 v27, 0x0

    .line 92
    .line 93
    move/from16 v6, p2

    .line 94
    .line 95
    move/from16 v9, p1

    .line 96
    .line 97
    move/from16 v10, p3

    .line 98
    .line 99
    move/from16 v13, p4

    .line 100
    .line 101
    move/from16 v24, p7

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 105
    return-void

    .line 106
    .line 107
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 108
    .line 109
    const-string v2, "Number of diagonals must be positive"

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v1
.end method

.method public DTPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v28

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v28, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    .line 56
    :cond_0
    move-wide/from16 v16, v1

    .line 57
    .line 58
    move-wide/from16 v18, v3

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    move-object v2, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    const/16 v5, 0x3b

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    .line 73
    const-wide/16 v14, 0x0

    .line 74
    .line 75
    const-wide/16 v20, 0x0

    .line 76
    .line 77
    const-wide/16 v22, 0x0

    .line 78
    .line 79
    const/16 v25, 0x0

    .line 80
    .line 81
    const/16 v26, 0x0

    .line 82
    .line 83
    const/16 v27, 0x0

    .line 84
    .line 85
    move/from16 v6, p2

    .line 86
    .line 87
    move/from16 v9, p1

    .line 88
    .line 89
    move/from16 v10, p3

    .line 90
    .line 91
    move/from16 v24, p6

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 95
    return-void
.end method

.method public DTPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v28

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v28, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    .line 56
    :cond_0
    move-wide/from16 v16, v1

    .line 57
    .line 58
    move-wide/from16 v18, v3

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    move-object v2, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    const/16 v5, 0x3e

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    .line 73
    const-wide/16 v14, 0x0

    .line 74
    .line 75
    const-wide/16 v20, 0x0

    .line 76
    .line 77
    const-wide/16 v22, 0x0

    .line 78
    .line 79
    const/16 v25, 0x0

    .line 80
    .line 81
    const/16 v26, 0x0

    .line 82
    .line 83
    const/16 v27, 0x0

    .line 84
    .line 85
    move/from16 v6, p2

    .line 86
    .line 87
    move/from16 v9, p1

    .line 88
    .line 89
    move/from16 v10, p3

    .line 90
    .line 91
    move/from16 v24, p6

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 95
    return-void
.end method

.method public DTRMM(IIIIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p7

    .line 5
    .line 6
    move-object/from16 v2, p8

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    move/from16 v10, p1

    .line 21
    .line 22
    move/from16 v8, p3

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 29
    move-result v30

    .line 30
    .line 31
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 35
    move-result-wide v3

    .line 36
    .line 37
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    if-eqz v30, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 47
    move-result-wide v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v18, v3

    .line 54
    .line 55
    move-wide/from16 v20, v5

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x7b

    .line 65
    const/4 v9, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 73
    move-result v13

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 81
    move-result v14

    .line 82
    const/4 v15, 0x0

    .line 83
    .line 84
    const-wide/16 v22, 0x0

    .line 85
    .line 86
    const-wide/16 v24, 0x0

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v27, 0x0

    .line 91
    .line 92
    const/16 v28, 0x0

    .line 93
    .line 94
    const/16 v29, 0x0

    .line 95
    .line 96
    move/from16 v8, p3

    .line 97
    .line 98
    move/from16 v10, p1

    .line 99
    .line 100
    move/from16 v11, p2

    .line 101
    .line 102
    move/from16 v12, p4

    .line 103
    .line 104
    move-wide/from16 v16, p5

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 108
    return-void
.end method

.method public DTRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v28

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v28, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    :cond_0
    move-wide/from16 v16, v1

    .line 64
    .line 65
    move-wide/from16 v18, v3

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    move-object v2, v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    const/16 v5, 0x39

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    .line 80
    const-wide/16 v14, 0x0

    .line 81
    .line 82
    const-wide/16 v20, 0x0

    .line 83
    .line 84
    const-wide/16 v22, 0x0

    .line 85
    .line 86
    const/16 v25, 0x0

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v27, 0x0

    .line 91
    .line 92
    move/from16 v6, p2

    .line 93
    .line 94
    move/from16 v9, p1

    .line 95
    .line 96
    move/from16 v10, p3

    .line 97
    .line 98
    move/from16 v24, p6

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 102
    return-void
.end method

.method public DTRSM(IIIIDLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p7

    .line 5
    .line 6
    move-object/from16 v2, p8

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    move/from16 v10, p1

    .line 21
    .line 22
    move/from16 v8, p3

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 29
    move-result v30

    .line 30
    .line 31
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 35
    move-result-wide v3

    .line 36
    .line 37
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    if-eqz v30, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 47
    move-result-wide v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v18, v3

    .line 54
    .line 55
    move-wide/from16 v20, v5

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x7c

    .line 65
    const/4 v9, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 73
    move-result v13

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 81
    move-result v14

    .line 82
    const/4 v15, 0x0

    .line 83
    .line 84
    const-wide/16 v22, 0x0

    .line 85
    .line 86
    const-wide/16 v24, 0x0

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v27, 0x0

    .line 91
    .line 92
    const/16 v28, 0x0

    .line 93
    .line 94
    const/16 v29, 0x0

    .line 95
    .line 96
    move/from16 v8, p3

    .line 97
    .line 98
    move/from16 v10, p1

    .line 99
    .line 100
    move/from16 v11, p2

    .line 101
    .line 102
    move/from16 v12, p4

    .line 103
    .line 104
    move-wide/from16 v16, p5

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v4 .. v30}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 108
    return-void
.end method

.method public DTRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v28

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v28, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    :cond_0
    move-wide/from16 v16, v1

    .line 64
    .line 65
    move-wide/from16 v18, v3

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    move-object v2, v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    const/16 v5, 0x3c

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    .line 80
    const-wide/16 v14, 0x0

    .line 81
    .line 82
    const-wide/16 v20, 0x0

    .line 83
    .line 84
    const-wide/16 v22, 0x0

    .line 85
    .line 86
    const/16 v25, 0x0

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v27, 0x0

    .line 91
    .line 92
    move/from16 v6, p2

    .line 93
    .line 94
    move/from16 v9, p1

    .line 95
    .line 96
    move/from16 v10, p3

    .line 97
    .line 98
    move/from16 v24, p6

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v2 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 102
    return-void
.end method

.method public SGBMV(IIIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    move-object/from16 v10, p9

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p5

    .line 19
    .line 20
    move-object/from16 v4, p6

    .line 21
    .line 22
    move/from16 v5, p7

    .line 23
    .line 24
    move-object/from16 v6, p9

    .line 25
    .line 26
    move/from16 v7, p10

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    if-ltz p2, :cond_1

    .line 32
    .line 33
    if-ltz p3, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 41
    move-result v11

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 49
    move-result v12

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 53
    move-result v26

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v5

    .line 72
    .line 73
    if-eqz v26, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 85
    move-result-wide v5

    .line 86
    :cond_0
    move-wide v15, v1

    .line 87
    .line 88
    move-wide/from16 v17, v3

    .line 89
    .line 90
    move-wide/from16 v20, v5

    .line 91
    .line 92
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 93
    move-object v2, v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 97
    move-result-wide v3

    .line 98
    .line 99
    const/16 v5, 0x30

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    .line 106
    move/from16 v6, p1

    .line 107
    .line 108
    move/from16 v14, p4

    .line 109
    .line 110
    move/from16 v19, p8

    .line 111
    .line 112
    move/from16 v22, p7

    .line 113
    .line 114
    move/from16 v23, p10

    .line 115
    .line 116
    move/from16 v24, p2

    .line 117
    .line 118
    move/from16 v25, p3

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 122
    return-void

    .line 123
    .line 124
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 125
    .line 126
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v1
.end method

.method public SGEMM(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p7

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 20
    move-result-object v1

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    move/from16 v2, p1

    .line 24
    .line 25
    move/from16 v3, p2

    .line 26
    .line 27
    move-object/from16 v5, p4

    .line 28
    .line 29
    move-object/from16 v6, p5

    .line 30
    .line 31
    move-object/from16 v7, p7

    .line 32
    .line 33
    .line 34
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 35
    .line 36
    const/16 v1, 0x6f

    .line 37
    .line 38
    move/from16 v6, p1

    .line 39
    .line 40
    if-eq v6, v1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 56
    move-result v3

    .line 57
    .line 58
    :goto_0
    move/from16 v7, p2

    .line 59
    move v11, v2

    .line 60
    move v13, v3

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    .line 77
    move-result v3

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :goto_1
    if-eq v7, v1, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 88
    move-result v1

    .line 89
    :goto_2
    move v12, v1

    .line 90
    goto :goto_3

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 98
    move-result v1

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 103
    move-result v26

    .line 104
    .line 105
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 109
    move-result-wide v1

    .line 110
    .line 111
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 115
    move-result-wide v3

    .line 116
    .line 117
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 121
    move-result-wide v14

    .line 122
    .line 123
    if-eqz v26, :cond_2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 127
    move-result-wide v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 131
    move-result-wide v3

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 135
    move-result-wide v8

    .line 136
    move-wide v15, v1

    .line 137
    .line 138
    move-wide/from16 v17, v3

    .line 139
    .line 140
    move-wide/from16 v20, v8

    .line 141
    goto :goto_4

    .line 142
    .line 143
    :cond_2
    move-wide/from16 v17, v3

    .line 144
    .line 145
    move-wide/from16 v20, v14

    .line 146
    move-wide v15, v1

    .line 147
    .line 148
    :goto_4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 149
    move-object v2, v1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 153
    move-result-wide v3

    .line 154
    .line 155
    const/16 v5, 0x71

    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v10, 0x0

    .line 159
    .line 160
    const/16 v22, 0x0

    .line 161
    .line 162
    const/16 v23, 0x0

    .line 163
    .line 164
    const/16 v24, 0x0

    .line 165
    .line 166
    const/16 v25, 0x0

    .line 167
    .line 168
    move/from16 v6, p1

    .line 169
    .line 170
    move/from16 v7, p2

    .line 171
    .line 172
    move/from16 v14, p3

    .line 173
    .line 174
    move/from16 v19, p6

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 178
    return-void
.end method

.method public SGEMV(IFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p7

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p7

    .line 25
    .line 26
    move/from16 v7, p8

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v11

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 45
    move-result v12

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v26

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v1

    .line 56
    .line 57
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v5

    .line 68
    .line 69
    if-eqz v26, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v5

    .line 82
    :cond_0
    move-wide v15, v1

    .line 83
    .line 84
    move-wide/from16 v17, v3

    .line 85
    .line 86
    move-wide/from16 v20, v5

    .line 87
    .line 88
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 89
    move-object v2, v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 93
    move-result-wide v3

    .line 94
    .line 95
    const/16 v5, 0x2f

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v13, 0x0

    .line 101
    .line 102
    const/16 v24, 0x0

    .line 103
    .line 104
    const/16 v25, 0x0

    .line 105
    .line 106
    move/from16 v6, p1

    .line 107
    .line 108
    move/from16 v14, p2

    .line 109
    .line 110
    move/from16 v19, p6

    .line 111
    .line 112
    move/from16 v22, p5

    .line 113
    .line 114
    move/from16 v23, p8

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 118
    return-void
.end method

.method public SGER(FLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p2

    .line 5
    .line 6
    move-object/from16 v8, p4

    .line 7
    .line 8
    move-object/from16 v9, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 16
    move-result v11

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 24
    move-result v12

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    move-object/from16 v2, p2

    .line 33
    .line 34
    move/from16 v3, p3

    .line 35
    .line 36
    move-object/from16 v4, p4

    .line 37
    .line 38
    move/from16 v5, p5

    .line 39
    .line 40
    move-object/from16 v6, p6

    .line 41
    .line 42
    .line 43
    invoke-static/range {v1 .. v6}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 47
    move-result v26

    .line 48
    .line 49
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v1

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v3

    .line 60
    .line 61
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v5

    .line 66
    .line 67
    if-eqz v26, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 71
    move-result-wide v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v7}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 75
    move-result-wide v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 79
    move-result-wide v5

    .line 80
    .line 81
    :cond_0
    move-wide/from16 v20, v1

    .line 82
    move-wide v15, v3

    .line 83
    .line 84
    move-wide/from16 v17, v5

    .line 85
    .line 86
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 87
    move-object v2, v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 91
    move-result-wide v3

    .line 92
    .line 93
    const/16 v5, 0x52

    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v13, 0x0

    .line 100
    .line 101
    const/16 v19, 0x0

    .line 102
    .line 103
    const/16 v24, 0x0

    .line 104
    .line 105
    const/16 v25, 0x0

    .line 106
    .line 107
    move/from16 v14, p1

    .line 108
    .line 109
    move/from16 v22, p3

    .line 110
    .line 111
    move/from16 v23, p5

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 115
    return-void
.end method

.method public SSBMV(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 26

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p8

    .line 9
    .line 10
    if-ltz p2, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    move/from16 v2, p1

    .line 19
    .line 20
    move-object/from16 v3, p4

    .line 21
    .line 22
    move-object/from16 v4, p5

    .line 23
    .line 24
    move-object/from16 v5, p8

    .line 25
    .line 26
    move/from16 v6, p6

    .line 27
    .line 28
    move/from16 v7, p9

    .line 29
    .line 30
    .line 31
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    .line 32
    move-result v11

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 36
    move-result v25

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v1

    .line 43
    .line 44
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v3

    .line 49
    .line 50
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 54
    move-result-wide v5

    .line 55
    .line 56
    if-eqz v25, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 60
    move-result-wide v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v5

    .line 69
    :cond_0
    move-wide v14, v1

    .line 70
    .line 71
    move-wide/from16 v16, v3

    .line 72
    .line 73
    move-wide/from16 v19, v5

    .line 74
    .line 75
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 76
    move-object v1, v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 80
    move-result-wide v2

    .line 81
    .line 82
    const/16 v4, 0x50

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    .line 89
    const/16 v23, 0x0

    .line 90
    .line 91
    const/16 v24, 0x0

    .line 92
    .line 93
    move/from16 v8, p1

    .line 94
    .line 95
    move/from16 v12, p2

    .line 96
    .line 97
    move/from16 v13, p3

    .line 98
    .line 99
    move/from16 v18, p7

    .line 100
    .line 101
    move/from16 v21, p6

    .line 102
    .line 103
    move/from16 v22, p9

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {v1 .. v25}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 107
    return-void

    .line 108
    .line 109
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 110
    .line 111
    const-string v2, "K must be greater than or equal to 0"

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    throw v1
.end method

.method public SSPMV(IFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p7

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p7

    .line 25
    .line 26
    move/from16 v7, p8

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v26

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v26, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    :cond_0
    move-wide v15, v1

    .line 68
    .line 69
    move-wide/from16 v17, v3

    .line 70
    .line 71
    move-wide/from16 v20, v5

    .line 72
    .line 73
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 74
    move-object v2, v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 78
    move-result-wide v3

    .line 79
    .line 80
    const/16 v5, 0x51

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    .line 88
    const/16 v24, 0x0

    .line 89
    .line 90
    const/16 v25, 0x0

    .line 91
    .line 92
    move/from16 v9, p1

    .line 93
    .line 94
    move/from16 v14, p2

    .line 95
    .line 96
    move/from16 v19, p6

    .line 97
    .line 98
    move/from16 v22, p5

    .line 99
    .line 100
    move/from16 v23, p8

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 104
    return-void
.end method

.method public SSPR(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p4

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v28

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v28, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v17, v1

    .line 49
    .line 50
    move-wide/from16 v19, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v19, v4

    .line 54
    .line 55
    move-wide/from16 v17, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x54

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const/16 v21, 0x0

    .line 73
    .line 74
    const-wide/16 v22, 0x0

    .line 75
    .line 76
    const/16 v25, 0x0

    .line 77
    .line 78
    const/16 v26, 0x0

    .line 79
    .line 80
    const/16 v27, 0x0

    .line 81
    .line 82
    move/from16 v11, p1

    .line 83
    move v14, v3

    .line 84
    .line 85
    move/from16 v16, p2

    .line 86
    .line 87
    move/from16 v24, p4

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 91
    return-void
.end method

.method public SSPR2(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p7

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move/from16 v4, p4

    .line 21
    .line 22
    move-object/from16 v5, p5

    .line 23
    .line 24
    move/from16 v6, p6

    .line 25
    .line 26
    move-object/from16 v7, p7

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v26

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v26, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    .line 68
    :cond_0
    move-wide/from16 v20, v1

    .line 69
    move-wide v15, v3

    .line 70
    .line 71
    move-wide/from16 v17, v5

    .line 72
    .line 73
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 74
    move-object v2, v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 78
    move-result-wide v3

    .line 79
    .line 80
    const/16 v5, 0x56

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    .line 88
    const/16 v19, 0x0

    .line 89
    .line 90
    const/16 v24, 0x0

    .line 91
    .line 92
    const/16 v25, 0x0

    .line 93
    .line 94
    move/from16 v9, p1

    .line 95
    .line 96
    move/from16 v14, p2

    .line 97
    .line 98
    move/from16 v22, p4

    .line 99
    .line 100
    move/from16 v23, p6

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 104
    return-void
.end method

.method public SSYMM(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 36

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p7

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 30
    move-result v2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    move/from16 v4, p1

    .line 43
    .line 44
    move-object/from16 v5, p4

    .line 45
    .line 46
    move-object/from16 v6, p5

    .line 47
    .line 48
    move-object/from16 v7, p7

    .line 49
    .line 50
    .line 51
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 55
    move-result v35

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v1

    .line 62
    .line 63
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v3

    .line 68
    .line 69
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 73
    move-result-wide v5

    .line 74
    .line 75
    if-eqz v35, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 79
    move-result-wide v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 83
    move-result-wide v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 87
    move-result-wide v5

    .line 88
    .line 89
    :cond_0
    move-wide/from16 v24, v1

    .line 90
    .line 91
    move-wide/from16 v26, v3

    .line 92
    .line 93
    move-wide/from16 v29, v5

    .line 94
    .line 95
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 96
    move-object v11, v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 100
    move-result-wide v12

    .line 101
    .line 102
    const/16 v14, 0x72

    .line 103
    const/4 v15, 0x0

    .line 104
    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 115
    move-result v20

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 123
    move-result v21

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    const/16 v31, 0x0

    .line 128
    .line 129
    const/16 v32, 0x0

    .line 130
    .line 131
    const/16 v33, 0x0

    .line 132
    .line 133
    const/16 v34, 0x0

    .line 134
    .line 135
    move/from16 v17, p1

    .line 136
    .line 137
    move/from16 v18, p2

    .line 138
    .line 139
    move/from16 v23, p3

    .line 140
    .line 141
    move/from16 v28, p6

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {v11 .. v35}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 145
    return-void

    .line 146
    .line 147
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 148
    .line 149
    const-string v2, "Matrix A is not symmetric"

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    throw v1
.end method

.method public SSYMV(IFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;IFLandroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p7

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move-object/from16 v5, p7

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p8

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;II)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v26

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v26, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    :cond_0
    move-wide v15, v1

    .line 68
    .line 69
    move-wide/from16 v17, v3

    .line 70
    .line 71
    move-wide/from16 v20, v5

    .line 72
    .line 73
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 74
    move-object v2, v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 78
    move-result-wide v3

    .line 79
    .line 80
    const/16 v5, 0x4f

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    .line 88
    const/16 v24, 0x0

    .line 89
    .line 90
    const/16 v25, 0x0

    .line 91
    .line 92
    move/from16 v9, p1

    .line 93
    .line 94
    move/from16 v14, p2

    .line 95
    .line 96
    move/from16 v19, p6

    .line 97
    .line 98
    move/from16 v22, p5

    .line 99
    .line 100
    move/from16 v23, p8

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 104
    return-void
.end method

.method public SSYR(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p4

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v28

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v28, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v17, v1

    .line 49
    .line 50
    move-wide/from16 v19, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v19, v4

    .line 54
    .line 55
    move-wide/from16 v17, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x53

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const/16 v21, 0x0

    .line 73
    .line 74
    const-wide/16 v22, 0x0

    .line 75
    .line 76
    const/16 v25, 0x0

    .line 77
    .line 78
    const/16 v26, 0x0

    .line 79
    .line 80
    const/16 v27, 0x0

    .line 81
    .line 82
    move/from16 v11, p1

    .line 83
    move v14, v3

    .line 84
    .line 85
    move/from16 v16, p2

    .line 86
    .line 87
    move/from16 v24, p4

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 91
    return-void
.end method

.method public SSYR2(IFLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p7

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p3

    .line 19
    .line 20
    move/from16 v4, p4

    .line 21
    .line 22
    move-object/from16 v5, p5

    .line 23
    .line 24
    move/from16 v6, p6

    .line 25
    .line 26
    move-object/from16 v7, p7

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 30
    move-result v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 34
    move-result v26

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    if-eqz v26, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v5

    .line 67
    .line 68
    :cond_0
    move-wide/from16 v20, v1

    .line 69
    move-wide v15, v3

    .line 70
    .line 71
    move-wide/from16 v17, v5

    .line 72
    .line 73
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 74
    move-object v2, v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 78
    move-result-wide v3

    .line 79
    .line 80
    const/16 v5, 0x55

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    .line 88
    const/16 v19, 0x0

    .line 89
    .line 90
    const/16 v24, 0x0

    .line 91
    .line 92
    const/16 v25, 0x0

    .line 93
    .line 94
    move/from16 v9, p1

    .line 95
    .line 96
    move/from16 v14, p2

    .line 97
    .line 98
    move/from16 v22, p4

    .line 99
    .line 100
    move/from16 v23, p6

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 104
    return-void
.end method

.method public SSYR2K(IIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 26

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v1, p4

    .line 7
    .line 8
    move-object/from16 v2, p5

    .line 9
    .line 10
    move-object/from16 v8, p7

    .line 11
    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 14
    .line 15
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v5, v1, v2, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 23
    .line 24
    const/16 v3, 0x6f

    .line 25
    .line 26
    if-eq v5, v3, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 34
    move-result v3

    .line 35
    :goto_0
    move v12, v3

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v25

    .line 50
    .line 51
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v3

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v6

    .line 62
    .line 63
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v9

    .line 68
    .line 69
    if-eqz v25, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v6

    .line 82
    .line 83
    move-wide/from16 v16, v1

    .line 84
    move-wide v14, v3

    .line 85
    .line 86
    move-wide/from16 v19, v6

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    move-wide v14, v3

    .line 89
    .line 90
    move-wide/from16 v16, v6

    .line 91
    .line 92
    move-wide/from16 v19, v9

    .line 93
    .line 94
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 95
    move-object v1, v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 99
    move-result-wide v2

    .line 100
    .line 101
    const/16 v4, 0x74

    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 109
    move-result-object v8

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    .line 113
    move-result v11

    .line 114
    .line 115
    const/16 v21, 0x0

    .line 116
    .line 117
    const/16 v22, 0x0

    .line 118
    .line 119
    const/16 v23, 0x0

    .line 120
    .line 121
    const/16 v24, 0x0

    .line 122
    .line 123
    move/from16 v5, p2

    .line 124
    .line 125
    move/from16 v8, p1

    .line 126
    .line 127
    move/from16 v13, p3

    .line 128
    .line 129
    move/from16 v18, p6

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {v1 .. v25}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 133
    return-void
.end method

.method public SSYRK(IIFLandroidx/renderscript/Allocation;FLandroidx/renderscript/Allocation;)V
    .locals 35

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    .line 23
    move/from16 v2, p2

    .line 24
    .line 25
    move-object/from16 v5, p4

    .line 26
    .line 27
    move-object/from16 v7, p6

    .line 28
    .line 29
    .line 30
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 31
    .line 32
    const/16 v1, 0x6f

    .line 33
    .line 34
    if-eq v2, v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 42
    move-result v1

    .line 43
    .line 44
    :goto_0
    move/from16 v21, v1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 53
    move-result v1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 58
    move-result v34

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 70
    move-result-wide v5

    .line 71
    .line 72
    if-eqz v34, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 76
    move-result-wide v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 80
    move-result-wide v5

    .line 81
    .line 82
    :cond_1
    move-wide/from16 v23, v3

    .line 83
    .line 84
    move-wide/from16 v28, v5

    .line 85
    .line 86
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 87
    move-object v10, v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 91
    move-result-wide v11

    .line 92
    .line 93
    const/16 v13, 0x73

    .line 94
    const/4 v15, 0x0

    .line 95
    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const/16 v18, 0x0

    .line 99
    .line 100
    const/16 v19, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 108
    move-result v20

    .line 109
    .line 110
    const-wide/16 v25, 0x0

    .line 111
    .line 112
    const/16 v30, 0x0

    .line 113
    .line 114
    const/16 v31, 0x0

    .line 115
    .line 116
    const/16 v32, 0x0

    .line 117
    .line 118
    const/16 v33, 0x0

    .line 119
    .line 120
    move/from16 v14, p2

    .line 121
    .line 122
    move/from16 v17, p1

    .line 123
    .line 124
    move/from16 v22, p3

    .line 125
    .line 126
    move/from16 v27, p5

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {v10 .. v34}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 130
    return-void
.end method

.method public STBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 26

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    if-ltz p4, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    move/from16 v7, p7

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v11

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v25

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v25, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    :cond_0
    move-wide v14, v1

    .line 65
    .line 66
    move-wide/from16 v16, v3

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 69
    move-object v1, v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 73
    move-result-wide v2

    .line 74
    .line 75
    const/16 v4, 0x32

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    const-wide/16 v19, 0x0

    .line 84
    .line 85
    const/16 v22, 0x0

    .line 86
    .line 87
    const/16 v23, 0x0

    .line 88
    .line 89
    const/16 v24, 0x0

    .line 90
    .line 91
    move/from16 v5, p2

    .line 92
    .line 93
    move/from16 v8, p1

    .line 94
    .line 95
    move/from16 v9, p3

    .line 96
    .line 97
    move/from16 v12, p4

    .line 98
    .line 99
    move/from16 v21, p7

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v1 .. v25}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 103
    return-void

    .line 104
    .line 105
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 106
    .line 107
    const-string v2, "K must be greater than or equal to 0"

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v1
.end method

.method public STBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p5

    .line 21
    .line 22
    move-object/from16 v6, p6

    .line 23
    .line 24
    move/from16 v7, p7

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    if-ltz p4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v26

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v26, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    :cond_0
    move-wide v15, v1

    .line 65
    .line 66
    move-wide/from16 v17, v3

    .line 67
    .line 68
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 69
    move-object v2, v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    const/16 v5, 0x35

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    .line 81
    const/16 v19, 0x0

    .line 82
    .line 83
    const-wide/16 v20, 0x0

    .line 84
    .line 85
    const/16 v23, 0x0

    .line 86
    .line 87
    const/16 v24, 0x0

    .line 88
    .line 89
    const/16 v25, 0x0

    .line 90
    .line 91
    move/from16 v6, p2

    .line 92
    .line 93
    move/from16 v9, p1

    .line 94
    .line 95
    move/from16 v10, p3

    .line 96
    .line 97
    move/from16 v13, p4

    .line 98
    .line 99
    move/from16 v22, p7

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 103
    return-void

    .line 104
    .line 105
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 106
    .line 107
    const-string v2, "Number of diagonals must be positive"

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v1
.end method

.method public STPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v26

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v26, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    :cond_0
    move-wide v15, v1

    .line 56
    .line 57
    move-wide/from16 v17, v3

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    move-object v2, v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    const/16 v5, 0x33

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    .line 73
    const/16 v19, 0x0

    .line 74
    .line 75
    const-wide/16 v20, 0x0

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    const/16 v24, 0x0

    .line 80
    .line 81
    const/16 v25, 0x0

    .line 82
    .line 83
    move/from16 v6, p2

    .line 84
    .line 85
    move/from16 v9, p1

    .line 86
    .line 87
    move/from16 v10, p3

    .line 88
    .line 89
    move/from16 v22, p6

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 93
    return-void
.end method

.method public STPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v26

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v26, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    :cond_0
    move-wide v15, v1

    .line 56
    .line 57
    move-wide/from16 v17, v3

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    move-object v2, v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    const/16 v5, 0x36

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    .line 73
    const/16 v19, 0x0

    .line 74
    .line 75
    const-wide/16 v20, 0x0

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    const/16 v24, 0x0

    .line 80
    .line 81
    const/16 v25, 0x0

    .line 82
    .line 83
    move/from16 v6, p2

    .line 84
    .line 85
    move/from16 v9, p1

    .line 86
    .line 87
    move/from16 v10, p3

    .line 88
    .line 89
    move/from16 v22, p6

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 93
    return-void
.end method

.method public STRMM(IIIIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p6

    .line 5
    .line 6
    move-object/from16 v2, p7

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    move/from16 v10, p1

    .line 21
    .line 22
    move/from16 v8, p3

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 29
    move-result v28

    .line 30
    .line 31
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 35
    move-result-wide v3

    .line 36
    .line 37
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    if-eqz v28, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 47
    move-result-wide v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v17, v3

    .line 54
    .line 55
    move-wide/from16 v19, v5

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x75

    .line 65
    const/4 v9, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 73
    move-result v13

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 81
    move-result v14

    .line 82
    const/4 v15, 0x0

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    const-wide/16 v22, 0x0

    .line 87
    .line 88
    const/16 v24, 0x0

    .line 89
    .line 90
    const/16 v25, 0x0

    .line 91
    .line 92
    const/16 v26, 0x0

    .line 93
    .line 94
    const/16 v27, 0x0

    .line 95
    .line 96
    move/from16 v8, p3

    .line 97
    .line 98
    move/from16 v10, p1

    .line 99
    .line 100
    move/from16 v11, p2

    .line 101
    .line 102
    move/from16 v12, p4

    .line 103
    .line 104
    move/from16 v16, p5

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 108
    return-void
.end method

.method public STRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v26

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v26, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    :cond_0
    move-wide v15, v1

    .line 63
    .line 64
    move-wide/from16 v17, v3

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 67
    move-object v2, v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v3

    .line 72
    .line 73
    const/16 v5, 0x31

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v14, 0x0

    .line 79
    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    const-wide/16 v20, 0x0

    .line 83
    .line 84
    const/16 v23, 0x0

    .line 85
    .line 86
    const/16 v24, 0x0

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    move/from16 v6, p2

    .line 91
    .line 92
    move/from16 v9, p1

    .line 93
    .line 94
    move/from16 v10, p3

    .line 95
    .line 96
    move/from16 v22, p6

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 100
    return-void
.end method

.method public STRSM(IIIIFLandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 29

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p6

    .line 5
    .line 6
    move-object/from16 v2, p7

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    move/from16 v10, p1

    .line 21
    .line 22
    move/from16 v8, p3

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v10, v8, v1, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 29
    move-result v28

    .line 30
    .line 31
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 35
    move-result-wide v3

    .line 36
    .line 37
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    if-eqz v28, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 47
    move-result-wide v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v17, v3

    .line 54
    .line 55
    move-wide/from16 v19, v5

    .line 56
    .line 57
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x76

    .line 65
    const/4 v9, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 73
    move-result v13

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 81
    move-result v14

    .line 82
    const/4 v15, 0x0

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    const-wide/16 v22, 0x0

    .line 87
    .line 88
    const/16 v24, 0x0

    .line 89
    .line 90
    const/16 v25, 0x0

    .line 91
    .line 92
    const/16 v26, 0x0

    .line 93
    .line 94
    const/16 v27, 0x0

    .line 95
    .line 96
    move/from16 v8, p3

    .line 97
    .line 98
    move/from16 v10, p1

    .line 99
    .line 100
    move/from16 v11, p2

    .line 101
    .line 102
    move/from16 v12, p4

    .line 103
    .line 104
    move/from16 v16, p5

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v4 .. v28}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 108
    return-void
.end method

.method public STRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v26

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v26, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    :cond_0
    move-wide v15, v1

    .line 63
    .line 64
    move-wide/from16 v17, v3

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 67
    move-object v2, v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v3

    .line 72
    .line 73
    const/16 v5, 0x34

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v14, 0x0

    .line 79
    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    const-wide/16 v20, 0x0

    .line 83
    .line 84
    const/16 v23, 0x0

    .line 85
    .line 86
    const/16 v24, 0x0

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    move/from16 v6, p2

    .line 91
    .line 92
    move/from16 v9, p1

    .line 93
    .line 94
    move/from16 v10, p3

    .line 95
    .line 96
    move/from16 v22, p6

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {v2 .. v26}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 100
    return-void
.end method

.method public ZGBMV(IIILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p6

    .line 9
    .line 10
    move-object/from16 v11, p8

    .line 11
    .line 12
    move-object/from16 v12, p9

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p5

    .line 23
    .line 24
    move-object/from16 v5, p6

    .line 25
    .line 26
    move/from16 v6, p7

    .line 27
    .line 28
    move-object/from16 v7, p9

    .line 29
    .line 30
    move/from16 v8, p10

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 34
    .line 35
    if-ltz p2, :cond_1

    .line 36
    .line 37
    if-ltz p3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 45
    move-result v21

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 53
    move-result v22

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 57
    move-result v42

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 63
    move-result-wide v2

    .line 64
    .line 65
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 69
    move-result-wide v4

    .line 70
    .line 71
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 75
    move-result-wide v6

    .line 76
    .line 77
    if-eqz v42, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 85
    move-result-wide v4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 89
    move-result-wide v6

    .line 90
    .line 91
    :cond_0
    move-wide/from16 v28, v2

    .line 92
    .line 93
    move-wide/from16 v30, v4

    .line 94
    .line 95
    move-wide/from16 v36, v6

    .line 96
    .line 97
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 98
    move-object v12, v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 102
    move-result-wide v13

    .line 103
    .line 104
    const/16 v15, 0x48

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    const/16 v18, 0x0

    .line 109
    .line 110
    const/16 v19, 0x0

    .line 111
    .line 112
    const/16 v20, 0x0

    .line 113
    .line 114
    const/16 v23, 0x0

    .line 115
    .line 116
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 117
    .line 118
    move-wide/from16 v24, v2

    .line 119
    .line 120
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 121
    .line 122
    move-wide/from16 v26, v1

    .line 123
    .line 124
    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    .line 125
    .line 126
    move-wide/from16 v32, v1

    .line 127
    .line 128
    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    .line 129
    .line 130
    move-wide/from16 v34, v1

    .line 131
    .line 132
    move/from16 v16, p1

    .line 133
    .line 134
    move/from16 v38, p7

    .line 135
    .line 136
    move/from16 v39, p10

    .line 137
    .line 138
    move/from16 v40, p2

    .line 139
    .line 140
    move/from16 v41, p3

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 144
    return-void

    .line 145
    .line 146
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 147
    .line 148
    const-string v2, "KL and KU must be greater than or equal to 0"

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    throw v1
.end method

.method public ZGEMM(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 43

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 16
    .line 17
    .line 18
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 24
    move-result-object v2

    .line 25
    const/4 v5, 0x0

    .line 26
    .line 27
    move/from16 v3, p1

    .line 28
    .line 29
    move/from16 v4, p2

    .line 30
    .line 31
    move-object/from16 v6, p4

    .line 32
    .line 33
    move-object/from16 v7, p5

    .line 34
    .line 35
    move-object/from16 v8, p7

    .line 36
    .line 37
    .line 38
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 39
    .line 40
    const/16 v2, 0x6f

    .line 41
    .line 42
    if-eq v3, v2, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getX()I

    .line 50
    move-result v4

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getY()I

    .line 58
    move-result v5

    .line 59
    .line 60
    :goto_0
    move/from16 v21, v4

    .line 61
    .line 62
    move/from16 v23, v5

    .line 63
    .line 64
    move/from16 v4, p2

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getY()I

    .line 73
    move-result v4

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getX()I

    .line 81
    move-result v5

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :goto_1
    if-eq v4, v2, :cond_1

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 92
    move-result v2

    .line 93
    .line 94
    :goto_2
    move/from16 v22, v2

    .line 95
    goto :goto_3

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 103
    move-result v2

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 108
    move-result v42

    .line 109
    .line 110
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 114
    move-result-wide v5

    .line 115
    .line 116
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 120
    move-result-wide v7

    .line 121
    .line 122
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 126
    move-result-wide v13

    .line 127
    .line 128
    if-eqz v42, :cond_2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 132
    move-result-wide v5

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 136
    move-result-wide v7

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 140
    move-result-wide v9

    .line 141
    .line 142
    move-wide/from16 v28, v5

    .line 143
    .line 144
    move-wide/from16 v30, v7

    .line 145
    .line 146
    move-wide/from16 v36, v9

    .line 147
    goto :goto_4

    .line 148
    .line 149
    :cond_2
    move-wide/from16 v28, v5

    .line 150
    .line 151
    move-wide/from16 v30, v7

    .line 152
    .line 153
    move-wide/from16 v36, v13

    .line 154
    .line 155
    :goto_4
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 156
    move-object v12, v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 160
    move-result-wide v13

    .line 161
    .line 162
    const/16 v15, 0x83

    .line 163
    .line 164
    const/16 v18, 0x0

    .line 165
    .line 166
    const/16 v19, 0x0

    .line 167
    .line 168
    const/16 v20, 0x0

    .line 169
    .line 170
    iget-wide v5, v1, Landroidx/renderscript/Double2;->x:D

    .line 171
    .line 172
    move-wide/from16 v24, v5

    .line 173
    .line 174
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 175
    .line 176
    move-wide/from16 v26, v1

    .line 177
    .line 178
    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    .line 179
    .line 180
    move-wide/from16 v32, v1

    .line 181
    .line 182
    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    .line 183
    .line 184
    move-wide/from16 v34, v1

    .line 185
    .line 186
    const/16 v38, 0x0

    .line 187
    .line 188
    const/16 v39, 0x0

    .line 189
    .line 190
    const/16 v40, 0x0

    .line 191
    .line 192
    const/16 v41, 0x0

    .line 193
    .line 194
    move/from16 v16, p1

    .line 195
    .line 196
    move/from16 v17, p2

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 200
    return-void
.end method

.method public ZGEMV(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p3

    .line 23
    .line 24
    move-object/from16 v5, p4

    .line 25
    .line 26
    move/from16 v6, p5

    .line 27
    .line 28
    move-object/from16 v7, p7

    .line 29
    .line 30
    move/from16 v8, p8

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 41
    move-result v21

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p3 .. p3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 49
    move-result v22

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 53
    move-result v42

    .line 54
    .line 55
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v2

    .line 60
    .line 61
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v4

    .line 66
    .line 67
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v6

    .line 72
    .line 73
    if-eqz v42, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 85
    move-result-wide v6

    .line 86
    .line 87
    :cond_0
    move-wide/from16 v28, v2

    .line 88
    .line 89
    move-wide/from16 v30, v4

    .line 90
    .line 91
    move-wide/from16 v36, v6

    .line 92
    .line 93
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 94
    move-object v12, v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 98
    move-result-wide v13

    .line 99
    .line 100
    const/16 v15, 0x47

    .line 101
    .line 102
    const/16 v17, 0x0

    .line 103
    .line 104
    const/16 v18, 0x0

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    const/16 v20, 0x0

    .line 109
    .line 110
    const/16 v23, 0x0

    .line 111
    .line 112
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 113
    .line 114
    move-wide/from16 v24, v2

    .line 115
    .line 116
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 117
    .line 118
    move-wide/from16 v26, v1

    .line 119
    .line 120
    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    .line 121
    .line 122
    move-wide/from16 v32, v1

    .line 123
    .line 124
    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    .line 125
    .line 126
    move-wide/from16 v34, v1

    .line 127
    .line 128
    const/16 v40, 0x0

    .line 129
    .line 130
    const/16 v41, 0x0

    .line 131
    .line 132
    move/from16 v16, p1

    .line 133
    .line 134
    move/from16 v38, p5

    .line 135
    .line 136
    move/from16 v39, p8

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 140
    return-void
.end method

.method public ZGERC(Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v9, p4

    .line 9
    .line 10
    move-object/from16 v10, p6

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move-object/from16 v7, p6

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v12

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 45
    move-result v13

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v33

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v2

    .line 56
    .line 57
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v6

    .line 68
    .line 69
    if-eqz v33, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v6

    .line 82
    .line 83
    :cond_0
    move-wide/from16 v27, v2

    .line 84
    .line 85
    move-wide/from16 v19, v4

    .line 86
    .line 87
    move-wide/from16 v21, v6

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 90
    move-object v3, v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 94
    move-result-wide v4

    .line 95
    .line 96
    const/16 v6, 0x6c

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v14, 0x0

    .line 103
    .line 104
    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    .line 105
    move-wide v15, v6

    .line 106
    .line 107
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 108
    .line 109
    move-wide/from16 v17, v1

    .line 110
    .line 111
    const-wide/16 v23, 0x0

    .line 112
    .line 113
    const-wide/16 v25, 0x0

    .line 114
    .line 115
    const/16 v31, 0x0

    .line 116
    .line 117
    const/16 v32, 0x0

    .line 118
    .line 119
    move/from16 v29, p3

    .line 120
    .line 121
    move/from16 v30, p5

    .line 122
    .line 123
    const/16 v6, 0x6c

    .line 124
    const/4 v7, 0x0

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 128
    return-void
.end method

.method public ZGERU(Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v9, p4

    .line 9
    .line 10
    move-object/from16 v10, p6

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move-object/from16 v7, p6

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroidx/renderscript/Element;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v12

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 45
    move-result v13

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 49
    move-result v33

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 55
    move-result-wide v2

    .line 56
    .line 57
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 67
    move-result-wide v6

    .line 68
    .line 69
    if-eqz v33, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 73
    move-result-wide v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 77
    move-result-wide v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 81
    move-result-wide v6

    .line 82
    .line 83
    :cond_0
    move-wide/from16 v27, v2

    .line 84
    .line 85
    move-wide/from16 v19, v4

    .line 86
    .line 87
    move-wide/from16 v21, v6

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 90
    move-object v3, v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 94
    move-result-wide v4

    .line 95
    .line 96
    const/16 v6, 0x6b

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v14, 0x0

    .line 103
    .line 104
    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    .line 105
    move-wide v15, v6

    .line 106
    .line 107
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 108
    .line 109
    move-wide/from16 v17, v1

    .line 110
    .line 111
    const-wide/16 v23, 0x0

    .line 112
    .line 113
    const-wide/16 v25, 0x0

    .line 114
    .line 115
    const/16 v31, 0x0

    .line 116
    .line 117
    const/16 v32, 0x0

    .line 118
    .line 119
    move/from16 v29, p3

    .line 120
    .line 121
    move/from16 v30, p5

    .line 122
    .line 123
    const/16 v6, 0x6b

    .line 124
    const/4 v7, 0x0

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 128
    return-void
.end method

.method public ZHBMV(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p7

    .line 11
    .line 12
    move-object/from16 v12, p8

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p5

    .line 23
    .line 24
    move/from16 v5, p6

    .line 25
    .line 26
    move-object/from16 v6, p8

    .line 27
    .line 28
    move/from16 v7, p9

    .line 29
    .line 30
    move-object/from16 v8, p4

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 34
    move-result v22

    .line 35
    .line 36
    if-ltz p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 40
    move-result v42

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 46
    move-result-wide v2

    .line 47
    .line 48
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 52
    move-result-wide v4

    .line 53
    .line 54
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 58
    move-result-wide v6

    .line 59
    .line 60
    if-eqz v42, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 72
    move-result-wide v6

    .line 73
    .line 74
    :cond_0
    move-wide/from16 v28, v2

    .line 75
    .line 76
    move-wide/from16 v30, v4

    .line 77
    .line 78
    move-wide/from16 v36, v6

    .line 79
    .line 80
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 81
    move-object v12, v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 85
    move-result-wide v13

    .line 86
    .line 87
    const/16 v15, 0x69

    .line 88
    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 100
    .line 101
    move-wide/from16 v24, v2

    .line 102
    .line 103
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 104
    .line 105
    move-wide/from16 v26, v1

    .line 106
    .line 107
    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    .line 108
    .line 109
    move-wide/from16 v32, v1

    .line 110
    .line 111
    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    .line 112
    .line 113
    move-wide/from16 v34, v1

    .line 114
    .line 115
    const/16 v40, 0x0

    .line 116
    .line 117
    const/16 v41, 0x0

    .line 118
    .line 119
    move/from16 v19, p1

    .line 120
    .line 121
    move/from16 v23, p2

    .line 122
    .line 123
    move/from16 v38, p6

    .line 124
    .line 125
    move/from16 v39, p9

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 129
    return-void

    .line 130
    .line 131
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 132
    .line 133
    const-string v2, "K must be 0 or greater for HBMV"

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    throw v1
.end method

.method public ZHEMM(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 38

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    move-object/from16 v3, p5

    .line 9
    .line 10
    move-object/from16 v4, p6

    .line 11
    .line 12
    move-object/from16 v5, p7

    .line 13
    .line 14
    .line 15
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 16
    .line 17
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 18
    .line 19
    .line 20
    invoke-static {v6}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 21
    move-result-object v6

    .line 22
    .line 23
    move/from16 v13, p1

    .line 24
    .line 25
    .line 26
    invoke-static {v6, v13, v2, v3, v5}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 30
    move-result v37

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v8

    .line 43
    .line 44
    iget-object v10, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v10

    .line 49
    .line 50
    if-eqz v37, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 58
    move-result-wide v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v8

    .line 63
    .line 64
    move-wide/from16 v25, v2

    .line 65
    .line 66
    move-wide/from16 v23, v6

    .line 67
    .line 68
    move-wide/from16 v31, v8

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_0
    move-wide/from16 v23, v6

    .line 72
    .line 73
    move-wide/from16 v25, v8

    .line 74
    .line 75
    move-wide/from16 v31, v10

    .line 76
    .line 77
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 78
    move-object v7, v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 82
    move-result-wide v8

    .line 83
    .line 84
    const/16 v10, 0x8c

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v15, 0x0

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 95
    move-result v16

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 103
    move-result v17

    .line 104
    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 108
    .line 109
    move-wide/from16 v19, v2

    .line 110
    .line 111
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 112
    .line 113
    move-wide/from16 v21, v1

    .line 114
    .line 115
    iget-wide v1, v4, Landroidx/renderscript/Double2;->x:D

    .line 116
    .line 117
    move-wide/from16 v27, v1

    .line 118
    .line 119
    iget-wide v1, v4, Landroidx/renderscript/Double2;->y:D

    .line 120
    .line 121
    move-wide/from16 v29, v1

    .line 122
    .line 123
    const/16 v33, 0x0

    .line 124
    .line 125
    const/16 v34, 0x0

    .line 126
    .line 127
    const/16 v35, 0x0

    .line 128
    .line 129
    const/16 v36, 0x0

    .line 130
    .line 131
    move/from16 v13, p1

    .line 132
    .line 133
    move/from16 v14, p2

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {v7 .. v37}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 137
    return-void
.end method

.method public ZHEMV(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p4

    .line 23
    .line 24
    move/from16 v5, p5

    .line 25
    .line 26
    move-object/from16 v6, p7

    .line 27
    .line 28
    move/from16 v7, p8

    .line 29
    .line 30
    move-object/from16 v8, p3

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 34
    move-result v22

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 38
    move-result v42

    .line 39
    .line 40
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v2

    .line 45
    .line 46
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 50
    move-result-wide v4

    .line 51
    .line 52
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 56
    move-result-wide v6

    .line 57
    .line 58
    if-eqz v42, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 70
    move-result-wide v6

    .line 71
    .line 72
    :cond_0
    move-wide/from16 v28, v2

    .line 73
    .line 74
    move-wide/from16 v30, v4

    .line 75
    .line 76
    move-wide/from16 v36, v6

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 79
    move-object v12, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 83
    move-result-wide v13

    .line 84
    .line 85
    const/16 v15, 0x68

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v20, 0x0

    .line 94
    .line 95
    const/16 v21, 0x0

    .line 96
    .line 97
    const/16 v23, 0x0

    .line 98
    .line 99
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 100
    .line 101
    move-wide/from16 v24, v2

    .line 102
    .line 103
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 104
    .line 105
    move-wide/from16 v26, v1

    .line 106
    .line 107
    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    .line 108
    .line 109
    move-wide/from16 v32, v1

    .line 110
    .line 111
    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    .line 112
    .line 113
    move-wide/from16 v34, v1

    .line 114
    .line 115
    const/16 v40, 0x0

    .line 116
    .line 117
    const/16 v41, 0x0

    .line 118
    .line 119
    move/from16 v19, p1

    .line 120
    .line 121
    move/from16 v38, p5

    .line 122
    .line 123
    move/from16 v39, p8

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 127
    return-void
.end method

.method public ZHER(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 35

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p5

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v34

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v34, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v20, v1

    .line 49
    .line 50
    move-wide/from16 v28, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v28, v4

    .line 54
    .line 55
    move-wide/from16 v20, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x6d

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const-wide/16 v18, 0x0

    .line 73
    .line 74
    const-wide/16 v22, 0x0

    .line 75
    .line 76
    const-wide/16 v24, 0x0

    .line 77
    .line 78
    const-wide/16 v26, 0x0

    .line 79
    .line 80
    const/16 v31, 0x0

    .line 81
    .line 82
    const/16 v32, 0x0

    .line 83
    .line 84
    const/16 v33, 0x0

    .line 85
    .line 86
    move/from16 v11, p1

    .line 87
    move v14, v3

    .line 88
    .line 89
    move-wide/from16 v16, p2

    .line 90
    .line 91
    move/from16 v30, p5

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v4 .. v34}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 95
    return-void
.end method

.method public ZHER2(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p7

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move/from16 v3, p1

    .line 19
    .line 20
    move-object/from16 v4, p3

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move-object/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p6

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 32
    move-result v13

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 36
    move-result v33

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v2

    .line 43
    .line 44
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v4

    .line 49
    .line 50
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    if-eqz v33, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 60
    move-result-wide v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v6

    .line 69
    .line 70
    :cond_0
    move-wide/from16 v27, v2

    .line 71
    .line 72
    move-wide/from16 v19, v4

    .line 73
    .line 74
    move-wide/from16 v21, v6

    .line 75
    .line 76
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 77
    move-object v3, v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    const/16 v6, 0x6f

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    .line 91
    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    .line 92
    move-wide v15, v6

    .line 93
    .line 94
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 95
    .line 96
    move-wide/from16 v17, v1

    .line 97
    .line 98
    const-wide/16 v23, 0x0

    .line 99
    .line 100
    const-wide/16 v25, 0x0

    .line 101
    .line 102
    const/16 v31, 0x0

    .line 103
    .line 104
    const/16 v32, 0x0

    .line 105
    .line 106
    move/from16 v10, p1

    .line 107
    .line 108
    move/from16 v29, p4

    .line 109
    .line 110
    move/from16 v30, p6

    .line 111
    .line 112
    const/16 v6, 0x6f

    .line 113
    const/4 v7, 0x0

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 117
    return-void
.end method

.method public ZHER2K(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 32

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v8, p3

    .line 7
    .line 8
    move-object/from16 v12, p4

    .line 9
    .line 10
    move-object/from16 v1, p5

    .line 11
    .line 12
    move-object/from16 v11, p8

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v5, v12, v1, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 25
    .line 26
    const/16 v2, 0x6f

    .line 27
    .line 28
    if-ne v5, v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 36
    move-result v2

    .line 37
    .line 38
    :goto_0
    move/from16 v19, v2

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 47
    move-result v2

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 52
    move-result v31

    .line 53
    .line 54
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 63
    move-result-wide v2

    .line 64
    .line 65
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 69
    move-result-wide v6

    .line 70
    .line 71
    if-eqz v31, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 78
    move-result-wide v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 82
    move-result-wide v3

    .line 83
    .line 84
    move-wide/from16 v20, v1

    .line 85
    .line 86
    move-wide/from16 v25, v3

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_1
    move-wide/from16 v20, v2

    .line 90
    .line 91
    move-wide/from16 v25, v6

    .line 92
    .line 93
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 94
    move-object v1, v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 98
    move-result-wide v2

    .line 99
    .line 100
    const/16 v4, 0x8e

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 108
    move-result-object v11

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    .line 112
    move-result v11

    .line 113
    .line 114
    iget-wide v13, v8, Landroidx/renderscript/Double2;->x:D

    .line 115
    .line 116
    iget-wide v4, v8, Landroidx/renderscript/Double2;->y:D

    .line 117
    move-wide v15, v4

    .line 118
    .line 119
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 123
    move-result-wide v17

    .line 124
    .line 125
    const-wide/16 v23, 0x0

    .line 126
    .line 127
    const/16 v27, 0x0

    .line 128
    .line 129
    const/16 v28, 0x0

    .line 130
    .line 131
    const/16 v29, 0x0

    .line 132
    .line 133
    const/16 v30, 0x0

    .line 134
    .line 135
    move/from16 v5, p2

    .line 136
    .line 137
    move/from16 v8, p1

    .line 138
    .line 139
    move/from16 v12, v19

    .line 140
    .line 141
    move-wide/from16 v19, v20

    .line 142
    .line 143
    move-wide/from16 v21, p6

    .line 144
    .line 145
    const/16 v4, 0x8e

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 149
    return-void
.end method

.method public ZHERK(IIDLandroidx/renderscript/Allocation;DLandroidx/renderscript/Allocation;)V
    .locals 32

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    move-object/from16 v8, p8

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v5, v1, v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 21
    .line 22
    const/16 v2, 0x71

    .line 23
    .line 24
    if-ne v5, v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 32
    move-result v2

    .line 33
    :goto_0
    move v12, v2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 42
    move-result v2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 47
    move-result v31

    .line 48
    .line 49
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v2

    .line 54
    .line 55
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 59
    move-result-wide v6

    .line 60
    .line 61
    if-eqz v31, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 65
    move-result-wide v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 69
    move-result-wide v3

    .line 70
    .line 71
    move-wide/from16 v17, v1

    .line 72
    .line 73
    move-wide/from16 v25, v3

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_1
    move-wide/from16 v17, v2

    .line 77
    .line 78
    move-wide/from16 v25, v6

    .line 79
    .line 80
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 81
    move-object v1, v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 85
    move-result-wide v2

    .line 86
    .line 87
    const/16 v4, 0x8d

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p8 .. p8}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 95
    move-result-object v8

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Landroidx/renderscript/Type;->getX()I

    .line 99
    move-result v11

    .line 100
    .line 101
    const-wide/16 v15, 0x0

    .line 102
    .line 103
    const-wide/16 v19, 0x0

    .line 104
    .line 105
    const-wide/16 v23, 0x0

    .line 106
    .line 107
    const/16 v27, 0x0

    .line 108
    .line 109
    const/16 v28, 0x0

    .line 110
    .line 111
    const/16 v29, 0x0

    .line 112
    .line 113
    const/16 v30, 0x0

    .line 114
    .line 115
    move/from16 v5, p2

    .line 116
    .line 117
    move/from16 v8, p1

    .line 118
    .line 119
    move-wide/from16 v13, p3

    .line 120
    .line 121
    move-wide/from16 v21, p6

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 125
    return-void
.end method

.method public ZHPMV(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;I)V
    .locals 43

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    move/from16 v3, p1

    .line 21
    .line 22
    move-object/from16 v4, p4

    .line 23
    .line 24
    move/from16 v5, p5

    .line 25
    .line 26
    move-object/from16 v6, p7

    .line 27
    .line 28
    move/from16 v7, p8

    .line 29
    .line 30
    move-object/from16 v8, p3

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 34
    move-result v22

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 38
    move-result v42

    .line 39
    .line 40
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v2

    .line 45
    .line 46
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 50
    move-result-wide v4

    .line 51
    .line 52
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 56
    move-result-wide v6

    .line 57
    .line 58
    if-eqz v42, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 62
    move-result-wide v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 66
    move-result-wide v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 70
    move-result-wide v6

    .line 71
    .line 72
    :cond_0
    move-wide/from16 v28, v2

    .line 73
    .line 74
    move-wide/from16 v30, v4

    .line 75
    .line 76
    move-wide/from16 v36, v6

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 79
    move-object v12, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 83
    move-result-wide v13

    .line 84
    .line 85
    const/16 v15, 0x6a

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/16 v20, 0x0

    .line 94
    .line 95
    const/16 v21, 0x0

    .line 96
    .line 97
    const/16 v23, 0x0

    .line 98
    .line 99
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 100
    .line 101
    move-wide/from16 v24, v2

    .line 102
    .line 103
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 104
    .line 105
    move-wide/from16 v26, v1

    .line 106
    .line 107
    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    .line 108
    .line 109
    move-wide/from16 v32, v1

    .line 110
    .line 111
    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    .line 112
    .line 113
    move-wide/from16 v34, v1

    .line 114
    .line 115
    const/16 v40, 0x0

    .line 116
    .line 117
    const/16 v41, 0x0

    .line 118
    .line 119
    move/from16 v19, p1

    .line 120
    .line 121
    move/from16 v38, p5

    .line 122
    .line 123
    move/from16 v39, p8

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 127
    return-void
.end method

.method public ZHPR(IDLandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 35

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    move/from16 v11, p1

    .line 15
    .line 16
    move/from16 v14, p5

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v11, v1, v14, v2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 24
    move-result v34

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    if-eqz v34, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 42
    move-result-wide v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    move-wide/from16 v20, v1

    .line 49
    .line 50
    move-wide/from16 v28, v4

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    move-wide/from16 v28, v4

    .line 54
    .line 55
    move-wide/from16 v20, v6

    .line 56
    .line 57
    :goto_0
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 58
    move-object v4, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 62
    move-result-wide v5

    .line 63
    .line 64
    const/16 v7, 0x6e

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    const-wide/16 v18, 0x0

    .line 73
    .line 74
    const-wide/16 v22, 0x0

    .line 75
    .line 76
    const-wide/16 v24, 0x0

    .line 77
    .line 78
    const-wide/16 v26, 0x0

    .line 79
    .line 80
    const/16 v31, 0x0

    .line 81
    .line 82
    const/16 v32, 0x0

    .line 83
    .line 84
    const/16 v33, 0x0

    .line 85
    .line 86
    move/from16 v11, p1

    .line 87
    move v14, v3

    .line 88
    .line 89
    move-wide/from16 v16, p2

    .line 90
    .line 91
    move/from16 v30, p5

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {v4 .. v34}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 95
    return-void
.end method

.method public ZHPR2(ILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)V
    .locals 34

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p7

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    move/from16 v3, p1

    .line 19
    .line 20
    move-object/from16 v4, p3

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move-object/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p6

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;ILandroidx/renderscript/Allocation;)I

    .line 32
    move-result v13

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 36
    move-result v33

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v2

    .line 43
    .line 44
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 48
    move-result-wide v4

    .line 49
    .line 50
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    if-eqz v33, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 60
    move-result-wide v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 64
    move-result-wide v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 68
    move-result-wide v6

    .line 69
    .line 70
    :cond_0
    move-wide/from16 v27, v2

    .line 71
    .line 72
    move-wide/from16 v19, v4

    .line 73
    .line 74
    move-wide/from16 v21, v6

    .line 75
    .line 76
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 77
    move-object v3, v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    const/16 v6, 0x70

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    .line 91
    iget-wide v6, v1, Landroidx/renderscript/Double2;->x:D

    .line 92
    move-wide v15, v6

    .line 93
    .line 94
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 95
    .line 96
    move-wide/from16 v17, v1

    .line 97
    .line 98
    const-wide/16 v23, 0x0

    .line 99
    .line 100
    const-wide/16 v25, 0x0

    .line 101
    .line 102
    const/16 v31, 0x0

    .line 103
    .line 104
    const/16 v32, 0x0

    .line 105
    .line 106
    move/from16 v10, p1

    .line 107
    .line 108
    move/from16 v29, p4

    .line 109
    .line 110
    move/from16 v30, p6

    .line 111
    .line 112
    const/16 v6, 0x70

    .line 113
    const/4 v7, 0x0

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v3 .. v33}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 117
    return-void
.end method

.method public ZSYMM(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 44

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    move-object/from16 v12, p7

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 16
    .line 17
    .line 18
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 34
    move-result v3

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    .line 46
    move/from16 v5, p1

    .line 47
    .line 48
    move-object/from16 v6, p4

    .line 49
    .line 50
    move-object/from16 v7, p5

    .line 51
    .line 52
    move-object/from16 v8, p7

    .line 53
    .line 54
    .line 55
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 59
    move-result v43

    .line 60
    .line 61
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v2

    .line 66
    .line 67
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 71
    move-result-wide v4

    .line 72
    .line 73
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 77
    move-result-wide v6

    .line 78
    .line 79
    if-eqz v43, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 83
    move-result-wide v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v10}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 87
    move-result-wide v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v12}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 91
    move-result-wide v6

    .line 92
    .line 93
    :cond_0
    move-wide/from16 v29, v2

    .line 94
    .line 95
    move-wide/from16 v31, v4

    .line 96
    .line 97
    move-wide/from16 v37, v6

    .line 98
    .line 99
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 100
    move-object v13, v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 104
    move-result-wide v14

    .line 105
    .line 106
    const/16 v16, 0x84

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/16 v21, 0x0

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 120
    move-result v22

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 128
    move-result v23

    .line 129
    .line 130
    const/16 v24, 0x0

    .line 131
    .line 132
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 133
    .line 134
    move-wide/from16 v25, v2

    .line 135
    .line 136
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 137
    .line 138
    move-wide/from16 v27, v1

    .line 139
    .line 140
    iget-wide v1, v11, Landroidx/renderscript/Double2;->x:D

    .line 141
    .line 142
    move-wide/from16 v33, v1

    .line 143
    .line 144
    iget-wide v1, v11, Landroidx/renderscript/Double2;->y:D

    .line 145
    .line 146
    move-wide/from16 v35, v1

    .line 147
    .line 148
    const/16 v39, 0x0

    .line 149
    .line 150
    const/16 v40, 0x0

    .line 151
    .line 152
    const/16 v41, 0x0

    .line 153
    .line 154
    const/16 v42, 0x0

    .line 155
    .line 156
    move/from16 v19, p1

    .line 157
    .line 158
    move/from16 v20, p2

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {v13 .. v43}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 162
    return-void

    .line 163
    .line 164
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 165
    .line 166
    const-string v2, "Matrix A is not symmetric"

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    throw v1
.end method

.method public ZSYR2K(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 34

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v8, p3

    .line 7
    .line 8
    move-object/from16 v1, p4

    .line 9
    .line 10
    move-object/from16 v2, p5

    .line 11
    .line 12
    move-object/from16 v12, p6

    .line 13
    .line 14
    move-object/from16 v11, p7

    .line 15
    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v5, v1, v2, v11}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroidx/renderscript/Element;ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 27
    .line 28
    const/16 v3, 0x6f

    .line 29
    .line 30
    if-eq v5, v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getY()I

    .line 38
    move-result v3

    .line 39
    .line 40
    :goto_0
    move/from16 v17, v3

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getX()I

    .line 49
    move-result v3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 54
    move-result v31

    .line 55
    .line 56
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 60
    move-result-wide v3

    .line 61
    .line 62
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 66
    move-result-wide v6

    .line 67
    .line 68
    iget-object v9, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11, v9}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 72
    move-result-wide v9

    .line 73
    .line 74
    if-eqz v31, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 78
    move-result-wide v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 82
    move-result-wide v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 86
    move-result-wide v6

    .line 87
    .line 88
    move-wide/from16 v25, v1

    .line 89
    .line 90
    move-wide/from16 v18, v3

    .line 91
    .line 92
    move-wide/from16 v32, v6

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :cond_1
    move-wide/from16 v18, v3

    .line 96
    .line 97
    move-wide/from16 v25, v6

    .line 98
    .line 99
    move-wide/from16 v32, v9

    .line 100
    .line 101
    :goto_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 102
    move-object v1, v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 106
    move-result-wide v2

    .line 107
    .line 108
    const/16 v4, 0x86

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    const/4 v10, 0x0

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 116
    move-result-object v11

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11}, Landroidx/renderscript/Type;->getX()I

    .line 120
    move-result v11

    .line 121
    .line 122
    iget-wide v13, v8, Landroidx/renderscript/Double2;->x:D

    .line 123
    .line 124
    iget-wide v4, v8, Landroidx/renderscript/Double2;->y:D

    .line 125
    move-wide v15, v4

    .line 126
    .line 127
    iget-wide v4, v12, Landroidx/renderscript/Double2;->x:D

    .line 128
    .line 129
    move-wide/from16 v21, v4

    .line 130
    .line 131
    iget-wide v4, v12, Landroidx/renderscript/Double2;->y:D

    .line 132
    .line 133
    move-wide/from16 v23, v4

    .line 134
    .line 135
    const/16 v27, 0x0

    .line 136
    .line 137
    const/16 v28, 0x0

    .line 138
    .line 139
    const/16 v29, 0x0

    .line 140
    .line 141
    const/16 v30, 0x0

    .line 142
    .line 143
    move/from16 v5, p2

    .line 144
    .line 145
    move/from16 v8, p1

    .line 146
    .line 147
    move/from16 v12, v17

    .line 148
    .line 149
    move-wide/from16 v17, v18

    .line 150
    .line 151
    move-wide/from16 v19, v25

    .line 152
    .line 153
    move-wide/from16 v25, v32

    .line 154
    .line 155
    const/16 v4, 0x86

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 159
    return-void
.end method

.method public ZSYRK(IILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Double2;Landroidx/renderscript/Allocation;)V
    .locals 43

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move-object/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p6

    .line 11
    .line 12
    .line 13
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 22
    move-result-object v2

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    .line 27
    move/from16 v3, p2

    .line 28
    .line 29
    move-object/from16 v6, p4

    .line 30
    .line 31
    move-object/from16 v8, p6

    .line 32
    .line 33
    .line 34
    invoke-static/range {v2 .. v8}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 35
    .line 36
    const/16 v2, 0x6f

    .line 37
    .line 38
    if-eq v3, v2, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 46
    move-result v2

    .line 47
    .line 48
    :goto_0
    move/from16 v23, v2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 62
    move-result v42

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 68
    move-result-wide v4

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 74
    .line 75
    if-eqz v42, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 79
    move-result-wide v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v11}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 83
    .line 84
    :cond_1
    move-wide/from16 v28, v4

    .line 85
    .line 86
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 87
    move-object v12, v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 91
    move-result-wide v13

    .line 92
    .line 93
    const/16 v15, 0x85

    .line 94
    .line 95
    const/16 v17, 0x0

    .line 96
    .line 97
    const/16 v18, 0x0

    .line 98
    .line 99
    const/16 v20, 0x0

    .line 100
    .line 101
    const/16 v21, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p6 .. p6}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 109
    move-result v22

    .line 110
    .line 111
    iget-wide v4, v1, Landroidx/renderscript/Double2;->x:D

    .line 112
    .line 113
    move-wide/from16 v24, v4

    .line 114
    .line 115
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 116
    .line 117
    move-wide/from16 v26, v1

    .line 118
    .line 119
    const-wide/16 v30, 0x0

    .line 120
    .line 121
    iget-wide v1, v10, Landroidx/renderscript/Double2;->x:D

    .line 122
    .line 123
    move-wide/from16 v32, v1

    .line 124
    .line 125
    iget-wide v1, v10, Landroidx/renderscript/Double2;->y:D

    .line 126
    .line 127
    move-wide/from16 v34, v1

    .line 128
    .line 129
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 133
    move-result-wide v36

    .line 134
    .line 135
    const/16 v38, 0x0

    .line 136
    .line 137
    const/16 v39, 0x0

    .line 138
    .line 139
    const/16 v40, 0x0

    .line 140
    .line 141
    const/16 v41, 0x0

    .line 142
    .line 143
    move/from16 v16, p2

    .line 144
    .line 145
    move/from16 v19, p1

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {v12 .. v42}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 149
    return-void
.end method

.method public ZTBMV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 32

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    if-ltz p4, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    move/from16 v2, p1

    .line 17
    .line 18
    move/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move-object/from16 v5, p5

    .line 23
    .line 24
    move-object/from16 v6, p6

    .line 25
    .line 26
    move/from16 v7, p7

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 37
    move-result v11

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v31

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v31, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    .line 65
    :cond_0
    move-wide/from16 v17, v1

    .line 66
    .line 67
    move-wide/from16 v19, v3

    .line 68
    .line 69
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    move-object v1, v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 74
    move-result-wide v2

    .line 75
    .line 76
    const/16 v4, 0x4a

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    .line 81
    const-wide/16 v13, 0x0

    .line 82
    .line 83
    const-wide/16 v15, 0x0

    .line 84
    .line 85
    const-wide/16 v21, 0x0

    .line 86
    .line 87
    const-wide/16 v23, 0x0

    .line 88
    .line 89
    const-wide/16 v25, 0x0

    .line 90
    .line 91
    const/16 v28, 0x0

    .line 92
    .line 93
    const/16 v29, 0x0

    .line 94
    .line 95
    const/16 v30, 0x0

    .line 96
    .line 97
    move/from16 v5, p2

    .line 98
    .line 99
    move/from16 v8, p1

    .line 100
    .line 101
    move/from16 v9, p3

    .line 102
    .line 103
    move/from16 v12, p4

    .line 104
    .line 105
    move/from16 v27, p7

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {v1 .. v31}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 109
    return-void

    .line 110
    .line 111
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 112
    .line 113
    const-string v2, "K must be greater than or equal to 0"

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    throw v1
.end method

.method public ZTBSV(IIIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move-object/from16 v9, p6

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p5

    .line 21
    .line 22
    move-object/from16 v6, p6

    .line 23
    .line 24
    move/from16 v7, p7

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p5 .. p5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    if-ltz p4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 41
    move-result v32

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    if-eqz v32, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 59
    move-result-wide v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 63
    move-result-wide v3

    .line 64
    .line 65
    :cond_0
    move-wide/from16 v18, v1

    .line 66
    .line 67
    move-wide/from16 v20, v3

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    move-object v2, v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 74
    move-result-wide v3

    .line 75
    .line 76
    const/16 v5, 0x4d

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    .line 81
    const-wide/16 v14, 0x0

    .line 82
    .line 83
    const-wide/16 v16, 0x0

    .line 84
    .line 85
    const-wide/16 v22, 0x0

    .line 86
    .line 87
    const-wide/16 v24, 0x0

    .line 88
    .line 89
    const-wide/16 v26, 0x0

    .line 90
    .line 91
    const/16 v29, 0x0

    .line 92
    .line 93
    const/16 v30, 0x0

    .line 94
    .line 95
    const/16 v31, 0x0

    .line 96
    .line 97
    move/from16 v6, p2

    .line 98
    .line 99
    move/from16 v9, p1

    .line 100
    .line 101
    move/from16 v10, p3

    .line 102
    .line 103
    move/from16 v13, p4

    .line 104
    .line 105
    move/from16 v28, p7

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 109
    return-void

    .line 110
    .line 111
    :cond_1
    new-instance v1, Landroidx/renderscript/RSRuntimeException;

    .line 112
    .line 113
    const-string v2, "Number of diagonals must be positive"

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    throw v1
.end method

.method public ZTPMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v32

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v32, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    .line 56
    :cond_0
    move-wide/from16 v18, v1

    .line 57
    .line 58
    move-wide/from16 v20, v3

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    move-object v2, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    const/16 v5, 0x4b

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    .line 73
    const-wide/16 v14, 0x0

    .line 74
    .line 75
    const-wide/16 v16, 0x0

    .line 76
    .line 77
    const-wide/16 v22, 0x0

    .line 78
    .line 79
    const-wide/16 v24, 0x0

    .line 80
    .line 81
    const-wide/16 v26, 0x0

    .line 82
    .line 83
    const/16 v29, 0x0

    .line 84
    .line 85
    const/16 v30, 0x0

    .line 86
    .line 87
    const/16 v31, 0x0

    .line 88
    .line 89
    move/from16 v6, p2

    .line 90
    .line 91
    move/from16 v9, p1

    .line 92
    .line 93
    move/from16 v10, p3

    .line 94
    .line 95
    move/from16 v28, p6

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 99
    return-void
.end method

.method public ZTPSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)I

    .line 28
    move-result v12

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 32
    move-result v32

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 44
    move-result-wide v3

    .line 45
    .line 46
    if-eqz v32, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 50
    move-result-wide v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 54
    move-result-wide v3

    .line 55
    .line 56
    :cond_0
    move-wide/from16 v18, v1

    .line 57
    .line 58
    move-wide/from16 v20, v3

    .line 59
    .line 60
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 61
    move-object v2, v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 65
    move-result-wide v3

    .line 66
    .line 67
    const/16 v5, 0x4e

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    .line 73
    const-wide/16 v14, 0x0

    .line 74
    .line 75
    const-wide/16 v16, 0x0

    .line 76
    .line 77
    const-wide/16 v22, 0x0

    .line 78
    .line 79
    const-wide/16 v24, 0x0

    .line 80
    .line 81
    const-wide/16 v26, 0x0

    .line 82
    .line 83
    const/16 v29, 0x0

    .line 84
    .line 85
    const/16 v30, 0x0

    .line 86
    .line 87
    const/16 v31, 0x0

    .line 88
    .line 89
    move/from16 v6, p2

    .line 90
    .line 91
    move/from16 v9, p1

    .line 92
    .line 93
    move/from16 v10, p3

    .line 94
    .line 95
    move/from16 v28, p6

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 99
    return-void
.end method

.method public ZTRMM(IIIILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 36

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p5

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    move-object/from16 v3, p7

    .line 9
    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 15
    .line 16
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    move/from16 v11, p1

    .line 23
    .line 24
    move/from16 v9, p3

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 31
    move-result v35

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 43
    move-result-wide v6

    .line 44
    .line 45
    if-eqz v35, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 53
    move-result-wide v6

    .line 54
    .line 55
    :cond_0
    move-wide/from16 v21, v4

    .line 56
    .line 57
    move-wide/from16 v23, v6

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    move-object v5, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    const/16 v8, 0x87

    .line 67
    const/4 v10, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 75
    move-result v14

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 83
    move-result v15

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 88
    .line 89
    move-wide/from16 v17, v2

    .line 90
    .line 91
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 92
    .line 93
    move-wide/from16 v19, v1

    .line 94
    .line 95
    const-wide/16 v25, 0x0

    .line 96
    .line 97
    const-wide/16 v27, 0x0

    .line 98
    .line 99
    const-wide/16 v29, 0x0

    .line 100
    .line 101
    const/16 v31, 0x0

    .line 102
    .line 103
    const/16 v32, 0x0

    .line 104
    .line 105
    const/16 v33, 0x0

    .line 106
    .line 107
    const/16 v34, 0x0

    .line 108
    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move/from16 v11, p1

    .line 112
    .line 113
    move/from16 v12, p2

    .line 114
    .line 115
    move/from16 v13, p4

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {v5 .. v35}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 119
    return-void
.end method

.method public ZTRMV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v32

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v32, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    :cond_0
    move-wide/from16 v18, v1

    .line 64
    .line 65
    move-wide/from16 v20, v3

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    move-object v2, v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    const/16 v5, 0x49

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    .line 80
    const-wide/16 v14, 0x0

    .line 81
    .line 82
    const-wide/16 v16, 0x0

    .line 83
    .line 84
    const-wide/16 v22, 0x0

    .line 85
    .line 86
    const-wide/16 v24, 0x0

    .line 87
    .line 88
    const-wide/16 v26, 0x0

    .line 89
    .line 90
    const/16 v29, 0x0

    .line 91
    .line 92
    const/16 v30, 0x0

    .line 93
    .line 94
    const/16 v31, 0x0

    .line 95
    .line 96
    move/from16 v6, p2

    .line 97
    .line 98
    move/from16 v9, p1

    .line 99
    .line 100
    move/from16 v10, p3

    .line 101
    .line 102
    move/from16 v28, p6

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 106
    return-void
.end method

.method public ZTRSM(IIIILandroidx/renderscript/Double2;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 36

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p5

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    move-object/from16 v3, p7

    .line 9
    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 12
    .line 13
    .line 14
    invoke-static/range {p4 .. p4}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 15
    .line 16
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    move/from16 v11, p1

    .line 23
    .line 24
    move/from16 v9, p3

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v11, v9, v2, v3}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroidx/renderscript/Element;IILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 31
    move-result v35

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    iget-object v6, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v6}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 43
    move-result-wide v6

    .line 44
    .line 45
    if-eqz v35, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 53
    move-result-wide v6

    .line 54
    .line 55
    :cond_0
    move-wide/from16 v21, v4

    .line 56
    .line 57
    move-wide/from16 v23, v6

    .line 58
    .line 59
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 60
    move-object v5, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    const/16 v8, 0x88

    .line 67
    const/4 v10, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    .line 75
    move-result v14

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p7 .. p7}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/renderscript/Type;->getX()I

    .line 83
    move-result v15

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    iget-wide v2, v1, Landroidx/renderscript/Double2;->x:D

    .line 88
    .line 89
    move-wide/from16 v17, v2

    .line 90
    .line 91
    iget-wide v1, v1, Landroidx/renderscript/Double2;->y:D

    .line 92
    .line 93
    move-wide/from16 v19, v1

    .line 94
    .line 95
    const-wide/16 v25, 0x0

    .line 96
    .line 97
    const-wide/16 v27, 0x0

    .line 98
    .line 99
    const-wide/16 v29, 0x0

    .line 100
    .line 101
    const/16 v31, 0x0

    .line 102
    .line 103
    const/16 v32, 0x0

    .line 104
    .line 105
    const/16 v33, 0x0

    .line 106
    .line 107
    const/16 v34, 0x0

    .line 108
    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move/from16 v11, p1

    .line 112
    .line 113
    move/from16 v12, p2

    .line 114
    .line 115
    move/from16 v13, p4

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {v5 .. v35}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 119
    return-void
.end method

.method public ZTRSV(IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V
    .locals 33

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/renderscript/Element;->F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v5, p4

    .line 21
    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move/from16 v7, p6

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v7}, Landroidx/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroidx/renderscript/Element;IIILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 35
    move-result v12

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 39
    move-result v32

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 51
    move-result-wide v3

    .line 52
    .line 53
    if-eqz v32, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v8}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 57
    move-result-wide v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v9}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    :cond_0
    move-wide/from16 v18, v1

    .line 64
    .line 65
    move-wide/from16 v20, v3

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 68
    move-object v2, v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    const/16 v5, 0x4c

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v11, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    .line 80
    const-wide/16 v14, 0x0

    .line 81
    .line 82
    const-wide/16 v16, 0x0

    .line 83
    .line 84
    const-wide/16 v22, 0x0

    .line 85
    .line 86
    const-wide/16 v24, 0x0

    .line 87
    .line 88
    const-wide/16 v26, 0x0

    .line 89
    .line 90
    const/16 v29, 0x0

    .line 91
    .line 92
    const/16 v30, 0x0

    .line 93
    .line 94
    const/16 v31, 0x0

    .line 95
    .line 96
    move/from16 v6, p2

    .line 97
    .line 98
    move/from16 v9, p1

    .line 99
    .line 100
    move/from16 v10, p3

    .line 101
    .line 102
    move/from16 v28, p6

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {v2 .. v32}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 106
    return-void
.end method
