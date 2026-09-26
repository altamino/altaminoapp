.class public final Lcom/google/zxing/datamatrix/encoder/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method public static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/j;->f(C)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    if-ge p1, v0, :cond_1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    if-ge p1, v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/l;Lcom/google/zxing/b;Lcom/google/zxing/b;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/g;

    .line 4
    .line 5
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/a;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/a;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/c;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/c;-><init>()V

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    aput-object v1, v0, v3

    .line 20
    .line 21
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/m;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/m;-><init>()V

    .line 25
    const/4 v4, 0x2

    .line 26
    .line 27
    aput-object v1, v0, v4

    .line 28
    .line 29
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/n;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/n;-><init>()V

    .line 33
    const/4 v5, 0x3

    .line 34
    .line 35
    aput-object v1, v0, v5

    .line 36
    .line 37
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/f;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/f;-><init>()V

    .line 41
    const/4 v5, 0x4

    .line 42
    .line 43
    aput-object v1, v0, v5

    .line 44
    .line 45
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/b;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/b;-><init>()V

    .line 49
    const/4 v6, 0x5

    .line 50
    .line 51
    aput-object v1, v0, v6

    .line 52
    .line 53
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/h;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/google/zxing/datamatrix/encoder/h;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/google/zxing/datamatrix/encoder/h;->n(Lcom/google/zxing/datamatrix/encoder/l;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/h;->l(Lcom/google/zxing/b;Lcom/google/zxing/b;)V

    .line 63
    .line 64
    const-string p1, "[)>\u001e05\u001d"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    const-string p2, "\u001e\u0004"

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    const/16 p0, 0xec

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/h;->m(I)V

    .line 87
    .line 88
    iget p0, v1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 89
    .line 90
    add-int/lit8 p0, p0, 0x7

    .line 91
    .line 92
    iput p0, v1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    move-result p1

    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 105
    move-result p0

    .line 106
    .line 107
    if-eqz p0, :cond_1

    .line 108
    .line 109
    const/16 p0, 0xed

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/h;->m(I)V

    .line 116
    .line 117
    iget p0, v1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 118
    .line 119
    add-int/lit8 p0, p0, 0x7

    .line 120
    .line 121
    iput p0, v1, Lcom/google/zxing/datamatrix/encoder/h;->pos:I

    .line 122
    .line 123
    .line 124
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->i()Z

    .line 125
    move-result p0

    .line 126
    .line 127
    if-eqz p0, :cond_2

    .line 128
    .line 129
    aget-object p0, v0, v2

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, v1}, Lcom/google/zxing/datamatrix/encoder/g;->a(Lcom/google/zxing/datamatrix/encoder/h;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->e()I

    .line 136
    move-result p0

    .line 137
    .line 138
    if-ltz p0, :cond_1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->e()I

    .line 142
    move-result v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->j()V

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->a()I

    .line 150
    move-result p0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->p()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->g()Lcom/google/zxing/datamatrix/encoder/k;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->a()I

    .line 161
    move-result p1

    .line 162
    .line 163
    if-ge p0, p1, :cond_3

    .line 164
    .line 165
    if-eqz v2, :cond_3

    .line 166
    .line 167
    if-eq v2, v6, :cond_3

    .line 168
    .line 169
    if-eq v2, v5, :cond_3

    .line 170
    .line 171
    const/16 p0, 0xfe

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/h;->r(C)V

    .line 175
    .line 176
    .line 177
    :cond_3
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->b()Ljava/lang/StringBuilder;

    .line 178
    move-result-object p0

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 182
    move-result p2

    .line 183
    .line 184
    const/16 p3, 0x81

    .line 185
    .line 186
    if-ge p2, p1, :cond_4

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 193
    move-result p2

    .line 194
    .line 195
    if-ge p2, p1, :cond_5

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 199
    move-result p2

    .line 200
    add-int/2addr p2, v3

    .line 201
    .line 202
    .line 203
    invoke-static {p3, p2}, Lcom/google/zxing/datamatrix/encoder/j;->o(CI)C

    .line 204
    move-result p2

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    goto :goto_1

    .line 209
    .line 210
    .line 211
    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/h;->b()Ljava/lang/StringBuilder;

    .line 212
    move-result-object p0

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 217
    return-object p0
.end method

.method private static c([F[II[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/4 v2, 0x6

    .line 7
    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    aget v2, p0, v1

    .line 11
    float-to-double v2, v2

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 15
    move-result-wide v2

    .line 16
    double-to-int v2, v2

    .line 17
    .line 18
    aput v2, p1, v1

    .line 19
    .line 20
    if-le p2, v2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 24
    move p2, v2

    .line 25
    .line 26
    :cond_0
    if-ne p2, v2, :cond_1

    .line 27
    .line 28
    aget-byte v2, p3, v1

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    int-to-byte v2, v2

    .line 32
    .line 33
    aput-byte v2, p3, v1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return p2
.end method

.method private static d([B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x6

    .line 4
    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-byte v2, p0, v0

    .line 8
    add-int/2addr v1, v2

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return v1
.end method

.method static e(C)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    move-result v2

    .line 14
    .line 15
    rsub-int/lit8 v2, v2, 0x4

    .line 16
    .line 17
    const-string v3, "0000"

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "Illegal character: "

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p0, " (0x"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const/16 p0, 0x29

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v1
.end method

.method static f(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static g(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static h(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static i(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static j(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static k(C)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/j;->m(C)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/16 v0, 0x30

    .line 13
    .line 14
    if-lt p0, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x39

    .line 17
    .line 18
    if-le p0, v0, :cond_2

    .line 19
    .line 20
    :cond_0
    const/16 v0, 0x41

    .line 21
    .line 22
    if-lt p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x5a

    .line 25
    .line 26
    if-gt p0, v0, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method private static l(C)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method private static m(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static n(Ljava/lang/CharSequence;II)I
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    return p2

    .line 12
    :cond_0
    const/4 v2, 0x6

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    new-array v3, v2, [F

    .line 17
    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    new-array v3, v2, [F

    .line 23
    .line 24
    .line 25
    fill-array-data v3, :array_1

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    aput v4, v3, p2

    .line 29
    :goto_0
    const/4 v4, 0x0

    .line 30
    move v5, v4

    .line 31
    .line 32
    :goto_1
    add-int v6, v1, v5

    .line 33
    .line 34
    .line 35
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 36
    move-result v7

    .line 37
    .line 38
    .line 39
    const v8, 0x7fffffff

    .line 40
    const/4 v9, 0x5

    .line 41
    const/4 v10, 0x2

    .line 42
    const/4 v11, 0x3

    .line 43
    const/4 v12, 0x4

    .line 44
    const/4 v13, 0x1

    .line 45
    .line 46
    if-ne v6, v7, :cond_7

    .line 47
    .line 48
    new-array v0, v2, [B

    .line 49
    .line 50
    new-array v1, v2, [I

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v1, v8, v0}, Lcom/google/zxing/datamatrix/encoder/j;->c([F[II[B)I

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/j;->d([B)I

    .line 58
    move-result v3

    .line 59
    .line 60
    aget v1, v1, v4

    .line 61
    .line 62
    if-ne v1, v2, :cond_2

    .line 63
    return v4

    .line 64
    .line 65
    :cond_2
    if-ne v3, v13, :cond_3

    .line 66
    .line 67
    aget-byte v1, v0, v9

    .line 68
    .line 69
    if-lez v1, :cond_3

    .line 70
    return v9

    .line 71
    .line 72
    :cond_3
    if-ne v3, v13, :cond_4

    .line 73
    .line 74
    aget-byte v1, v0, v12

    .line 75
    .line 76
    if-lez v1, :cond_4

    .line 77
    return v12

    .line 78
    .line 79
    :cond_4
    if-ne v3, v13, :cond_5

    .line 80
    .line 81
    aget-byte v1, v0, v10

    .line 82
    .line 83
    if-lez v1, :cond_5

    .line 84
    return v10

    .line 85
    .line 86
    :cond_5
    if-ne v3, v13, :cond_6

    .line 87
    .line 88
    aget-byte v0, v0, v11

    .line 89
    .line 90
    if-lez v0, :cond_6

    .line 91
    return v11

    .line 92
    :cond_6
    return v13

    .line 93
    .line 94
    .line 95
    :cond_7
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 96
    move-result v6

    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    .line 101
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->f(C)Z

    .line 102
    move-result v7

    .line 103
    .line 104
    const/high16 v14, 0x3f800000    # 1.0f

    .line 105
    .line 106
    if-eqz v7, :cond_8

    .line 107
    .line 108
    aget v7, v3, v4

    .line 109
    .line 110
    const/high16 v15, 0x3f000000    # 0.5f

    .line 111
    add-float/2addr v7, v15

    .line 112
    .line 113
    aput v7, v3, v4

    .line 114
    goto :goto_2

    .line 115
    .line 116
    .line 117
    :cond_8
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->g(C)Z

    .line 118
    move-result v7

    .line 119
    .line 120
    if-eqz v7, :cond_9

    .line 121
    .line 122
    aget v7, v3, v4

    .line 123
    float-to-double v8, v7

    .line 124
    .line 125
    .line 126
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 127
    move-result-wide v7

    .line 128
    double-to-float v7, v7

    .line 129
    .line 130
    aput v7, v3, v4

    .line 131
    .line 132
    const/high16 v8, 0x40000000    # 2.0f

    .line 133
    add-float/2addr v7, v8

    .line 134
    .line 135
    aput v7, v3, v4

    .line 136
    goto :goto_2

    .line 137
    .line 138
    :cond_9
    aget v7, v3, v4

    .line 139
    float-to-double v7, v7

    .line 140
    .line 141
    .line 142
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 143
    move-result-wide v7

    .line 144
    double-to-float v7, v7

    .line 145
    .line 146
    aput v7, v3, v4

    .line 147
    add-float/2addr v7, v14

    .line 148
    .line 149
    aput v7, v3, v4

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->h(C)Z

    .line 153
    move-result v7

    .line 154
    .line 155
    .line 156
    const v8, 0x3faaaaab

    .line 157
    .line 158
    .line 159
    const v9, 0x402aaaab

    .line 160
    .line 161
    .line 162
    const v16, 0x3f2aaaab

    .line 163
    .line 164
    if-eqz v7, :cond_a

    .line 165
    .line 166
    aget v7, v3, v13

    .line 167
    .line 168
    add-float v7, v7, v16

    .line 169
    .line 170
    aput v7, v3, v13

    .line 171
    goto :goto_3

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->g(C)Z

    .line 175
    move-result v7

    .line 176
    .line 177
    if-eqz v7, :cond_b

    .line 178
    .line 179
    aget v7, v3, v13

    .line 180
    add-float/2addr v7, v9

    .line 181
    .line 182
    aput v7, v3, v13

    .line 183
    goto :goto_3

    .line 184
    .line 185
    :cond_b
    aget v7, v3, v13

    .line 186
    add-float/2addr v7, v8

    .line 187
    .line 188
    aput v7, v3, v13

    .line 189
    .line 190
    .line 191
    :goto_3
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->j(C)Z

    .line 192
    move-result v7

    .line 193
    .line 194
    if-eqz v7, :cond_c

    .line 195
    .line 196
    aget v7, v3, v10

    .line 197
    .line 198
    add-float v7, v7, v16

    .line 199
    .line 200
    aput v7, v3, v10

    .line 201
    goto :goto_4

    .line 202
    .line 203
    .line 204
    :cond_c
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->g(C)Z

    .line 205
    move-result v7

    .line 206
    .line 207
    if-eqz v7, :cond_d

    .line 208
    .line 209
    aget v7, v3, v10

    .line 210
    add-float/2addr v7, v9

    .line 211
    .line 212
    aput v7, v3, v10

    .line 213
    goto :goto_4

    .line 214
    .line 215
    :cond_d
    aget v7, v3, v10

    .line 216
    add-float/2addr v7, v8

    .line 217
    .line 218
    aput v7, v3, v10

    .line 219
    .line 220
    .line 221
    :goto_4
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->k(C)Z

    .line 222
    move-result v7

    .line 223
    .line 224
    if-eqz v7, :cond_e

    .line 225
    .line 226
    aget v7, v3, v11

    .line 227
    .line 228
    add-float v7, v7, v16

    .line 229
    .line 230
    aput v7, v3, v11

    .line 231
    goto :goto_5

    .line 232
    .line 233
    .line 234
    :cond_e
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->g(C)Z

    .line 235
    move-result v7

    .line 236
    .line 237
    if-eqz v7, :cond_f

    .line 238
    .line 239
    aget v7, v3, v11

    .line 240
    .line 241
    .line 242
    const v8, 0x408aaaab

    .line 243
    add-float/2addr v7, v8

    .line 244
    .line 245
    aput v7, v3, v11

    .line 246
    goto :goto_5

    .line 247
    .line 248
    :cond_f
    aget v7, v3, v11

    .line 249
    .line 250
    .line 251
    const v8, 0x40555555

    .line 252
    add-float/2addr v7, v8

    .line 253
    .line 254
    aput v7, v3, v11

    .line 255
    .line 256
    .line 257
    :goto_5
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->i(C)Z

    .line 258
    move-result v7

    .line 259
    .line 260
    if-eqz v7, :cond_10

    .line 261
    .line 262
    aget v7, v3, v12

    .line 263
    .line 264
    const/high16 v8, 0x3f400000    # 0.75f

    .line 265
    add-float/2addr v7, v8

    .line 266
    .line 267
    aput v7, v3, v12

    .line 268
    goto :goto_6

    .line 269
    .line 270
    .line 271
    :cond_10
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->g(C)Z

    .line 272
    move-result v7

    .line 273
    .line 274
    if-eqz v7, :cond_11

    .line 275
    .line 276
    aget v7, v3, v12

    .line 277
    .line 278
    const/high16 v8, 0x40880000    # 4.25f

    .line 279
    add-float/2addr v7, v8

    .line 280
    .line 281
    aput v7, v3, v12

    .line 282
    goto :goto_6

    .line 283
    .line 284
    :cond_11
    aget v7, v3, v12

    .line 285
    .line 286
    const/high16 v8, 0x40500000    # 3.25f

    .line 287
    add-float/2addr v7, v8

    .line 288
    .line 289
    aput v7, v3, v12

    .line 290
    .line 291
    .line 292
    :goto_6
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/j;->l(C)Z

    .line 293
    move-result v6

    .line 294
    .line 295
    if-eqz v6, :cond_12

    .line 296
    const/4 v6, 0x5

    .line 297
    .line 298
    aget v7, v3, v6

    .line 299
    .line 300
    const/high16 v8, 0x40800000    # 4.0f

    .line 301
    add-float/2addr v7, v8

    .line 302
    .line 303
    aput v7, v3, v6

    .line 304
    goto :goto_7

    .line 305
    :cond_12
    const/4 v6, 0x5

    .line 306
    .line 307
    aget v7, v3, v6

    .line 308
    add-float/2addr v7, v14

    .line 309
    .line 310
    aput v7, v3, v6

    .line 311
    .line 312
    :goto_7
    if-lt v5, v12, :cond_1c

    .line 313
    .line 314
    new-array v7, v2, [I

    .line 315
    .line 316
    new-array v8, v2, [B

    .line 317
    .line 318
    .line 319
    const v9, 0x7fffffff

    .line 320
    .line 321
    .line 322
    invoke-static {v3, v7, v9, v8}, Lcom/google/zxing/datamatrix/encoder/j;->c([F[II[B)I

    .line 323
    .line 324
    .line 325
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/j;->d([B)I

    .line 326
    move-result v9

    .line 327
    .line 328
    aget v14, v7, v4

    .line 329
    .line 330
    aget v15, v7, v6

    .line 331
    move v6, v15

    .line 332
    .line 333
    if-ge v14, v6, :cond_13

    .line 334
    .line 335
    aget v2, v7, v13

    .line 336
    .line 337
    if-ge v14, v2, :cond_13

    .line 338
    .line 339
    aget v2, v7, v10

    .line 340
    .line 341
    if-ge v14, v2, :cond_13

    .line 342
    .line 343
    aget v2, v7, v11

    .line 344
    .line 345
    if-ge v14, v2, :cond_13

    .line 346
    .line 347
    aget v2, v7, v12

    .line 348
    .line 349
    if-ge v14, v2, :cond_13

    .line 350
    return v4

    .line 351
    .line 352
    :cond_13
    if-lt v6, v14, :cond_14

    .line 353
    .line 354
    aget-byte v2, v8, v13

    .line 355
    .line 356
    aget-byte v17, v8, v10

    .line 357
    .line 358
    add-int v2, v2, v17

    .line 359
    .line 360
    aget-byte v18, v8, v11

    .line 361
    .line 362
    add-int v2, v2, v18

    .line 363
    .line 364
    aget-byte v8, v8, v12

    .line 365
    add-int/2addr v2, v8

    .line 366
    .line 367
    if-nez v2, :cond_15

    .line 368
    :cond_14
    const/4 v0, 0x5

    .line 369
    goto :goto_9

    .line 370
    .line 371
    :cond_15
    if-ne v9, v13, :cond_16

    .line 372
    .line 373
    if-lez v8, :cond_16

    .line 374
    return v12

    .line 375
    .line 376
    :cond_16
    if-ne v9, v13, :cond_17

    .line 377
    .line 378
    if-lez v17, :cond_17

    .line 379
    return v10

    .line 380
    .line 381
    :cond_17
    if-ne v9, v13, :cond_18

    .line 382
    .line 383
    if-lez v18, :cond_18

    .line 384
    return v11

    .line 385
    .line 386
    :cond_18
    aget v2, v7, v13

    .line 387
    .line 388
    add-int/lit8 v8, v2, 0x1

    .line 389
    .line 390
    if-ge v8, v14, :cond_1c

    .line 391
    .line 392
    add-int/lit8 v8, v2, 0x1

    .line 393
    .line 394
    if-ge v8, v6, :cond_1c

    .line 395
    .line 396
    add-int/lit8 v6, v2, 0x1

    .line 397
    .line 398
    aget v8, v7, v12

    .line 399
    .line 400
    if-ge v6, v8, :cond_1c

    .line 401
    .line 402
    add-int/lit8 v6, v2, 0x1

    .line 403
    .line 404
    aget v8, v7, v10

    .line 405
    .line 406
    if-ge v6, v8, :cond_1c

    .line 407
    .line 408
    aget v6, v7, v11

    .line 409
    .line 410
    if-ge v2, v6, :cond_19

    .line 411
    return v13

    .line 412
    .line 413
    :cond_19
    if-ne v2, v6, :cond_1c

    .line 414
    add-int/2addr v1, v5

    .line 415
    add-int/2addr v1, v13

    .line 416
    .line 417
    .line 418
    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 419
    move-result v2

    .line 420
    .line 421
    if-ge v1, v2, :cond_1b

    .line 422
    .line 423
    .line 424
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 425
    move-result v2

    .line 426
    .line 427
    .line 428
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/j;->m(C)Z

    .line 429
    move-result v3

    .line 430
    .line 431
    if-eqz v3, :cond_1a

    .line 432
    return v11

    .line 433
    .line 434
    .line 435
    :cond_1a
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/j;->k(C)Z

    .line 436
    move-result v2

    .line 437
    .line 438
    if-eqz v2, :cond_1b

    .line 439
    .line 440
    add-int/lit8 v1, v1, 0x1

    .line 441
    goto :goto_8

    .line 442
    :cond_1b
    return v13

    .line 443
    :goto_9
    return v0

    .line 444
    :cond_1c
    const/4 v2, 0x6

    .line 445
    .line 446
    goto/16 :goto_1

    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static o(CI)C
    .locals 0

    .line 1
    .line 2
    mul-int/lit16 p1, p1, 0x95

    .line 3
    .line 4
    rem-int/lit16 p1, p1, 0xfd

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    add-int/2addr p0, p1

    .line 8
    .line 9
    const/16 p1, 0xfe

    .line 10
    .line 11
    if-gt p0, p1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    add-int/lit16 p0, p0, -0xfe

    .line 15
    :goto_0
    int-to-char p0, p0

    .line 16
    return p0
.end method
