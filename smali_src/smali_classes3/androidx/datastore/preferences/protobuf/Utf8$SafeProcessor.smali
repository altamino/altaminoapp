.class final Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;
.super Landroidx/datastore/preferences/protobuf/Utf8$Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;-><init>()V

    .line 4
    return-void
.end method

.method private static p([BII)I
    .locals 1

    .line 1
    .line 2
    :goto_0
    if-ge p1, p2, :cond_0

    .line 3
    .line 4
    aget-byte v0, p0, p1

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-lt p1, p2, :cond_1

    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->q([BII)I

    .line 17
    move-result p0

    .line 18
    :goto_1
    return p0
.end method

.method private static q([BII)I
    .locals 7

    .line 1
    .line 2
    :cond_0
    :goto_0
    if-lt p1, p2, :cond_1

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    .line 6
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    aget-byte v1, p0, p1

    .line 9
    .line 10
    if-gez v1, :cond_c

    .line 11
    .line 12
    const/16 v2, -0x20

    .line 13
    const/4 v3, -0x1

    .line 14
    .line 15
    const/16 v4, -0x41

    .line 16
    .line 17
    if-ge v1, v2, :cond_4

    .line 18
    .line 19
    if-lt v0, p2, :cond_2

    .line 20
    return v1

    .line 21
    .line 22
    :cond_2
    const/16 v2, -0x3e

    .line 23
    .line 24
    if-lt v1, v2, :cond_3

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    aget-byte v0, p0, v0

    .line 29
    .line 30
    if-le v0, v4, :cond_0

    .line 31
    :cond_3
    return v3

    .line 32
    .line 33
    :cond_4
    const/16 v5, -0x10

    .line 34
    .line 35
    if-ge v1, v5, :cond_9

    .line 36
    .line 37
    add-int/lit8 v5, p2, -0x1

    .line 38
    .line 39
    if-lt v0, v5, :cond_5

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->c([BII)I

    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    .line 46
    :cond_5
    add-int/lit8 v5, p1, 0x2

    .line 47
    .line 48
    aget-byte v0, p0, v0

    .line 49
    .line 50
    if-gt v0, v4, :cond_8

    .line 51
    .line 52
    const/16 v6, -0x60

    .line 53
    .line 54
    if-ne v1, v2, :cond_6

    .line 55
    .line 56
    if-lt v0, v6, :cond_8

    .line 57
    .line 58
    :cond_6
    const/16 v2, -0x13

    .line 59
    .line 60
    if-ne v1, v2, :cond_7

    .line 61
    .line 62
    if-ge v0, v6, :cond_8

    .line 63
    .line 64
    :cond_7
    add-int/lit8 p1, p1, 0x3

    .line 65
    .line 66
    aget-byte v0, p0, v5

    .line 67
    .line 68
    if-le v0, v4, :cond_0

    .line 69
    :cond_8
    return v3

    .line 70
    .line 71
    :cond_9
    add-int/lit8 v2, p2, -0x2

    .line 72
    .line 73
    if-lt v0, v2, :cond_a

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->c([BII)I

    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    .line 80
    :cond_a
    add-int/lit8 v2, p1, 0x2

    .line 81
    .line 82
    aget-byte v0, p0, v0

    .line 83
    .line 84
    if-gt v0, v4, :cond_b

    .line 85
    .line 86
    shl-int/lit8 v1, v1, 0x1c

    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x70

    .line 89
    add-int/2addr v1, v0

    .line 90
    .line 91
    shr-int/lit8 v0, v1, 0x1e

    .line 92
    .line 93
    if-nez v0, :cond_b

    .line 94
    .line 95
    add-int/lit8 v0, p1, 0x3

    .line 96
    .line 97
    aget-byte v1, p0, v2

    .line 98
    .line 99
    if-gt v1, v4, :cond_b

    .line 100
    .line 101
    add-int/lit8 p1, p1, 0x4

    .line 102
    .line 103
    aget-byte v0, p0, v0

    .line 104
    .line 105
    if-le v0, v4, :cond_0

    .line 106
    :cond_b
    return v3

    .line 107
    :cond_c
    move p1, v0

    .line 108
    goto :goto_0
.end method


# virtual methods
.method b([BII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    or-int v0, p2, p3

    .line 3
    array-length v1, p1

    .line 4
    sub-int/2addr v1, p2

    .line 5
    sub-int/2addr v1, p3

    .line 6
    or-int/2addr v0, v1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-ltz v0, :cond_b

    .line 10
    .line 11
    add-int v0, p2, p3

    .line 12
    .line 13
    new-array p3, p3, [C

    .line 14
    move v2, v1

    .line 15
    .line 16
    :goto_0
    if-ge p2, v0, :cond_1

    .line 17
    .line 18
    aget-byte v3, p1, p2

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->b(B)Z

    .line 22
    move-result v4

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    add-int/lit8 v4, v2, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p3, v2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->c(B[CI)V

    .line 33
    move v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    move v8, v2

    .line 36
    .line 37
    :goto_2
    if-ge p2, v0, :cond_a

    .line 38
    .line 39
    add-int/lit8 v2, p2, 0x1

    .line 40
    .line 41
    aget-byte v3, p1, p2

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->b(B)Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    add-int/lit8 p2, v8, 0x1

    .line 50
    .line 51
    .line 52
    invoke-static {v3, p3, v8}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->c(B[CI)V

    .line 53
    .line 54
    :goto_3
    if-ge v2, v0, :cond_3

    .line 55
    .line 56
    aget-byte v3, p1, v2

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->b(B)Z

    .line 60
    move-result v4

    .line 61
    .line 62
    if-nez v4, :cond_2

    .line 63
    goto :goto_4

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    add-int/lit8 v4, p2, 0x1

    .line 68
    .line 69
    .line 70
    invoke-static {v3, p3, p2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->c(B[CI)V

    .line 71
    move p2, v4

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :goto_4
    move v8, p2

    .line 74
    move p2, v2

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->d(B)Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    if-ge v2, v0, :cond_5

    .line 84
    .line 85
    add-int/lit8 p2, p2, 0x2

    .line 86
    .line 87
    aget-byte v2, p1, v2

    .line 88
    .line 89
    add-int/lit8 v4, v8, 0x1

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v2, p3, v8}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->e(BB[CI)V

    .line 93
    move v8, v4

    .line 94
    goto :goto_2

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->c()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 98
    move-result-object p1

    .line 99
    throw p1

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->f(B)Z

    .line 103
    move-result v4

    .line 104
    .line 105
    if-eqz v4, :cond_8

    .line 106
    .line 107
    add-int/lit8 v4, v0, -0x1

    .line 108
    .line 109
    if-ge v2, v4, :cond_7

    .line 110
    .line 111
    add-int/lit8 v4, p2, 0x2

    .line 112
    .line 113
    aget-byte v2, p1, v2

    .line 114
    .line 115
    add-int/lit8 p2, p2, 0x3

    .line 116
    .line 117
    aget-byte v4, p1, v4

    .line 118
    .line 119
    add-int/lit8 v5, v8, 0x1

    .line 120
    .line 121
    .line 122
    invoke-static {v3, v2, v4, p3, v8}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->g(BBB[CI)V

    .line 123
    move v8, v5

    .line 124
    goto :goto_2

    .line 125
    .line 126
    .line 127
    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->c()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 128
    move-result-object p1

    .line 129
    throw p1

    .line 130
    .line 131
    :cond_8
    add-int/lit8 v4, v0, -0x2

    .line 132
    .line 133
    if-ge v2, v4, :cond_9

    .line 134
    .line 135
    add-int/lit8 v4, p2, 0x2

    .line 136
    .line 137
    aget-byte v5, p1, v2

    .line 138
    .line 139
    add-int/lit8 v2, p2, 0x3

    .line 140
    .line 141
    aget-byte v4, p1, v4

    .line 142
    .line 143
    add-int/lit8 p2, p2, 0x4

    .line 144
    .line 145
    aget-byte v6, p1, v2

    .line 146
    move v2, v3

    .line 147
    move v3, v5

    .line 148
    move v5, v6

    .line 149
    move-object v6, p3

    .line 150
    move v7, v8

    .line 151
    .line 152
    .line 153
    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->a(BBBB[CI)V

    .line 154
    .line 155
    add-int/lit8 v8, v8, 0x2

    .line 156
    goto :goto_2

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->c()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 160
    move-result-object p1

    .line 161
    throw p1

    .line 162
    .line 163
    :cond_a
    new-instance p1, Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 167
    return-object p1

    .line 168
    .line 169
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 170
    const/4 v2, 0x3

    .line 171
    .line 172
    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    array-length p1, p1

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    aput-object p1, v2, v1

    .line 180
    .line 181
    .line 182
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object p1

    .line 184
    const/4 p2, 0x1

    .line 185
    .line 186
    aput-object p1, v2, p2

    .line 187
    .line 188
    .line 189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object p1

    .line 191
    const/4 p2, 0x2

    .line 192
    .line 193
    aput-object p1, v2, p2

    .line 194
    .line 195
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 196
    .line 197
    .line 198
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 203
    throw v0
.end method

.method d(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method e(Ljava/lang/CharSequence;[BII)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr p4, p3

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :goto_0
    const/16 v2, 0x80

    .line 9
    .line 10
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    add-int v3, v1, p3

    .line 13
    .line 14
    if-ge v3, p4, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    move-result v4

    .line 19
    .line 20
    if-ge v4, v2, :cond_0

    .line 21
    int-to-byte v2, v4

    .line 22
    .line 23
    aput-byte v2, p2, v3

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    if-ne v1, v0, :cond_1

    .line 29
    add-int/2addr p3, v0

    .line 30
    return p3

    .line 31
    :cond_1
    add-int/2addr p3, v1

    .line 32
    .line 33
    :goto_1
    if-ge v1, v0, :cond_b

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    move-result v3

    .line 38
    .line 39
    if-ge v3, v2, :cond_2

    .line 40
    .line 41
    if-ge p3, p4, :cond_2

    .line 42
    .line 43
    add-int/lit8 v4, p3, 0x1

    .line 44
    int-to-byte v3, v3

    .line 45
    .line 46
    aput-byte v3, p2, p3

    .line 47
    move p3, v4

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_2
    const/16 v4, 0x800

    .line 52
    .line 53
    if-ge v3, v4, :cond_3

    .line 54
    .line 55
    add-int/lit8 v4, p4, -0x2

    .line 56
    .line 57
    if-gt p3, v4, :cond_3

    .line 58
    .line 59
    add-int/lit8 v4, p3, 0x1

    .line 60
    .line 61
    ushr-int/lit8 v5, v3, 0x6

    .line 62
    .line 63
    or-int/lit16 v5, v5, 0x3c0

    .line 64
    int-to-byte v5, v5

    .line 65
    .line 66
    aput-byte v5, p2, p3

    .line 67
    .line 68
    add-int/lit8 p3, p3, 0x2

    .line 69
    .line 70
    and-int/lit8 v3, v3, 0x3f

    .line 71
    or-int/2addr v3, v2

    .line 72
    int-to-byte v3, v3

    .line 73
    .line 74
    aput-byte v3, p2, v4

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_3
    const v4, 0xdfff

    .line 79
    .line 80
    .line 81
    const v5, 0xd800

    .line 82
    .line 83
    if-lt v3, v5, :cond_4

    .line 84
    .line 85
    if-ge v4, v3, :cond_5

    .line 86
    .line 87
    :cond_4
    add-int/lit8 v6, p4, -0x3

    .line 88
    .line 89
    if-gt p3, v6, :cond_5

    .line 90
    .line 91
    add-int/lit8 v4, p3, 0x1

    .line 92
    .line 93
    ushr-int/lit8 v5, v3, 0xc

    .line 94
    .line 95
    or-int/lit16 v5, v5, 0x1e0

    .line 96
    int-to-byte v5, v5

    .line 97
    .line 98
    aput-byte v5, p2, p3

    .line 99
    .line 100
    add-int/lit8 v5, p3, 0x2

    .line 101
    .line 102
    ushr-int/lit8 v6, v3, 0x6

    .line 103
    .line 104
    and-int/lit8 v6, v6, 0x3f

    .line 105
    or-int/2addr v6, v2

    .line 106
    int-to-byte v6, v6

    .line 107
    .line 108
    aput-byte v6, p2, v4

    .line 109
    .line 110
    add-int/lit8 p3, p3, 0x3

    .line 111
    .line 112
    and-int/lit8 v3, v3, 0x3f

    .line 113
    or-int/2addr v3, v2

    .line 114
    int-to-byte v3, v3

    .line 115
    .line 116
    aput-byte v3, p2, v5

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_5
    add-int/lit8 v6, p4, -0x4

    .line 120
    .line 121
    if-gt p3, v6, :cond_8

    .line 122
    .line 123
    add-int/lit8 v4, v1, 0x1

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 127
    move-result v5

    .line 128
    .line 129
    if-eq v4, v5, :cond_7

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 133
    move-result v1

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 137
    move-result v5

    .line 138
    .line 139
    if-eqz v5, :cond_6

    .line 140
    .line 141
    .line 142
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 143
    move-result v1

    .line 144
    .line 145
    add-int/lit8 v3, p3, 0x1

    .line 146
    .line 147
    ushr-int/lit8 v5, v1, 0x12

    .line 148
    .line 149
    or-int/lit16 v5, v5, 0xf0

    .line 150
    int-to-byte v5, v5

    .line 151
    .line 152
    aput-byte v5, p2, p3

    .line 153
    .line 154
    add-int/lit8 v5, p3, 0x2

    .line 155
    .line 156
    ushr-int/lit8 v6, v1, 0xc

    .line 157
    .line 158
    and-int/lit8 v6, v6, 0x3f

    .line 159
    or-int/2addr v6, v2

    .line 160
    int-to-byte v6, v6

    .line 161
    .line 162
    aput-byte v6, p2, v3

    .line 163
    .line 164
    add-int/lit8 v3, p3, 0x3

    .line 165
    .line 166
    ushr-int/lit8 v6, v1, 0x6

    .line 167
    .line 168
    and-int/lit8 v6, v6, 0x3f

    .line 169
    or-int/2addr v6, v2

    .line 170
    int-to-byte v6, v6

    .line 171
    .line 172
    aput-byte v6, p2, v5

    .line 173
    .line 174
    add-int/lit8 p3, p3, 0x4

    .line 175
    .line 176
    and-int/lit8 v1, v1, 0x3f

    .line 177
    or-int/2addr v1, v2

    .line 178
    int-to-byte v1, v1

    .line 179
    .line 180
    aput-byte v1, p2, v3

    .line 181
    move v1, v4

    .line 182
    .line 183
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    :cond_6
    move v1, v4

    .line 187
    .line 188
    :cond_7
    new-instance p1, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 189
    .line 190
    add-int/lit8 v1, v1, -0x1

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 194
    throw p1

    .line 195
    .line 196
    :cond_8
    if-gt v5, v3, :cond_a

    .line 197
    .line 198
    if-gt v3, v4, :cond_a

    .line 199
    .line 200
    add-int/lit8 p2, v1, 0x1

    .line 201
    .line 202
    .line 203
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 204
    move-result p4

    .line 205
    .line 206
    if-eq p2, p4, :cond_9

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 210
    move-result p1

    .line 211
    .line 212
    .line 213
    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 214
    move-result p1

    .line 215
    .line 216
    if-nez p1, :cond_a

    .line 217
    .line 218
    :cond_9
    new-instance p1, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 219
    .line 220
    .line 221
    invoke-direct {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 222
    throw p1

    .line 223
    .line 224
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 225
    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    const-string p4, "Failed writing "

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string p4, " at index "

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object p2

    .line 250
    .line 251
    .line 252
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 253
    throw p1

    .line 254
    :cond_b
    return p3
.end method

.method h(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->g(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 4
    return-void
.end method

.method l(I[BII)I
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_f

    .line 3
    .line 4
    if-lt p3, p4, :cond_0

    .line 5
    return p1

    .line 6
    :cond_0
    int-to-byte v0, p1

    .line 7
    .line 8
    const/16 v1, -0x20

    .line 9
    const/4 v2, -0x1

    .line 10
    .line 11
    const/16 v3, -0x41

    .line 12
    .line 13
    if-ge v0, v1, :cond_3

    .line 14
    .line 15
    const/16 p1, -0x3e

    .line 16
    .line 17
    if-lt v0, p1, :cond_2

    .line 18
    .line 19
    add-int/lit8 p1, p3, 0x1

    .line 20
    .line 21
    aget-byte p3, p2, p3

    .line 22
    .line 23
    if-le p3, v3, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p3, p1

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    :cond_2
    :goto_0
    return v2

    .line 29
    .line 30
    :cond_3
    const/16 v4, -0x10

    .line 31
    .line 32
    if-ge v0, v4, :cond_9

    .line 33
    .line 34
    shr-int/lit8 p1, p1, 0x8

    .line 35
    not-int p1, p1

    .line 36
    int-to-byte p1, p1

    .line 37
    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    add-int/lit8 p1, p3, 0x1

    .line 41
    .line 42
    aget-byte p3, p2, p3

    .line 43
    .line 44
    if-lt p1, p4, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p3}, Landroidx/datastore/preferences/protobuf/Utf8;->a(II)I

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_4
    move v5, p3

    .line 51
    move p3, p1

    .line 52
    move p1, v5

    .line 53
    .line 54
    :cond_5
    if-gt p1, v3, :cond_8

    .line 55
    .line 56
    const/16 v4, -0x60

    .line 57
    .line 58
    if-ne v0, v1, :cond_6

    .line 59
    .line 60
    if-lt p1, v4, :cond_8

    .line 61
    .line 62
    :cond_6
    const/16 v1, -0x13

    .line 63
    .line 64
    if-ne v0, v1, :cond_7

    .line 65
    .line 66
    if-ge p1, v4, :cond_8

    .line 67
    .line 68
    :cond_7
    add-int/lit8 p1, p3, 0x1

    .line 69
    .line 70
    aget-byte p3, p2, p3

    .line 71
    .line 72
    if-le p3, v3, :cond_1

    .line 73
    :cond_8
    return v2

    .line 74
    .line 75
    :cond_9
    shr-int/lit8 v1, p1, 0x8

    .line 76
    not-int v1, v1

    .line 77
    int-to-byte v1, v1

    .line 78
    .line 79
    if-nez v1, :cond_b

    .line 80
    .line 81
    add-int/lit8 p1, p3, 0x1

    .line 82
    .line 83
    aget-byte v1, p2, p3

    .line 84
    .line 85
    if-lt p1, p4, :cond_a

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8;->a(II)I

    .line 89
    move-result p1

    .line 90
    return p1

    .line 91
    :cond_a
    const/4 p3, 0x0

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_b
    shr-int/lit8 p1, p1, 0x10

    .line 95
    int-to-byte p1, p1

    .line 96
    move v5, p3

    .line 97
    move p3, p1

    .line 98
    move p1, v5

    .line 99
    .line 100
    :goto_1
    if-nez p3, :cond_d

    .line 101
    .line 102
    add-int/lit8 p3, p1, 0x1

    .line 103
    .line 104
    aget-byte p1, p2, p1

    .line 105
    .line 106
    if-lt p3, p4, :cond_c

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/Utf8;->b(III)I

    .line 110
    move-result p1

    .line 111
    return p1

    .line 112
    :cond_c
    move v5, p3

    .line 113
    move p3, p1

    .line 114
    move p1, v5

    .line 115
    .line 116
    :cond_d
    if-gt v1, v3, :cond_e

    .line 117
    .line 118
    shl-int/lit8 v0, v0, 0x1c

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x70

    .line 121
    add-int/2addr v0, v1

    .line 122
    .line 123
    shr-int/lit8 v0, v0, 0x1e

    .line 124
    .line 125
    if-nez v0, :cond_e

    .line 126
    .line 127
    if-gt p3, v3, :cond_e

    .line 128
    .line 129
    add-int/lit8 p3, p1, 0x1

    .line 130
    .line 131
    aget-byte p1, p2, p1

    .line 132
    .line 133
    if-le p1, v3, :cond_f

    .line 134
    :cond_e
    return v2

    .line 135
    .line 136
    .line 137
    :cond_f
    :goto_2
    invoke-static {p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->p([BII)I

    .line 138
    move-result p1

    .line 139
    return p1
.end method

.method o(ILjava/nio/ByteBuffer;II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->n(ILjava/nio/ByteBuffer;II)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method
