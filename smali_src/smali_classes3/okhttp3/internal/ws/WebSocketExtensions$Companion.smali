.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 21
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "responseHeaders"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v4, v1, :cond_13

    .line 21
    .line 22
    add-int/lit8 v5, v4, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 26
    move-result-object v12

    .line 27
    .line 28
    const-string v13, "Sec-WebSocket-Extensions"

    .line 29
    const/4 v14, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v12, v13, v14}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 33
    move-result v12

    .line 34
    .line 35
    if-nez v12, :cond_1

    .line 36
    :cond_0
    move v4, v5

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    const/4 v12, 0x0

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 46
    move-result v13

    .line 47
    .line 48
    if-ge v12, v13, :cond_0

    .line 49
    .line 50
    const/16 v16, 0x2c

    .line 51
    .line 52
    const/16 v18, 0x0

    .line 53
    .line 54
    const/16 v19, 0x4

    .line 55
    .line 56
    const/16 v20, 0x0

    .line 57
    move-object v15, v4

    .line 58
    .line 59
    move/from16 v17, v12

    .line 60
    .line 61
    .line 62
    invoke-static/range {v15 .. v20}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    .line 63
    move-result v13

    .line 64
    .line 65
    const/16 v15, 0x3b

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v15, v12, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v12, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 73
    move-result-object v12

    .line 74
    add-int/2addr v2, v14

    .line 75
    .line 76
    const-string v3, "permessage-deflate"

    .line 77
    .line 78
    .line 79
    invoke-static {v12, v3, v14}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 80
    move-result v3

    .line 81
    .line 82
    if-eqz v3, :cond_12

    .line 83
    .line 84
    if-eqz v6, :cond_2

    .line 85
    move v11, v14

    .line 86
    :cond_2
    move v12, v2

    .line 87
    .line 88
    :cond_3
    :goto_2
    if-ge v12, v13, :cond_11

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v15, v12, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 92
    move-result v2

    .line 93
    .line 94
    const/16 v3, 0x3d

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v3, v12, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 98
    move-result v3

    .line 99
    .line 100
    .line 101
    invoke-static {v4, v12, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 102
    move-result-object v6

    .line 103
    .line 104
    if-ge v3, v2, :cond_4

    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v3, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    const-string v12, "\""

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v12}, Lkotlin/text/k;->v0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    const/4 v3, 0x0

    .line 119
    .line 120
    :goto_3
    add-int/lit8 v12, v2, 0x1

    .line 121
    .line 122
    const-string v2, "client_max_window_bits"

    .line 123
    .line 124
    .line 125
    invoke-static {v6, v2, v14}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 126
    move-result v2

    .line 127
    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    if-eqz v7, :cond_5

    .line 131
    move v11, v14

    .line 132
    .line 133
    :cond_5
    if-nez v3, :cond_6

    .line 134
    const/4 v7, 0x0

    .line 135
    goto :goto_4

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-static {v3}, Lkotlin/text/k;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 139
    move-result-object v2

    .line 140
    move-object v7, v2

    .line 141
    .line 142
    :goto_4
    if-nez v7, :cond_3

    .line 143
    :cond_7
    :goto_5
    move v11, v14

    .line 144
    goto :goto_2

    .line 145
    .line 146
    :cond_8
    const-string v2, "client_no_context_takeover"

    .line 147
    .line 148
    .line 149
    invoke-static {v6, v2, v14}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 150
    move-result v2

    .line 151
    .line 152
    if-eqz v2, :cond_b

    .line 153
    .line 154
    if-eqz v8, :cond_9

    .line 155
    move v11, v14

    .line 156
    .line 157
    :cond_9
    if-eqz v3, :cond_a

    .line 158
    move v11, v14

    .line 159
    :cond_a
    move v8, v14

    .line 160
    goto :goto_2

    .line 161
    .line 162
    :cond_b
    const-string v2, "server_max_window_bits"

    .line 163
    .line 164
    .line 165
    invoke-static {v6, v2, v14}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 166
    move-result v2

    .line 167
    .line 168
    if-eqz v2, :cond_e

    .line 169
    .line 170
    if-eqz v9, :cond_c

    .line 171
    move v11, v14

    .line 172
    .line 173
    :cond_c
    if-nez v3, :cond_d

    .line 174
    const/4 v9, 0x0

    .line 175
    goto :goto_6

    .line 176
    .line 177
    .line 178
    :cond_d
    invoke-static {v3}, Lkotlin/text/k;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 179
    move-result-object v2

    .line 180
    move-object v9, v2

    .line 181
    .line 182
    :goto_6
    if-nez v9, :cond_3

    .line 183
    goto :goto_5

    .line 184
    .line 185
    :cond_e
    const-string v2, "server_no_context_takeover"

    .line 186
    .line 187
    .line 188
    invoke-static {v6, v2, v14}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 189
    move-result v2

    .line 190
    .line 191
    if-eqz v2, :cond_7

    .line 192
    .line 193
    if-eqz v10, :cond_f

    .line 194
    move v11, v14

    .line 195
    .line 196
    :cond_f
    if-eqz v3, :cond_10

    .line 197
    move v11, v14

    .line 198
    :cond_10
    move v10, v14

    .line 199
    goto :goto_2

    .line 200
    :cond_11
    move v6, v14

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    :cond_12
    move v12, v2

    .line 204
    move v11, v14

    .line 205
    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :cond_13
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 209
    move-object v5, v0

    .line 210
    .line 211
    .line 212
    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    .line 213
    return-object v0
.end method
