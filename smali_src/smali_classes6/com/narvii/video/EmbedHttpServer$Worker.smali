.class Lcom/narvii/video/EmbedHttpServer$Worker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EmbedHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final conn:Ljava/net/Socket;

.field final synthetic this$0:Lcom/narvii/video/EmbedHttpServer;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EmbedHttpServer;Ljava/net/Socket;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/16 v3, 0x200

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 20
    move-object v3, v0

    .line 21
    move-object v5, v3

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 25
    move-result v6

    .line 26
    const/4 v7, -0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    .line 29
    if-eq v6, v7, :cond_4

    .line 30
    .line 31
    const/16 v7, 0xa

    .line 32
    .line 33
    if-ne v6, v7, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 37
    move-result v6

    .line 38
    .line 39
    if-lez v6, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 43
    move-result v6

    .line 44
    .line 45
    add-int/lit8 v6, v6, -0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 49
    move-result v6

    .line 50
    .line 51
    const/16 v7, 0xd

    .line 52
    .line 53
    if-ne v6, v7, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 57
    move-result v6

    .line 58
    .line 59
    add-int/lit8 v6, v6, -0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 70
    move-result v6

    .line 71
    .line 72
    if-nez v6, :cond_1

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_1
    if-nez v3, :cond_2

    .line 76
    .line 77
    const-string v3, " "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 81
    move-result v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    const-string v6, " HTTP/"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 91
    move-result v6

    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    move-object v9, v5

    .line 103
    move-object v5, v3

    .line 104
    move-object v3, v9

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_2
    const-string v6, ":"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 111
    move-result v6

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 120
    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 125
    move-result-object v6

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 129
    move-result-object v6

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    goto :goto_0

    .line 137
    :cond_3
    int-to-char v6, v6

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_4
    :goto_3
    const-string v2, "Content-Length"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    check-cast v2, Ljava/lang/String;

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 155
    move-result v8

    .line 156
    .line 157
    :cond_5
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    const-string v6, "Expect"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-result-object v6

    .line 168
    .line 169
    check-cast v6, Ljava/lang/String;

    .line 170
    .line 171
    const-string v7, "100-Continue"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 175
    move-result v6

    .line 176
    .line 177
    if-eqz v6, :cond_6

    .line 178
    .line 179
    const-string v6, "HTTP/1.1 100 Continue\r\n\r\n"

    .line 180
    .line 181
    const-string v7, "ASCII"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 185
    move-result-object v6

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 192
    .line 193
    :cond_6
    new-instance v6, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;

    .line 194
    .line 195
    .line 196
    invoke-direct {v6, v1, v8}, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 197
    .line 198
    new-instance v7, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;

    .line 199
    .line 200
    .line 201
    invoke-direct {v7, v2}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    .line 203
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    .line 204
    move-object v2, v3

    .line 205
    move-object v3, v5

    .line 206
    move-object v5, v6

    .line 207
    move-object v6, v7

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/EmbedHttpServer;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/io/InputStream;Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 216
    .line 217
    if-eqz v1, :cond_7

    .line 218
    .line 219
    .line 220
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    .line 222
    :catch_0
    :cond_7
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Lcom/narvii/video/EmbedHttpServer;->a(Lcom/narvii/video/EmbedHttpServer;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 226
    move-result-object v1

    .line 227
    .line 228
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v2, v0}, Landroidx/compose/animation/core/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    goto :goto_5

    .line 233
    .line 234
    :goto_4
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 235
    .line 236
    if-eqz v2, :cond_8

    .line 237
    .line 238
    .line 239
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    .line 241
    :catch_1
    :cond_8
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    .line 242
    .line 243
    .line 244
    invoke-static {v2}, Lcom/narvii/video/EmbedHttpServer;->a(Lcom/narvii/video/EmbedHttpServer;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 245
    move-result-object v2

    .line 246
    .line 247
    iget-object v3, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 248
    .line 249
    .line 250
    invoke-static {v2, v3, v0}, Landroidx/compose/animation/core/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    throw v1

    .line 252
    .line 253
    :catch_2
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 254
    .line 255
    if-eqz v1, :cond_9

    .line 256
    .line 257
    .line 258
    :try_start_3
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 259
    .line 260
    :catch_3
    :cond_9
    iget-object v1, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->this$0:Lcom/narvii/video/EmbedHttpServer;

    .line 261
    .line 262
    .line 263
    invoke-static {v1}, Lcom/narvii/video/EmbedHttpServer;->a(Lcom/narvii/video/EmbedHttpServer;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 264
    move-result-object v1

    .line 265
    .line 266
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$Worker;->conn:Ljava/net/Socket;

    .line 267
    .line 268
    .line 269
    invoke-static {v1, v2, v0}, Landroidx/compose/animation/core/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    :goto_5
    return-void
.end method
