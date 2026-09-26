.class public final Lcom/google/zxing/oned/d;
.super Lcom/google/zxing/oned/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/d$a;
    }
.end annotation


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/oned/o;-><init>()V

    .line 4
    return-void
.end method

.method private static f(Ljava/lang/CharSequence;II)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/zxing/oned/d;->g(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/d$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/google/zxing/oned/d$a;->ONE_DIGIT:Lcom/google/zxing/oned/d$a;

    .line 7
    .line 8
    const/16 v2, 0x64

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return v2

    .line 12
    .line 13
    :cond_0
    sget-object v3, Lcom/google/zxing/oned/d$a;->UNCODABLE:Lcom/google/zxing/oned/d$a;

    .line 14
    .line 15
    if-ne v0, v3, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-ge p1, v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    move-result p0

    .line 26
    .line 27
    const/16 p1, 0x20

    .line 28
    .line 29
    const/16 v0, 0x65

    .line 30
    .line 31
    if-lt p0, p1, :cond_1

    .line 32
    .line 33
    if-ne p2, v0, :cond_2

    .line 34
    .line 35
    const/16 p1, 0x60

    .line 36
    .line 37
    if-ge p0, p1, :cond_2

    .line 38
    :cond_1
    return v0

    .line 39
    :cond_2
    return v2

    .line 40
    .line 41
    :cond_3
    const/16 v4, 0x63

    .line 42
    .line 43
    if-ne p2, v4, :cond_4

    .line 44
    return v4

    .line 45
    .line 46
    :cond_4
    if-ne p2, v2, :cond_c

    .line 47
    .line 48
    sget-object p2, Lcom/google/zxing/oned/d$a;->FNC_1:Lcom/google/zxing/oned/d$a;

    .line 49
    .line 50
    if-ne v0, p2, :cond_5

    .line 51
    return v2

    .line 52
    .line 53
    :cond_5
    add-int/lit8 v0, p1, 0x2

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Lcom/google/zxing/oned/d;->g(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/d$a;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-eq v0, v3, :cond_b

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_6
    if-ne v0, p2, :cond_8

    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x3

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Lcom/google/zxing/oned/d;->g(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/d$a;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    sget-object p1, Lcom/google/zxing/oned/d$a;->TWO_DIGITS:Lcom/google/zxing/oned/d$a;

    .line 73
    .line 74
    if-ne p0, p1, :cond_7

    .line 75
    return v4

    .line 76
    :cond_7
    return v2

    .line 77
    .line 78
    :cond_8
    add-int/lit8 p1, p1, 0x4

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-static {p0, p1}, Lcom/google/zxing/oned/d;->g(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/d$a;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    sget-object v0, Lcom/google/zxing/oned/d$a;->TWO_DIGITS:Lcom/google/zxing/oned/d$a;

    .line 85
    .line 86
    if-ne p2, v0, :cond_9

    .line 87
    .line 88
    add-int/lit8 p1, p1, 0x2

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_9
    sget-object p0, Lcom/google/zxing/oned/d$a;->ONE_DIGIT:Lcom/google/zxing/oned/d$a;

    .line 92
    .line 93
    if-ne p2, p0, :cond_a

    .line 94
    return v2

    .line 95
    :cond_a
    return v4

    .line 96
    :cond_b
    :goto_1
    return v2

    .line 97
    .line 98
    :cond_c
    sget-object p2, Lcom/google/zxing/oned/d$a;->FNC_1:Lcom/google/zxing/oned/d$a;

    .line 99
    .line 100
    if-ne v0, p2, :cond_d

    .line 101
    .line 102
    add-int/lit8 p1, p1, 0x1

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1}, Lcom/google/zxing/oned/d;->g(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/d$a;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    :cond_d
    sget-object p0, Lcom/google/zxing/oned/d$a;->TWO_DIGITS:Lcom/google/zxing/oned/d$a;

    .line 109
    .line 110
    if-ne v0, p0, :cond_e

    .line 111
    return v4

    .line 112
    :cond_e
    return v2
.end method

.method private static g(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/d$a;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/google/zxing/oned/d$a;->UNCODABLE:Lcom/google/zxing/oned/d$a;

    .line 9
    return-object p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    move-result v1

    .line 14
    .line 15
    const/16 v2, 0xf1

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    sget-object p0, Lcom/google/zxing/oned/d$a;->FNC_1:Lcom/google/zxing/oned/d$a;

    .line 20
    return-object p0

    .line 21
    .line 22
    :cond_1
    const/16 v2, 0x30

    .line 23
    .line 24
    if-lt v1, v2, :cond_6

    .line 25
    .line 26
    const/16 v3, 0x39

    .line 27
    .line 28
    if-le v1, v3, :cond_2

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    if-lt p1, v0, :cond_3

    .line 34
    .line 35
    sget-object p0, Lcom/google/zxing/oned/d$a;->ONE_DIGIT:Lcom/google/zxing/oned/d$a;

    .line 36
    return-object p0

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 40
    move-result p0

    .line 41
    .line 42
    if-lt p0, v2, :cond_5

    .line 43
    .line 44
    if-le p0, v3, :cond_4

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_4
    sget-object p0, Lcom/google/zxing/oned/d$a;->TWO_DIGITS:Lcom/google/zxing/oned/d$a;

    .line 48
    return-object p0

    .line 49
    .line 50
    :cond_5
    :goto_0
    sget-object p0, Lcom/google/zxing/oned/d$a;->ONE_DIGIT:Lcom/google/zxing/oned/d$a;

    .line 51
    return-object p0

    .line 52
    .line 53
    :cond_6
    :goto_1
    sget-object p0, Lcom/google/zxing/oned/d$a;->UNCODABLE:Lcom/google/zxing/oned/d$a;

    .line 54
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lg5/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/a;->CODE_128:Lcom/google/zxing/a;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/o;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string p3, "Can only encode CODE_128, but got "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public c(Ljava/lang/String;)[Z
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_e

    .line 7
    .line 8
    const/16 v1, 0x50

    .line 9
    .line 10
    if-gt v0, v1, :cond_e

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    .line 14
    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    packed-switch v3, :pswitch_data_0

    .line 22
    .line 23
    const/16 v4, 0x7f

    .line 24
    .line 25
    if-gt v3, v4, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "Bad character in input: "

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    .line 44
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const/4 v3, 0x1

    .line 52
    move v4, v1

    .line 53
    move v5, v4

    .line 54
    move v6, v5

    .line 55
    move v7, v3

    .line 56
    .line 57
    :cond_2
    :goto_2
    const/16 v8, 0x67

    .line 58
    .line 59
    if-ge v4, v0, :cond_a

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/d;->f(Ljava/lang/CharSequence;II)I

    .line 63
    move-result v9

    .line 64
    .line 65
    const/16 v10, 0x64

    .line 66
    .line 67
    const/16 v11, 0x65

    .line 68
    .line 69
    if-ne v9, v6, :cond_6

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 73
    move-result v8

    .line 74
    .line 75
    .line 76
    packed-switch v8, :pswitch_data_1

    .line 77
    .line 78
    if-eq v6, v10, :cond_4

    .line 79
    .line 80
    if-eq v6, v11, :cond_3

    .line 81
    .line 82
    add-int/lit8 v8, v4, 0x2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    move-result-object v8

    .line 87
    .line 88
    .line 89
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    move-result v10

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    goto :goto_3

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 97
    move-result v8

    .line 98
    .line 99
    add-int/lit8 v10, v8, -0x20

    .line 100
    .line 101
    if-gez v10, :cond_5

    .line 102
    .line 103
    add-int/lit8 v10, v8, 0x40

    .line 104
    goto :goto_3

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 108
    move-result v8

    .line 109
    .line 110
    add-int/lit8 v10, v8, -0x20

    .line 111
    goto :goto_3

    .line 112
    .line 113
    :pswitch_1
    if-ne v6, v11, :cond_5

    .line 114
    move v10, v11

    .line 115
    goto :goto_3

    .line 116
    .line 117
    :pswitch_2
    const/16 v10, 0x60

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :pswitch_3
    const/16 v10, 0x61

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :pswitch_4
    const/16 v10, 0x66

    .line 124
    :cond_5
    :goto_3
    add-int/2addr v4, v3

    .line 125
    goto :goto_5

    .line 126
    .line 127
    :cond_6
    if-nez v6, :cond_8

    .line 128
    .line 129
    if-eq v9, v10, :cond_7

    .line 130
    .line 131
    if-eq v9, v11, :cond_9

    .line 132
    .line 133
    const/16 v8, 0x69

    .line 134
    goto :goto_4

    .line 135
    .line 136
    :cond_7
    const/16 v8, 0x68

    .line 137
    goto :goto_4

    .line 138
    :cond_8
    move v8, v9

    .line 139
    :cond_9
    :goto_4
    move v10, v8

    .line 140
    move v6, v9

    .line 141
    .line 142
    :goto_5
    sget-object v8, Lcom/google/zxing/oned/c;->CODE_PATTERNS:[[I

    .line 143
    .line 144
    aget-object v8, v8, v10

    .line 145
    .line 146
    .line 147
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    mul-int/2addr v10, v7

    .line 149
    add-int/2addr v5, v10

    .line 150
    .line 151
    if-eqz v4, :cond_2

    .line 152
    .line 153
    add-int/lit8 v7, v7, 0x1

    .line 154
    goto :goto_2

    .line 155
    :cond_a
    rem-int/2addr v5, v8

    .line 156
    .line 157
    sget-object p1, Lcom/google/zxing/oned/c;->CODE_PATTERNS:[[I

    .line 158
    .line 159
    aget-object v0, p1, v5

    .line 160
    .line 161
    .line 162
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    const/16 v0, 0x6a

    .line 165
    .line 166
    aget-object p1, p1, v0

    .line 167
    .line 168
    .line 169
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object p1

    .line 174
    move v0, v1

    .line 175
    .line 176
    .line 177
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v4

    .line 179
    .line 180
    if-eqz v4, :cond_c

    .line 181
    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v4

    .line 185
    .line 186
    check-cast v4, [I

    .line 187
    array-length v5, v4

    .line 188
    move v6, v1

    .line 189
    .line 190
    :goto_6
    if-ge v6, v5, :cond_b

    .line 191
    .line 192
    aget v7, v4, v6

    .line 193
    add-int/2addr v0, v7

    .line 194
    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 196
    goto :goto_6

    .line 197
    .line 198
    :cond_c
    new-array p1, v0, [Z

    .line 199
    .line 200
    .line 201
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    move-result v2

    .line 207
    .line 208
    if-eqz v2, :cond_d

    .line 209
    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    check-cast v2, [I

    .line 215
    .line 216
    .line 217
    invoke-static {p1, v1, v2, v3}, Lcom/google/zxing/oned/o;->b([ZI[IZ)I

    .line 218
    move-result v2

    .line 219
    add-int/2addr v1, v2

    .line 220
    goto :goto_7

    .line 221
    :cond_d
    return-object p1

    .line 222
    .line 223
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    const-string v1, "Contents length should be between 1 and 80 characters, but got "

    .line 226
    .line 227
    .line 228
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 237
    throw p1

    .line 238
    nop

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
