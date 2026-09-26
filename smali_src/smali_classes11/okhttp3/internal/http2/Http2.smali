.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BINARY:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONNECTION_PREFACE:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FLAGS:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FLAG_ACK:I = 0x1

.field public static final FLAG_COMPRESSED:I = 0x20

.field public static final FLAG_END_HEADERS:I = 0x4

.field public static final FLAG_END_PUSH_PROMISE:I = 0x4

.field public static final FLAG_END_STREAM:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_PADDED:I = 0x8

.field public static final FLAG_PRIORITY:I = 0x20

.field private static final FRAME_NAMES:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field public static final INSTANCE:Lokhttp3/internal/http2/Http2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_CONTINUATION:I = 0x9

.field public static final TYPE_DATA:I = 0x0

.field public static final TYPE_GOAWAY:I = 0x7

.field public static final TYPE_HEADERS:I = 0x1

.field public static final TYPE_PING:I = 0x6

.field public static final TYPE_PRIORITY:I = 0x2

.field public static final TYPE_PUSH_PROMISE:I = 0x5

.field public static final TYPE_RST_STREAM:I = 0x3

.field public static final TYPE_SETTINGS:I = 0x4

.field public static final TYPE_WINDOW_UPDATE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Lokhttp3/internal/http2/Http2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lokhttp3/internal/http2/Http2;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lokhttp3/internal/http2/Http2;->INSTANCE:Lokhttp3/internal/http2/Http2;

    .line 8
    .line 9
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 10
    .line 11
    const-string v1, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    .line 18
    .line 19
    const-string v1, "DATA"

    .line 20
    .line 21
    const-string v2, "HEADERS"

    .line 22
    .line 23
    const-string v3, "PRIORITY"

    .line 24
    .line 25
    const-string v4, "RST_STREAM"

    .line 26
    .line 27
    const-string v5, "SETTINGS"

    .line 28
    .line 29
    const-string v6, "PUSH_PROMISE"

    .line 30
    .line 31
    const-string v7, "PING"

    .line 32
    .line 33
    const-string v8, "GOAWAY"

    .line 34
    .line 35
    const-string v9, "WINDOW_UPDATE"

    .line 36
    .line 37
    const-string v10, "CONTINUATION"

    .line 38
    .line 39
    .line 40
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sput-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 44
    .line 45
    const/16 v0, 0x40

    .line 46
    .line 47
    new-array v0, v0, [Ljava/lang/String;

    .line 48
    .line 49
    sput-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 50
    .line 51
    const/16 v0, 0x100

    .line 52
    .line 53
    new-array v1, v0, [Ljava/lang/String;

    .line 54
    const/4 v2, 0x0

    .line 55
    move v3, v2

    .line 56
    :goto_0
    const/4 v4, 0x1

    .line 57
    .line 58
    if-ge v3, v0, :cond_0

    .line 59
    .line 60
    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    const-string v6, "toBinaryString(it)"

    .line 67
    .line 68
    .line 69
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    aput-object v5, v4, v2

    .line 72
    .line 73
    const-string v5, "%8s"

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    .line 79
    const/16 v7, 0x20

    .line 80
    .line 81
    const/16 v8, 0x30

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x4

    .line 84
    const/4 v11, 0x0

    .line 85
    .line 86
    .line 87
    invoke-static/range {v6 .. v11}, Lkotlin/text/k;->F(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    aput-object v4, v1, v3

    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_0
    sput-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 96
    .line 97
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 98
    .line 99
    const-string v1, ""

    .line 100
    .line 101
    aput-object v1, v0, v2

    .line 102
    .line 103
    const-string v1, "END_STREAM"

    .line 104
    .line 105
    aput-object v1, v0, v4

    .line 106
    .line 107
    .line 108
    filled-new-array {v4}, [I

    .line 109
    move-result-object v1

    .line 110
    .line 111
    const-string v3, "PADDED"

    .line 112
    .line 113
    const/16 v4, 0x8

    .line 114
    .line 115
    aput-object v3, v0, v4

    .line 116
    .line 117
    aget v3, v1, v2

    .line 118
    .line 119
    or-int/lit8 v5, v3, 0x8

    .line 120
    .line 121
    aget-object v3, v0, v3

    .line 122
    .line 123
    const-string v6, "|PADDED"

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v6}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    aput-object v3, v0, v5

    .line 130
    .line 131
    const-string v3, "END_HEADERS"

    .line 132
    const/4 v5, 0x4

    .line 133
    .line 134
    aput-object v3, v0, v5

    .line 135
    .line 136
    const-string v3, "PRIORITY"

    .line 137
    .line 138
    const/16 v7, 0x20

    .line 139
    .line 140
    aput-object v3, v0, v7

    .line 141
    .line 142
    const-string v3, "END_HEADERS|PRIORITY"

    .line 143
    .line 144
    const/16 v8, 0x24

    .line 145
    .line 146
    aput-object v3, v0, v8

    .line 147
    .line 148
    .line 149
    filled-new-array {v5, v7, v8}, [I

    .line 150
    move-result-object v0

    .line 151
    move v3, v2

    .line 152
    :goto_1
    const/4 v5, 0x3

    .line 153
    .line 154
    if-ge v3, v5, :cond_1

    .line 155
    .line 156
    aget v5, v0, v3

    .line 157
    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    aget v7, v1, v2

    .line 161
    .line 162
    sget-object v8, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 163
    .line 164
    or-int v9, v7, v5

    .line 165
    .line 166
    new-instance v10, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    aget-object v11, v8, v7

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const/16 v11, 0x7c

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    aget-object v12, v8, v5

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v10

    .line 189
    .line 190
    aput-object v10, v8, v9

    .line 191
    or-int/2addr v9, v4

    .line 192
    .line 193
    new-instance v10, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    aget-object v7, v8, v7

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    aget-object v5, v8, v5

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v5

    .line 217
    .line 218
    aput-object v5, v8, v9

    .line 219
    goto :goto_1

    .line 220
    .line 221
    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 222
    array-length v0, v0

    .line 223
    .line 224
    :goto_2
    if-ge v2, v0, :cond_3

    .line 225
    .line 226
    add-int/lit8 v1, v2, 0x1

    .line 227
    .line 228
    sget-object v3, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 229
    .line 230
    aget-object v4, v3, v2

    .line 231
    .line 232
    if-nez v4, :cond_2

    .line 233
    .line 234
    sget-object v4, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 235
    .line 236
    aget-object v4, v4, v2

    .line 237
    .line 238
    aput-object v4, v3, v2

    .line 239
    :cond_2
    move v2, v1

    .line 240
    goto :goto_2

    .line 241
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final formatFlags(II)Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    const-string p1, ""

    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_6

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_6

    .line 12
    const/4 v0, 0x4

    .line 13
    .line 14
    if-eq p1, v0, :cond_4

    .line 15
    const/4 v0, 0x6

    .line 16
    .line 17
    if-eq p1, v0, :cond_4

    .line 18
    const/4 v0, 0x7

    .line 19
    .line 20
    if-eq p1, v0, :cond_6

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    if-eq p1, v0, :cond_6

    .line 25
    .line 26
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 27
    array-length v1, v0

    .line 28
    .line 29
    if-ge p2, v1, :cond_1

    .line 30
    .line 31
    aget-object v0, v0, p2

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    :goto_0
    move-object v1, v0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 39
    .line 40
    aget-object v0, v0, p2

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    const/4 v0, 0x5

    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    and-int/lit8 v0, p2, 0x4

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const-string v2, "HEADERS"

    .line 51
    .line 52
    const-string v3, "PUSH_PROMISE"

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v6, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_2
    if-nez p1, :cond_3

    .line 63
    .line 64
    and-int/lit8 p1, p2, 0x20

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    const-string v2, "PRIORITY"

    .line 69
    .line 70
    const-string v3, "COMPRESSED"

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x4

    .line 73
    const/4 v6, 0x0

    .line 74
    .line 75
    .line 76
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    :cond_3
    :goto_2
    return-object v1

    .line 79
    :cond_4
    const/4 p1, 0x1

    .line 80
    .line 81
    if-ne p2, p1, :cond_5

    .line 82
    .line 83
    const-string p1, "ACK"

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_5
    sget-object p1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 87
    .line 88
    aget-object p1, p1, p2

    .line 89
    :goto_3
    return-object p1

    .line 90
    .line 91
    :cond_6
    sget-object p1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 92
    .line 93
    aget-object p1, p1, p2

    .line 94
    return-object p1
.end method

.method public final formattedType$okhttp(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-ge p1, v1, :cond_0

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    aput-object p1, v0, v1

    .line 19
    .line 20
    const-string p1, "0x%02x"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    :goto_0
    return-object p1
.end method

.method public final frameLog(ZIIII)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Http2;->formattedType$okhttp(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p4, p5}, Lokhttp3/internal/http2/Http2;->formatFlags(II)Ljava/lang/String;

    .line 8
    move-result-object p4

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string p1, "<<"

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    const-string p1, ">>"

    .line 16
    :goto_0
    const/4 p5, 0x5

    .line 17
    .line 18
    new-array p5, p5, [Ljava/lang/Object;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    aput-object p1, p5, v1

    .line 22
    const/4 p1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    aput-object p2, p5, p1

    .line 29
    const/4 p1, 0x2

    .line 30
    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    aput-object p2, p5, p1

    .line 36
    const/4 p1, 0x3

    .line 37
    .line 38
    aput-object v0, p5, p1

    .line 39
    const/4 p1, 0x4

    .line 40
    .line 41
    aput-object p4, p5, p1

    .line 42
    .line 43
    const-string p1, "%s 0x%08x %5d %-13s %s"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p5}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method
