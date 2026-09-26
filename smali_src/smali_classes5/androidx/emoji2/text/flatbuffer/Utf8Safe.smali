.class public final Landroidx/emoji2/text/flatbuffer/Utf8Safe;
.super Landroidx/emoji2/text/flatbuffer/Utf8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/Utf8Safe$UnpairedSurrogateException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8;-><init>()V

    .line 4
    return-void
.end method

.method public static b([BII)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    or-int v0, p1, p2

    .line 3
    array-length v1, p0

    .line 4
    sub-int/2addr v1, p1

    .line 5
    sub-int/2addr v1, p2

    .line 6
    or-int/2addr v0, v1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-ltz v0, :cond_b

    .line 10
    .line 11
    add-int v0, p1, p2

    .line 12
    .line 13
    new-array p2, p2, [C

    .line 14
    move v2, v1

    .line 15
    .line 16
    :goto_0
    if-ge p1, v0, :cond_1

    .line 17
    .line 18
    aget-byte v3, p0, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->g(B)Z

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
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    add-int/lit8 v4, v2, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p2, v2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->b(B[CI)V

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
    if-ge p1, v0, :cond_a

    .line 38
    .line 39
    add-int/lit8 v2, p1, 0x1

    .line 40
    .line 41
    aget-byte v3, p0, p1

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->g(B)Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    add-int/lit8 p1, v8, 0x1

    .line 50
    .line 51
    .line 52
    invoke-static {v3, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->b(B[CI)V

    .line 53
    .line 54
    :goto_3
    if-ge v2, v0, :cond_3

    .line 55
    .line 56
    aget-byte v3, p0, v2

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->g(B)Z

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
    add-int/lit8 v4, p1, 0x1

    .line 68
    .line 69
    .line 70
    invoke-static {v3, p2, p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->b(B[CI)V

    .line 71
    move p1, v4

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :goto_4
    move v8, p1

    .line 74
    move p1, v2

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->i(B)Z

    .line 79
    move-result v4

    .line 80
    .line 81
    const-string v5, "Invalid UTF-8"

    .line 82
    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    if-ge v2, v0, :cond_5

    .line 86
    .line 87
    add-int/lit8 p1, p1, 0x2

    .line 88
    .line 89
    aget-byte v2, p0, v2

    .line 90
    .line 91
    add-int/lit8 v4, v8, 0x1

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v2, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->d(BB[CI)V

    .line 95
    move v8, v4

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p0

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->h(B)Z

    .line 106
    move-result v4

    .line 107
    .line 108
    if-eqz v4, :cond_8

    .line 109
    .line 110
    add-int/lit8 v4, v0, -0x1

    .line 111
    .line 112
    if-ge v2, v4, :cond_7

    .line 113
    .line 114
    add-int/lit8 v4, p1, 0x2

    .line 115
    .line 116
    aget-byte v2, p0, v2

    .line 117
    .line 118
    add-int/lit8 p1, p1, 0x3

    .line 119
    .line 120
    aget-byte v4, p0, v4

    .line 121
    .line 122
    add-int/lit8 v5, v8, 0x1

    .line 123
    .line 124
    .line 125
    invoke-static {v3, v2, v4, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->c(BBB[CI)V

    .line 126
    move v8, v5

    .line 127
    goto :goto_2

    .line 128
    .line 129
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    .line 135
    :cond_8
    add-int/lit8 v4, v0, -0x2

    .line 136
    .line 137
    if-ge v2, v4, :cond_9

    .line 138
    .line 139
    add-int/lit8 v4, p1, 0x2

    .line 140
    .line 141
    aget-byte v5, p0, v2

    .line 142
    .line 143
    add-int/lit8 v2, p1, 0x3

    .line 144
    .line 145
    aget-byte v4, p0, v4

    .line 146
    .line 147
    add-int/lit8 p1, p1, 0x4

    .line 148
    .line 149
    aget-byte v6, p0, v2

    .line 150
    move v2, v3

    .line 151
    move v3, v5

    .line 152
    move v5, v6

    .line 153
    move-object v6, p2

    .line 154
    move v7, v8

    .line 155
    .line 156
    .line 157
    invoke-static/range {v2 .. v7}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(BBBB[CI)V

    .line 158
    .line 159
    add-int/lit8 v8, v8, 0x2

    .line 160
    goto :goto_2

    .line 161
    .line 162
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p0

    .line 167
    .line 168
    :cond_a
    new-instance p0, Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 172
    return-object p0

    .line 173
    .line 174
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 175
    const/4 v2, 0x3

    .line 176
    .line 177
    new-array v2, v2, [Ljava/lang/Object;

    .line 178
    array-length p0, p0

    .line 179
    .line 180
    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object p0

    .line 183
    .line 184
    aput-object p0, v2, v1

    .line 185
    .line 186
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object p0

    .line 189
    const/4 p1, 0x1

    .line 190
    .line 191
    aput-object p0, v2, p1

    .line 192
    .line 193
    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object p0

    .line 196
    const/4 p1, 0x2

    .line 197
    .line 198
    aput-object p0, v2, p1

    .line 199
    .line 200
    const-string p0, "buffer length=%d, index=%d, size=%d"

    .line 201
    .line 202
    .line 203
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    .line 206
    .line 207
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 208
    throw v0
.end method

.method public static c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    or-int v0, p1, p2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 6
    move-result v1

    .line 7
    sub-int/2addr v1, p1

    .line 8
    sub-int/2addr v1, p2

    .line 9
    or-int/2addr v0, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-ltz v0, :cond_b

    .line 13
    .line 14
    add-int v0, p1, p2

    .line 15
    .line 16
    new-array p2, p2, [C

    .line 17
    move v2, v1

    .line 18
    .line 19
    :goto_0
    if-ge p1, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->g(B)Z

    .line 27
    move-result v4

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    add-int/lit8 v4, v2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-static {v3, p2, v2}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->b(B[CI)V

    .line 38
    move v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    move v8, v2

    .line 41
    .line 42
    :goto_2
    if-ge p1, v0, :cond_a

    .line 43
    .line 44
    add-int/lit8 v2, p1, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 48
    move-result v3

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->g(B)Z

    .line 52
    move-result v4

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    add-int/lit8 p1, v8, 0x1

    .line 57
    .line 58
    .line 59
    invoke-static {v3, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->b(B[CI)V

    .line 60
    .line 61
    :goto_3
    if-ge v2, v0, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 65
    move-result v3

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->g(B)Z

    .line 69
    move-result v4

    .line 70
    .line 71
    if-nez v4, :cond_2

    .line 72
    goto :goto_4

    .line 73
    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    add-int/lit8 v4, p1, 0x1

    .line 77
    .line 78
    .line 79
    invoke-static {v3, p2, p1}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->b(B[CI)V

    .line 80
    move p1, v4

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_4
    move v8, p1

    .line 83
    move p1, v2

    .line 84
    goto :goto_2

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->i(B)Z

    .line 88
    move-result v4

    .line 89
    .line 90
    const-string v5, "Invalid UTF-8"

    .line 91
    .line 92
    if-eqz v4, :cond_6

    .line 93
    .line 94
    if-ge v2, v0, :cond_5

    .line 95
    .line 96
    add-int/lit8 p1, p1, 0x2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 100
    move-result v2

    .line 101
    .line 102
    add-int/lit8 v4, v8, 0x1

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v2, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->d(BB[CI)V

    .line 106
    move v8, v4

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-static {v3}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->h(B)Z

    .line 117
    move-result v4

    .line 118
    .line 119
    if-eqz v4, :cond_8

    .line 120
    .line 121
    add-int/lit8 v4, v0, -0x1

    .line 122
    .line 123
    if-ge v2, v4, :cond_7

    .line 124
    .line 125
    add-int/lit8 v4, p1, 0x2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 129
    move-result v2

    .line 130
    .line 131
    add-int/lit8 p1, p1, 0x3

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 135
    move-result v4

    .line 136
    .line 137
    add-int/lit8 v5, v8, 0x1

    .line 138
    .line 139
    .line 140
    invoke-static {v3, v2, v4, p2, v8}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->c(BBB[CI)V

    .line 141
    move v8, v5

    .line 142
    goto :goto_2

    .line 143
    .line 144
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p0

    .line 149
    .line 150
    :cond_8
    add-int/lit8 v4, v0, -0x2

    .line 151
    .line 152
    if-ge v2, v4, :cond_9

    .line 153
    .line 154
    add-int/lit8 v4, p1, 0x2

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 158
    move-result v5

    .line 159
    .line 160
    add-int/lit8 v2, p1, 0x3

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 164
    move-result v4

    .line 165
    .line 166
    add-int/lit8 p1, p1, 0x4

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 170
    move-result v6

    .line 171
    move v2, v3

    .line 172
    move v3, v5

    .line 173
    move v5, v6

    .line 174
    move-object v6, p2

    .line 175
    move v7, v8

    .line 176
    .line 177
    .line 178
    invoke-static/range {v2 .. v7}, Landroidx/emoji2/text/flatbuffer/Utf8$DecodeUtil;->a(BBBB[CI)V

    .line 179
    .line 180
    add-int/lit8 v8, v8, 0x2

    .line 181
    .line 182
    goto/16 :goto_2

    .line 183
    .line 184
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p0

    .line 189
    .line 190
    :cond_a
    new-instance p0, Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    .line 194
    return-object p0

    .line 195
    .line 196
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 197
    const/4 v2, 0x3

    .line 198
    .line 199
    new-array v2, v2, [Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 203
    move-result p0

    .line 204
    .line 205
    .line 206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    move-result-object p0

    .line 208
    .line 209
    aput-object p0, v2, v1

    .line 210
    .line 211
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    move-result-object p0

    .line 214
    const/4 p1, 0x1

    .line 215
    .line 216
    aput-object p0, v2, p1

    .line 217
    .line 218
    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object p0

    .line 221
    const/4 p1, 0x2

    .line 222
    .line 223
    aput-object p0, v2, p1

    .line 224
    .line 225
    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    .line 226
    .line 227
    .line 228
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    move-result-object p0

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 233
    throw v0
.end method
