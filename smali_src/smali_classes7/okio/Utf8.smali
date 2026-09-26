.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utf8.kt\nokio/Utf8\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nokio/_UtilKt\n*L\n1#1,558:1\n396#1,9:562\n127#1:571\n405#1,20:573\n439#1,4:594\n127#1:598\n445#1,10:600\n127#1:610\n455#1,5:611\n127#1:616\n460#1,24:617\n499#1,4:642\n127#1:646\n505#1,2:648\n127#1:650\n509#1,10:651\n127#1:661\n519#1,5:662\n127#1:667\n524#1,5:668\n127#1:673\n529#1,28:674\n396#1,9:703\n127#1:712\n405#1,20:714\n439#1,4:735\n127#1:739\n445#1,10:741\n127#1:751\n455#1,5:752\n127#1:757\n460#1,24:758\n499#1,4:783\n127#1:787\n505#1,2:789\n127#1:791\n509#1,10:792\n127#1:802\n519#1,5:803\n127#1:808\n524#1,5:809\n127#1:814\n529#1,28:815\n127#1:843\n127#1:845\n127#1:847\n127#1:849\n127#1:851\n127#1:853\n127#1:855\n127#1:857\n127#1:859\n1#2:559\n72#3:560\n66#3:561\n72#3:572\n66#3:593\n72#3:599\n66#3:641\n72#3:647\n66#3:702\n72#3:713\n66#3:734\n72#3:740\n66#3:782\n72#3:788\n72#3:844\n72#3:846\n72#3:848\n72#3:850\n72#3:852\n72#3:854\n72#3:856\n72#3:858\n72#3:860\n*S KotlinDebug\n*F\n+ 1 Utf8.kt\nokio/Utf8\n*L\n228#1:562,9\n228#1:571\n228#1:573,20\n232#1:594,4\n232#1:598\n232#1:600,10\n232#1:610\n232#1:611,5\n232#1:616\n232#1:617,24\n236#1:642,4\n236#1:646\n236#1:648,2\n236#1:650\n236#1:651,10\n236#1:661\n236#1:662,5\n236#1:667\n236#1:668,5\n236#1:673\n236#1:674,28\n276#1:703,9\n276#1:712\n276#1:714,20\n280#1:735,4\n280#1:739\n280#1:741,10\n280#1:751\n280#1:752,5\n280#1:757\n280#1:758,24\n284#1:783,4\n284#1:787\n284#1:789,2\n284#1:791\n284#1:792,10\n284#1:802\n284#1:803,5\n284#1:808\n284#1:809,5\n284#1:814\n284#1:815,28\n404#1:843\n442#1:845\n454#1:847\n459#1:849\n502#1:851\n506#1:853\n518#1:855\n523#1:857\n528#1:859\n127#1:560\n226#1:561\n228#1:572\n230#1:593\n232#1:599\n234#1:641\n236#1:647\n274#1:702\n276#1:713\n278#1:734\n280#1:740\n282#1:782\n284#1:788\n404#1:844\n442#1:846\n454#1:848\n459#1:850\n502#1:852\n506#1:854\n518#1:856\n523#1:858\n528#1:860\n*E\n"
.end annotation


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    if-gt v0, p0, :cond_1

    const/16 v0, 0xa0

    if-ge p0, v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final isUtf8Continuation(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final process2Utf8Bytes([BIILe8/l;)I
    .locals 3
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "yield"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    .line 15
    const v1, 0xfffd

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-gt p2, v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return v2

    .line 27
    .line 28
    :cond_0
    aget-byte p1, p0, p1

    .line 29
    .line 30
    aget-byte p0, p0, v0

    .line 31
    .line 32
    and-int/lit16 p2, p0, 0xc0

    .line 33
    .line 34
    const/16 v0, 0x80

    .line 35
    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    xor-int/lit16 p0, p0, 0xf80

    .line 39
    .line 40
    shl-int/lit8 p1, p1, 0x6

    .line 41
    xor-int/2addr p0, p1

    .line 42
    .line 43
    if-ge p0, v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {p3, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    const/4 p0, 0x2

    .line 56
    return p0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {p3, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return v2
.end method

.method public static final process3Utf8Bytes([BIILe8/l;)I
    .locals 6
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "yield"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x2

    .line 13
    .line 14
    const/16 v1, 0x80

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    const v3, 0xfffd

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x2

    .line 24
    .line 25
    if-gt p2, v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/2addr p1, v2

    .line 30
    .line 31
    if-le p2, p1, :cond_0

    .line 32
    .line 33
    aget-byte p0, p0, p1

    .line 34
    .line 35
    and-int/lit16 p0, p0, 0xc0

    .line 36
    .line 37
    if-ne p0, v1, :cond_0

    .line 38
    return v4

    .line 39
    :cond_0
    return v2

    .line 40
    .line 41
    :cond_1
    aget-byte p2, p0, p1

    .line 42
    add-int/2addr p1, v2

    .line 43
    .line 44
    aget-byte p1, p0, p1

    .line 45
    .line 46
    and-int/lit16 v5, p1, 0xc0

    .line 47
    .line 48
    if-ne v5, v1, :cond_5

    .line 49
    .line 50
    aget-byte p0, p0, v0

    .line 51
    .line 52
    and-int/lit16 v0, p0, 0xc0

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    .line 57
    const v0, -0x1e080

    .line 58
    xor-int/2addr p0, v0

    .line 59
    .line 60
    shl-int/lit8 p1, p1, 0x6

    .line 61
    xor-int/2addr p0, p1

    .line 62
    .line 63
    shl-int/lit8 p1, p2, 0xc

    .line 64
    xor-int/2addr p0, p1

    .line 65
    .line 66
    const/16 p1, 0x800

    .line 67
    .line 68
    if-ge p0, p1, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-interface {p3, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_2
    const p1, 0xd800

    .line 76
    .line 77
    if-gt p1, p0, :cond_3

    .line 78
    .line 79
    .line 80
    const p1, 0xe000

    .line 81
    .line 82
    if-ge p0, p1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-interface {p3, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-interface {p3, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    const/4 p0, 0x3

    .line 95
    return p0

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-interface {p3, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return v4

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-interface {p3, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return v2
.end method

.method public static final process4Utf8Bytes([BIILe8/l;)I
    .locals 8
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "yield"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x3

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    const/16 v3, 0x80

    .line 17
    .line 18
    .line 19
    const v4, 0xfffd

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x3

    .line 25
    .line 26
    if-gt p2, v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    add-int/lit8 p3, p1, 0x1

    .line 32
    .line 33
    if-le p2, p3, :cond_1

    .line 34
    .line 35
    aget-byte p3, p0, p3

    .line 36
    .line 37
    and-int/lit16 p3, p3, 0xc0

    .line 38
    .line 39
    if-ne p3, v3, :cond_1

    .line 40
    add-int/2addr p1, v1

    .line 41
    .line 42
    if-le p2, p1, :cond_0

    .line 43
    .line 44
    aget-byte p0, p0, p1

    .line 45
    .line 46
    and-int/lit16 p0, p0, 0xc0

    .line 47
    .line 48
    if-ne p0, v3, :cond_0

    .line 49
    return v5

    .line 50
    :cond_0
    return v1

    .line 51
    :cond_1
    return v2

    .line 52
    .line 53
    :cond_2
    aget-byte p2, p0, p1

    .line 54
    .line 55
    add-int/lit8 v6, p1, 0x1

    .line 56
    .line 57
    aget-byte v6, p0, v6

    .line 58
    .line 59
    and-int/lit16 v7, v6, 0xc0

    .line 60
    .line 61
    if-ne v7, v3, :cond_8

    .line 62
    add-int/2addr p1, v1

    .line 63
    .line 64
    aget-byte p1, p0, p1

    .line 65
    .line 66
    and-int/lit16 v2, p1, 0xc0

    .line 67
    .line 68
    if-ne v2, v3, :cond_7

    .line 69
    .line 70
    aget-byte p0, p0, v0

    .line 71
    .line 72
    and-int/lit16 v0, p0, 0xc0

    .line 73
    .line 74
    if-ne v0, v3, :cond_6

    .line 75
    .line 76
    .line 77
    const v0, 0x381f80

    .line 78
    xor-int/2addr p0, v0

    .line 79
    .line 80
    shl-int/lit8 p1, p1, 0x6

    .line 81
    xor-int/2addr p0, p1

    .line 82
    .line 83
    shl-int/lit8 p1, v6, 0xc

    .line 84
    xor-int/2addr p0, p1

    .line 85
    .line 86
    shl-int/lit8 p1, p2, 0x12

    .line 87
    xor-int/2addr p0, p1

    .line 88
    .line 89
    .line 90
    const p1, 0x10ffff

    .line 91
    .line 92
    if-le p0, p1, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-interface {p3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_3
    const p1, 0xd800

    .line 100
    .line 101
    if-gt p1, p0, :cond_4

    .line 102
    .line 103
    .line 104
    const p1, 0xe000

    .line 105
    .line 106
    if-ge p0, p1, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-interface {p3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_4
    const/high16 p1, 0x10000

    .line 113
    .line 114
    if-ge p0, p1, :cond_5

    .line 115
    .line 116
    .line 117
    invoke-interface {p3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    goto :goto_0

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object p0

    .line 123
    .line 124
    .line 125
    invoke-interface {p3, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_0
    const/4 p0, 0x4

    .line 127
    return p0

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-interface {p3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return v5

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-interface {p3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return v1

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-interface {p3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return v2
.end method

.method public static final processUtf16Chars([BIILe8/l;)V
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Le8/l<",
            "-",
            "Ljava/lang/Character;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "yield"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_17

    .line 13
    .line 14
    aget-byte v0, p0, p1

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    int-to-char v0, v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    :goto_1
    if-ge p1, p2, :cond_0

    .line 29
    .line 30
    aget-byte v0, p0, p1

    .line 31
    .line 32
    if-ltz v0, :cond_0

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    int-to-char v0, v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    shr-int/lit8 v1, v0, 0x5

    .line 46
    const/4 v2, -0x2

    .line 47
    const/4 v3, 0x2

    .line 48
    .line 49
    const/16 v4, 0x80

    .line 50
    const/4 v5, 0x1

    .line 51
    .line 52
    .line 53
    const v6, 0xfffd

    .line 54
    .line 55
    if-ne v1, v2, :cond_7

    .line 56
    .line 57
    add-int/lit8 v1, p1, 0x1

    .line 58
    .line 59
    if-gt p2, v1, :cond_4

    .line 60
    :cond_2
    int-to-char v0, v6

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_3
    :goto_2
    move v3, v5

    .line 69
    goto :goto_4

    .line 70
    .line 71
    :cond_4
    aget-byte v1, p0, v1

    .line 72
    .line 73
    and-int/lit16 v2, v1, 0xc0

    .line 74
    .line 75
    if-ne v2, v4, :cond_2

    .line 76
    .line 77
    xor-int/lit16 v1, v1, 0xf80

    .line 78
    .line 79
    shl-int/lit8 v0, v0, 0x6

    .line 80
    xor-int/2addr v0, v1

    .line 81
    .line 82
    if-ge v0, v4, :cond_5

    .line 83
    int-to-char v0, v6

    .line 84
    .line 85
    .line 86
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_4

    .line 92
    :cond_5
    int-to-char v0, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    :goto_4
    add-int/2addr p1, v3

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_7
    shr-int/lit8 v1, v0, 0x4

    .line 98
    .line 99
    .line 100
    const v7, 0xe000

    .line 101
    .line 102
    .line 103
    const v8, 0xd800

    .line 104
    const/4 v9, 0x3

    .line 105
    .line 106
    if-ne v1, v2, :cond_d

    .line 107
    .line 108
    add-int/lit8 v1, p1, 0x2

    .line 109
    .line 110
    if-gt p2, v1, :cond_8

    .line 111
    int-to-char v0, v6

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    add-int/lit8 v0, p1, 0x1

    .line 121
    .line 122
    if-le p2, v0, :cond_3

    .line 123
    .line 124
    aget-byte v0, p0, v0

    .line 125
    .line 126
    and-int/lit16 v0, v0, 0xc0

    .line 127
    .line 128
    if-ne v0, v4, :cond_3

    .line 129
    goto :goto_4

    .line 130
    .line 131
    :cond_8
    add-int/lit8 v2, p1, 0x1

    .line 132
    .line 133
    aget-byte v2, p0, v2

    .line 134
    .line 135
    and-int/lit16 v10, v2, 0xc0

    .line 136
    .line 137
    if-ne v10, v4, :cond_c

    .line 138
    .line 139
    aget-byte v1, p0, v1

    .line 140
    .line 141
    and-int/lit16 v5, v1, 0xc0

    .line 142
    .line 143
    if-ne v5, v4, :cond_b

    .line 144
    .line 145
    .line 146
    const v3, -0x1e080

    .line 147
    xor-int/2addr v1, v3

    .line 148
    .line 149
    shl-int/lit8 v2, v2, 0x6

    .line 150
    xor-int/2addr v1, v2

    .line 151
    .line 152
    shl-int/lit8 v0, v0, 0xc

    .line 153
    xor-int/2addr v0, v1

    .line 154
    .line 155
    const/16 v1, 0x800

    .line 156
    .line 157
    if-ge v0, v1, :cond_9

    .line 158
    :goto_5
    int-to-char v0, v6

    .line 159
    .line 160
    .line 161
    :goto_6
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    goto :goto_7

    .line 167
    .line 168
    :cond_9
    if-gt v8, v0, :cond_a

    .line 169
    .line 170
    if-ge v0, v7, :cond_a

    .line 171
    goto :goto_5

    .line 172
    :cond_a
    int-to-char v0, v0

    .line 173
    goto :goto_6

    .line 174
    :goto_7
    move v3, v9

    .line 175
    goto :goto_4

    .line 176
    :cond_b
    int-to-char v0, v6

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    .line 183
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    goto :goto_4

    .line 185
    :cond_c
    int-to-char v0, v6

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto :goto_2

    .line 194
    .line 195
    :cond_d
    shr-int/lit8 v1, v0, 0x3

    .line 196
    .line 197
    if-ne v1, v2, :cond_16

    .line 198
    .line 199
    add-int/lit8 v1, p1, 0x3

    .line 200
    .line 201
    if-gt p2, v1, :cond_e

    .line 202
    .line 203
    .line 204
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    .line 208
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    add-int/lit8 v0, p1, 0x1

    .line 211
    .line 212
    if-le p2, v0, :cond_3

    .line 213
    .line 214
    aget-byte v0, p0, v0

    .line 215
    .line 216
    and-int/lit16 v0, v0, 0xc0

    .line 217
    .line 218
    if-ne v0, v4, :cond_3

    .line 219
    .line 220
    add-int/lit8 v0, p1, 0x2

    .line 221
    .line 222
    if-le p2, v0, :cond_6

    .line 223
    .line 224
    aget-byte v0, p0, v0

    .line 225
    .line 226
    and-int/lit16 v0, v0, 0xc0

    .line 227
    .line 228
    if-ne v0, v4, :cond_6

    .line 229
    :goto_8
    goto :goto_7

    .line 230
    .line 231
    :cond_e
    add-int/lit8 v2, p1, 0x1

    .line 232
    .line 233
    aget-byte v2, p0, v2

    .line 234
    .line 235
    and-int/lit16 v10, v2, 0xc0

    .line 236
    .line 237
    if-ne v10, v4, :cond_15

    .line 238
    .line 239
    add-int/lit8 v5, p1, 0x2

    .line 240
    .line 241
    aget-byte v5, p0, v5

    .line 242
    .line 243
    and-int/lit16 v10, v5, 0xc0

    .line 244
    .line 245
    if-ne v10, v4, :cond_14

    .line 246
    .line 247
    aget-byte v1, p0, v1

    .line 248
    .line 249
    and-int/lit16 v3, v1, 0xc0

    .line 250
    .line 251
    if-ne v3, v4, :cond_13

    .line 252
    .line 253
    .line 254
    const v3, 0x381f80

    .line 255
    xor-int/2addr v1, v3

    .line 256
    .line 257
    shl-int/lit8 v3, v5, 0x6

    .line 258
    xor-int/2addr v1, v3

    .line 259
    .line 260
    shl-int/lit8 v2, v2, 0xc

    .line 261
    xor-int/2addr v1, v2

    .line 262
    .line 263
    shl-int/lit8 v0, v0, 0x12

    .line 264
    xor-int/2addr v0, v1

    .line 265
    .line 266
    .line 267
    const v1, 0x10ffff

    .line 268
    .line 269
    if-le v0, v1, :cond_10

    .line 270
    .line 271
    .line 272
    :cond_f
    :goto_9
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    .line 276
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    goto :goto_a

    .line 278
    .line 279
    :cond_10
    if-gt v8, v0, :cond_11

    .line 280
    .line 281
    if-ge v0, v7, :cond_11

    .line 282
    goto :goto_9

    .line 283
    .line 284
    :cond_11
    const/high16 v1, 0x10000

    .line 285
    .line 286
    if-ge v0, v1, :cond_12

    .line 287
    goto :goto_9

    .line 288
    .line 289
    :cond_12
    if-eq v0, v6, :cond_f

    .line 290
    .line 291
    ushr-int/lit8 v1, v0, 0xa

    .line 292
    .line 293
    .line 294
    const v2, 0xd7c0

    .line 295
    add-int/2addr v1, v2

    .line 296
    int-to-char v1, v1

    .line 297
    .line 298
    .line 299
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 300
    move-result-object v1

    .line 301
    .line 302
    .line 303
    invoke-interface {p3, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    and-int/lit16 v0, v0, 0x3ff

    .line 306
    .line 307
    .line 308
    const v1, 0xdc00

    .line 309
    add-int/2addr v0, v1

    .line 310
    int-to-char v0, v0

    .line 311
    .line 312
    .line 313
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    .line 317
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_a
    const/4 v3, 0x4

    .line 319
    .line 320
    goto/16 :goto_4

    .line 321
    .line 322
    .line 323
    :cond_13
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 324
    move-result-object v0

    .line 325
    .line 326
    .line 327
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    goto :goto_8

    .line 329
    .line 330
    .line 331
    :cond_14
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    .line 335
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    .line 340
    :cond_15
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 341
    move-result-object v0

    .line 342
    .line 343
    .line 344
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    .line 349
    :cond_16
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 350
    move-result-object v0

    .line 351
    .line 352
    .line 353
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    add-int/lit8 p1, p1, 0x1

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    :cond_17
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILe8/l;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Le8/l<",
            "-",
            "Ljava/lang/Byte;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "yield"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v0

    .line 17
    .line 18
    const/16 v1, 0x80

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->l(II)I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-gez v2, :cond_1

    .line 25
    int-to-byte v0, v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    :goto_1
    if-ge p1, p2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->l(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    if-gez v0, :cond_0

    .line 47
    .line 48
    add-int/lit8 v0, p1, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 52
    move-result p1

    .line 53
    int-to-byte p1, p1

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-interface {p3, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move p1, v0

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_1
    const/16 v2, 0x800

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->l(II)I

    .line 68
    move-result v2

    .line 69
    .line 70
    if-gez v2, :cond_2

    .line 71
    .line 72
    shr-int/lit8 v2, v0, 0x6

    .line 73
    .line 74
    or-int/lit16 v2, v2, 0xc0

    .line 75
    int-to-byte v2, v2

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-interface {p3, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    and-int/lit8 v0, v0, 0x3f

    .line 85
    or-int/2addr v0, v1

    .line 86
    int-to-byte v0, v0

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_2
    const v2, 0xd800

    .line 100
    .line 101
    const/16 v3, 0x3f

    .line 102
    .line 103
    if-gt v2, v0, :cond_4

    .line 104
    .line 105
    .line 106
    const v2, 0xe000

    .line 107
    .line 108
    if-ge v0, v2, :cond_4

    .line 109
    .line 110
    .line 111
    const v4, 0xdbff

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->l(II)I

    .line 115
    move-result v4

    .line 116
    .line 117
    if-gtz v4, :cond_3

    .line 118
    .line 119
    add-int/lit8 v4, p1, 0x1

    .line 120
    .line 121
    if-le p2, v4, :cond_3

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 125
    move-result v5

    .line 126
    .line 127
    .line 128
    const v6, 0xdc00

    .line 129
    .line 130
    if-gt v6, v5, :cond_3

    .line 131
    .line 132
    if-ge v5, v2, :cond_3

    .line 133
    .line 134
    shl-int/lit8 v0, v0, 0xa

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 138
    move-result v2

    .line 139
    add-int/2addr v0, v2

    .line 140
    .line 141
    .line 142
    const v2, -0x35fdc00

    .line 143
    add-int/2addr v0, v2

    .line 144
    .line 145
    shr-int/lit8 v2, v0, 0x12

    .line 146
    .line 147
    or-int/lit16 v2, v2, 0xf0

    .line 148
    int-to-byte v2, v2

    .line 149
    .line 150
    .line 151
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    .line 155
    invoke-interface {p3, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    shr-int/lit8 v2, v0, 0xc

    .line 158
    and-int/2addr v2, v3

    .line 159
    or-int/2addr v2, v1

    .line 160
    int-to-byte v2, v2

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-interface {p3, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    shr-int/lit8 v2, v0, 0x6

    .line 170
    and-int/2addr v2, v3

    .line 171
    or-int/2addr v2, v1

    .line 172
    int-to-byte v2, v2

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 176
    move-result-object v2

    .line 177
    .line 178
    .line 179
    invoke-interface {p3, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    and-int/2addr v0, v3

    .line 181
    or-int/2addr v0, v1

    .line 182
    int-to-byte v0, v0

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    .line 189
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    add-int/lit8 p1, p1, 0x2

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    .line 196
    :cond_3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    goto :goto_2

    .line 202
    .line 203
    :cond_4
    shr-int/lit8 v2, v0, 0xc

    .line 204
    .line 205
    or-int/lit16 v2, v2, 0xe0

    .line 206
    int-to-byte v2, v2

    .line 207
    .line 208
    .line 209
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    invoke-interface {p3, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    shr-int/lit8 v2, v0, 0x6

    .line 216
    and-int/2addr v2, v3

    .line 217
    or-int/2addr v2, v1

    .line 218
    int-to-byte v2, v2

    .line 219
    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 222
    move-result-object v2

    .line 223
    .line 224
    .line 225
    invoke-interface {p3, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    and-int/lit8 v0, v0, 0x3f

    .line 228
    or-int/2addr v0, v1

    .line 229
    int-to-byte v0, v0

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    :cond_5
    return-void
.end method

.method public static final processUtf8CodePoints([BIILe8/l;)V
    .locals 11
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "yield"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_16

    .line 13
    .line 14
    aget-byte v0, p0, p1

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    :goto_1
    if-ge p1, p2, :cond_0

    .line 28
    .line 29
    aget-byte v0, p0, p1

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    shr-int/lit8 v1, v0, 0x5

    .line 44
    const/4 v2, -0x2

    .line 45
    const/4 v3, 0x2

    .line 46
    .line 47
    const/16 v4, 0x80

    .line 48
    const/4 v5, 0x1

    .line 49
    .line 50
    .line 51
    const v6, 0xfffd

    .line 52
    .line 53
    if-ne v1, v2, :cond_7

    .line 54
    .line 55
    add-int/lit8 v1, p1, 0x1

    .line 56
    .line 57
    if-gt p2, v1, :cond_4

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    :goto_2
    move v3, v5

    .line 66
    goto :goto_4

    .line 67
    .line 68
    :cond_4
    aget-byte v1, p0, v1

    .line 69
    .line 70
    and-int/lit16 v2, v1, 0xc0

    .line 71
    .line 72
    if-ne v2, v4, :cond_2

    .line 73
    .line 74
    xor-int/lit16 v1, v1, 0xf80

    .line 75
    .line 76
    shl-int/lit8 v0, v0, 0x6

    .line 77
    xor-int/2addr v0, v1

    .line 78
    .line 79
    if-ge v0, v4, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    :goto_3
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_4

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v0

    .line 92
    goto :goto_3

    .line 93
    :cond_6
    :goto_4
    add-int/2addr p1, v3

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_7
    shr-int/lit8 v1, v0, 0x4

    .line 97
    .line 98
    .line 99
    const v7, 0xe000

    .line 100
    .line 101
    .line 102
    const v8, 0xd800

    .line 103
    const/4 v9, 0x3

    .line 104
    .line 105
    if-ne v1, v2, :cond_d

    .line 106
    .line 107
    add-int/lit8 v1, p1, 0x2

    .line 108
    .line 109
    if-gt p2, v1, :cond_8

    .line 110
    .line 111
    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    add-int/lit8 v0, p1, 0x1

    .line 119
    .line 120
    if-le p2, v0, :cond_3

    .line 121
    .line 122
    aget-byte v0, p0, v0

    .line 123
    .line 124
    and-int/lit16 v0, v0, 0xc0

    .line 125
    .line 126
    if-ne v0, v4, :cond_3

    .line 127
    goto :goto_4

    .line 128
    .line 129
    :cond_8
    add-int/lit8 v2, p1, 0x1

    .line 130
    .line 131
    aget-byte v2, p0, v2

    .line 132
    .line 133
    and-int/lit16 v10, v2, 0xc0

    .line 134
    .line 135
    if-ne v10, v4, :cond_c

    .line 136
    .line 137
    aget-byte v1, p0, v1

    .line 138
    .line 139
    and-int/lit16 v5, v1, 0xc0

    .line 140
    .line 141
    if-ne v5, v4, :cond_b

    .line 142
    .line 143
    .line 144
    const v3, -0x1e080

    .line 145
    xor-int/2addr v1, v3

    .line 146
    .line 147
    shl-int/lit8 v2, v2, 0x6

    .line 148
    xor-int/2addr v1, v2

    .line 149
    .line 150
    shl-int/lit8 v0, v0, 0xc

    .line 151
    xor-int/2addr v0, v1

    .line 152
    .line 153
    const/16 v1, 0x800

    .line 154
    .line 155
    if-ge v0, v1, :cond_9

    .line 156
    .line 157
    .line 158
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    :goto_6
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    goto :goto_7

    .line 164
    .line 165
    :cond_9
    if-gt v8, v0, :cond_a

    .line 166
    .line 167
    if-ge v0, v7, :cond_a

    .line 168
    goto :goto_5

    .line 169
    .line 170
    .line 171
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v0

    .line 173
    goto :goto_6

    .line 174
    :goto_7
    move v3, v9

    .line 175
    goto :goto_4

    .line 176
    .line 177
    .line 178
    :cond_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    goto :goto_4

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    .line 190
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    goto :goto_2

    .line 192
    .line 193
    :cond_d
    shr-int/lit8 v1, v0, 0x3

    .line 194
    .line 195
    if-ne v1, v2, :cond_15

    .line 196
    .line 197
    add-int/lit8 v1, p1, 0x3

    .line 198
    .line 199
    if-gt p2, v1, :cond_e

    .line 200
    .line 201
    .line 202
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    add-int/lit8 v0, p1, 0x1

    .line 209
    .line 210
    if-le p2, v0, :cond_3

    .line 211
    .line 212
    aget-byte v0, p0, v0

    .line 213
    .line 214
    and-int/lit16 v0, v0, 0xc0

    .line 215
    .line 216
    if-ne v0, v4, :cond_3

    .line 217
    .line 218
    add-int/lit8 v0, p1, 0x2

    .line 219
    .line 220
    if-le p2, v0, :cond_6

    .line 221
    .line 222
    aget-byte v0, p0, v0

    .line 223
    .line 224
    and-int/lit16 v0, v0, 0xc0

    .line 225
    .line 226
    if-ne v0, v4, :cond_6

    .line 227
    :goto_8
    goto :goto_7

    .line 228
    .line 229
    :cond_e
    add-int/lit8 v2, p1, 0x1

    .line 230
    .line 231
    aget-byte v2, p0, v2

    .line 232
    .line 233
    and-int/lit16 v10, v2, 0xc0

    .line 234
    .line 235
    if-ne v10, v4, :cond_14

    .line 236
    .line 237
    add-int/lit8 v5, p1, 0x2

    .line 238
    .line 239
    aget-byte v5, p0, v5

    .line 240
    .line 241
    and-int/lit16 v10, v5, 0xc0

    .line 242
    .line 243
    if-ne v10, v4, :cond_13

    .line 244
    .line 245
    aget-byte v1, p0, v1

    .line 246
    .line 247
    and-int/lit16 v3, v1, 0xc0

    .line 248
    .line 249
    if-ne v3, v4, :cond_12

    .line 250
    .line 251
    .line 252
    const v3, 0x381f80

    .line 253
    xor-int/2addr v1, v3

    .line 254
    .line 255
    shl-int/lit8 v3, v5, 0x6

    .line 256
    xor-int/2addr v1, v3

    .line 257
    .line 258
    shl-int/lit8 v2, v2, 0xc

    .line 259
    xor-int/2addr v1, v2

    .line 260
    .line 261
    shl-int/lit8 v0, v0, 0x12

    .line 262
    xor-int/2addr v0, v1

    .line 263
    .line 264
    .line 265
    const v1, 0x10ffff

    .line 266
    .line 267
    if-le v0, v1, :cond_f

    .line 268
    .line 269
    .line 270
    :goto_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    move-result-object v0

    .line 272
    .line 273
    .line 274
    :goto_a
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    goto :goto_b

    .line 276
    .line 277
    :cond_f
    if-gt v8, v0, :cond_10

    .line 278
    .line 279
    if-ge v0, v7, :cond_10

    .line 280
    goto :goto_9

    .line 281
    .line 282
    :cond_10
    const/high16 v1, 0x10000

    .line 283
    .line 284
    if-ge v0, v1, :cond_11

    .line 285
    goto :goto_9

    .line 286
    .line 287
    .line 288
    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    move-result-object v0

    .line 290
    goto :goto_a

    .line 291
    :goto_b
    const/4 v3, 0x4

    .line 292
    .line 293
    goto/16 :goto_4

    .line 294
    .line 295
    .line 296
    :cond_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    .line 300
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    goto :goto_8

    .line 302
    .line 303
    .line 304
    :cond_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    .line 308
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    goto/16 :goto_4

    .line 311
    .line 312
    .line 313
    :cond_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    .line 317
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    goto/16 :goto_2

    .line 320
    .line 321
    .line 322
    :cond_15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    move-result-object v0

    .line 324
    .line 325
    .line 326
    invoke-interface {p3, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    add-int/lit8 p1, p1, 0x1

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    :cond_16
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final size(Ljava/lang/String;II)J
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_9

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_7

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    if-ge v2, v3, :cond_0

    add-long/2addr v0, v4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    const/4 v2, 0x2

    :goto_2
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_6

    const v3, 0xdfff

    if-le v2, v3, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_3

    .line 5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const v8, 0xdbff

    if-gt v2, v8, :cond_5

    const v2, 0xdc00

    if-lt v7, v2, :cond_5

    if-le v7, v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    :goto_4
    add-long/2addr v0, v4

    move p1, v6

    goto :goto_0

    :cond_6
    :goto_5
    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    return-wide v0

    .line 6
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "beginIndex < 0: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result p2

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p0, p1, p2}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method
