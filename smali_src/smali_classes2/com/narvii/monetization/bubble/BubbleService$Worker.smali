.class Lcom/narvii/monetization/bubble/BubbleService$Worker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field bubblId:Ljava/lang/String;

.field private conn:Ljava/net/HttpURLConnection;

.field current:I

.field downloadOnly:Z

.field private os:Ljava/io/OutputStream;

.field rev:I

.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleService;

.field total:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    .line 12
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/bubble/BubbleService$Worker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    :catch_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 20
    :cond_1
    return-void
.end method

.method private check()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->e(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-ne v0, p0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    iput-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 6
    .line 7
    iput-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 8
    .line 9
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/monetization/bubble/BubbleService;->k()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v4, "begin download "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, " version "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 53
    .line 54
    iget-object v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 55
    .line 56
    iget v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3, v4}, Lcom/narvii/monetization/bubble/BubbleService;->getWritingFile(Ljava/lang/String;I)Ljava/io/File;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget-object v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 63
    .line 64
    iget-object v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 65
    .line 66
    iget v5, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4, v5}, Lcom/narvii/monetization/bubble/BubbleService;->g(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)Ljava/io/File;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    const-wide/16 v4, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    .line 75
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 76
    .line 77
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    .line 86
    move-result-object v8

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v7}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 90
    move-result-object v7

    .line 91
    .line 92
    iput-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 93
    .line 94
    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->check()Z

    .line 96
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    if-nez v7, :cond_1

    .line 99
    .line 100
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 107
    .line 108
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 109
    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    .line 113
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :catch_0
    :cond_0
    return-void

    .line 115
    .line 116
    .line 117
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 118
    move-result-wide v7

    .line 119
    .line 120
    cmp-long v9, v7, v4

    .line 121
    .line 122
    if-lez v9, :cond_4

    .line 123
    .line 124
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 125
    .line 126
    const-string v10, "Range"

    .line 127
    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string v12, "bytes="

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v12, "-"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v11

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 157
    move-result v9

    .line 158
    .line 159
    const/16 v10, 0x1a0

    .line 160
    .line 161
    if-ne v9, v10, :cond_2

    .line 162
    .line 163
    const-string v7, "gif download range not satisfiable (416)"

    .line 164
    .line 165
    .line 166
    invoke-static {v7}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    :try_start_3
    iget-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    .line 175
    goto/16 :goto_10

    .line 176
    .line 177
    :catch_1
    :goto_0
    :try_start_4
    iget-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    .line 181
    move-result-object v7

    .line 182
    .line 183
    new-instance v8, Ljava/net/URL;

    .line 184
    .line 185
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v8}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 192
    move-result-object v7

    .line 193
    .line 194
    iput-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 195
    goto :goto_1

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .line 198
    goto/16 :goto_8

    .line 199
    .line 200
    :cond_2
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 201
    .line 202
    const-string v10, "Content-Range"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    move-result-object v9

    .line 207
    .line 208
    if-nez v9, :cond_3

    .line 209
    .line 210
    const-string v9, ""

    .line 211
    .line 212
    :cond_3
    const-string v10, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 213
    const/4 v11, 0x2

    .line 214
    .line 215
    .line 216
    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 217
    move-result-object v10

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 221
    move-result-object v9

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 225
    move-result v10

    .line 226
    .line 227
    if-eqz v10, :cond_4

    .line 228
    const/4 v10, 0x1

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 232
    move-result-object v11

    .line 233
    .line 234
    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 236
    move-result v11

    .line 237
    const/4 v12, 0x3

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 241
    move-result-object v9

    .line 242
    .line 243
    .line 244
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 245
    move-result v9

    .line 246
    int-to-long v12, v11

    .line 247
    .line 248
    cmp-long v7, v12, v7

    .line 249
    .line 250
    if-nez v7, :cond_4

    .line 251
    .line 252
    iput v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    .line 253
    .line 254
    iput v11, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 255
    .line 256
    new-instance v7, Ljava/io/FileOutputStream;

    .line 257
    .line 258
    .line 259
    invoke-direct {v7, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 260
    .line 261
    iput-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 262
    .line 263
    :cond_4
    :goto_1
    iget-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 264
    .line 265
    .line 266
    invoke-static {v7}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 267
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 268
    .line 269
    .line 270
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->check()Z

    .line 271
    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 272
    .line 273
    if-nez v8, :cond_6

    .line 274
    .line 275
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 276
    .line 277
    .line 278
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 279
    .line 280
    .line 281
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 282
    .line 283
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 284
    .line 285
    if-eqz v0, :cond_5

    .line 286
    .line 287
    .line 288
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 289
    :catch_3
    :cond_5
    return-void

    .line 290
    .line 291
    :cond_6
    :try_start_7
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 292
    .line 293
    if-nez v8, :cond_7

    .line 294
    .line 295
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8}, Ljava/net/URLConnection;->getContentLength()I

    .line 299
    move-result v8

    .line 300
    .line 301
    iput v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    .line 302
    .line 303
    iput v6, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 304
    .line 305
    new-instance v8, Ljava/io/FileOutputStream;

    .line 306
    .line 307
    .line 308
    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 309
    .line 310
    iput-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 311
    goto :goto_2

    .line 312
    :catchall_1
    move-exception v0

    .line 313
    move-object v2, v7

    .line 314
    .line 315
    goto/16 :goto_10

    .line 316
    :catch_4
    move-exception v0

    .line 317
    move-object v2, v7

    .line 318
    .line 319
    goto/16 :goto_8

    .line 320
    .line 321
    :cond_7
    :goto_2
    const/16 v8, 0x1000

    .line 322
    .line 323
    new-array v8, v8, [B

    .line 324
    move-wide v9, v4

    .line 325
    .line 326
    .line 327
    :goto_3
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 328
    move-result v11

    .line 329
    const/4 v12, -0x1

    .line 330
    .line 331
    const/high16 v13, 0x3f800000    # 1.0f

    .line 332
    const/4 v14, 0x0

    .line 333
    .line 334
    if-eq v11, v12, :cond_c

    .line 335
    .line 336
    iget-object v12, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 337
    .line 338
    if-nez v12, :cond_9

    .line 339
    .line 340
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 341
    .line 342
    .line 343
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 344
    .line 345
    .line 346
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 347
    .line 348
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 349
    .line 350
    if-eqz v0, :cond_8

    .line 351
    .line 352
    .line 353
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 354
    :catch_5
    :cond_8
    return-void

    .line 355
    .line 356
    .line 357
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 358
    move-result-wide v15

    .line 359
    .line 360
    iget-object v12, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v12, v8, v6, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 364
    .line 365
    iget v12, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 366
    add-int/2addr v12, v11

    .line 367
    .line 368
    iput v12, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 369
    .line 370
    const-wide/16 v17, 0x14

    .line 371
    .line 372
    add-long v17, v9, v17

    .line 373
    .line 374
    cmp-long v11, v15, v17

    .line 375
    .line 376
    if-lez v11, :cond_b

    .line 377
    .line 378
    iget-object v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 379
    .line 380
    iget-object v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 381
    .line 382
    iget v11, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 383
    .line 384
    iget v6, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    .line 385
    .line 386
    if-gtz v6, :cond_a

    .line 387
    goto :goto_4

    .line 388
    :cond_a
    int-to-float v12, v12

    .line 389
    mul-float/2addr v12, v13

    .line 390
    int-to-float v6, v6

    .line 391
    .line 392
    div-float v14, v12, v6

    .line 393
    .line 394
    .line 395
    :goto_4
    invoke-static {v9, v10, v11, v14}, Lcom/narvii/monetization/bubble/BubbleService;->i(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;IF)V

    .line 396
    move-wide v9, v15

    .line 397
    :cond_b
    const/4 v6, 0x0

    .line 398
    goto :goto_3

    .line 399
    .line 400
    :cond_c
    iget-object v6, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 404
    .line 405
    iput-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 409
    .line 410
    :try_start_a
    iget-object v6, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 414
    .line 415
    iput-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 416
    .line 417
    iget-object v6, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 418
    .line 419
    iget-object v7, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 420
    .line 421
    iget v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 422
    .line 423
    iget v9, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    .line 424
    .line 425
    if-gtz v9, :cond_d

    .line 426
    goto :goto_5

    .line 427
    .line 428
    :cond_d
    iget v10, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 429
    int-to-float v10, v10

    .line 430
    mul-float/2addr v10, v13

    .line 431
    int-to-float v9, v9

    .line 432
    .line 433
    div-float v14, v10, v9

    .line 434
    .line 435
    .line 436
    :goto_5
    invoke-static {v6, v7, v8, v14}, Lcom/narvii/monetization/bubble/BubbleService;->i(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;IF)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 440
    move-result v6

    .line 441
    .line 442
    if-nez v6, :cond_e

    .line 443
    .line 444
    const-string v6, "Fail to move downloaded file"

    .line 445
    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    const-string v8, "fail to move downloaded themepack "

    .line 452
    .line 453
    .line 454
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    move-result-object v0

    .line 462
    .line 463
    .line 464
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 465
    goto :goto_6

    .line 466
    :cond_e
    move-object v6, v2

    .line 467
    .line 468
    :goto_6
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 469
    .line 470
    .line 471
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 472
    .line 473
    .line 474
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 475
    .line 476
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 477
    .line 478
    if-eqz v0, :cond_16

    .line 479
    .line 480
    .line 481
    :goto_7
    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 482
    goto :goto_d

    .line 483
    .line 484
    :goto_8
    :try_start_c
    iget-object v6, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 485
    .line 486
    if-nez v6, :cond_f

    .line 487
    goto :goto_a

    .line 488
    .line 489
    .line 490
    :cond_f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 491
    move-result v6
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 492
    goto :goto_9

    .line 493
    :catch_6
    const/4 v6, 0x0

    .line 494
    .line 495
    :goto_9
    if-nez v6, :cond_13

    .line 496
    .line 497
    :goto_a
    :try_start_d
    instance-of v6, v0, Lcom/android/volley/TimeoutError;

    .line 498
    .line 499
    if-eqz v6, :cond_10

    .line 500
    goto :goto_b

    .line 501
    .line 502
    :cond_10
    instance-of v6, v0, Lcom/android/volley/NoConnectionError;

    .line 503
    .line 504
    if-eqz v6, :cond_11

    .line 505
    goto :goto_b

    .line 506
    .line 507
    :cond_11
    instance-of v6, v0, Lcom/android/volley/NetworkError;

    .line 508
    .line 509
    if-eqz v6, :cond_12

    .line 510
    goto :goto_b

    .line 511
    .line 512
    :cond_12
    instance-of v6, v0, Ljava/net/UnknownHostException;

    .line 513
    .line 514
    .line 515
    :cond_13
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 516
    move-result-object v6

    .line 517
    .line 518
    if-nez v6, :cond_14

    .line 519
    goto :goto_c

    .line 520
    .line 521
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    const-string v7, ": "

    .line 527
    .line 528
    .line 529
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 533
    move-result-object v7

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 540
    move-result-object v6

    .line 541
    .line 542
    if-nez v6, :cond_15

    .line 543
    .line 544
    const-string v6, "Fail to download theme pack "

    .line 545
    .line 546
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    const-string v8, "fail to download theme pack "

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    iget-object v8, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    move-result-object v7

    .line 564
    .line 565
    .line 566
    invoke-static {v7, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 567
    .line 568
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 569
    .line 570
    .line 571
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 572
    .line 573
    .line 574
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 575
    .line 576
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 577
    .line 578
    if-eqz v0, :cond_16

    .line 579
    goto :goto_7

    .line 580
    .line 581
    :catch_7
    :cond_16
    :goto_d
    iget-boolean v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->downloadOnly:Z

    .line 582
    .line 583
    if-nez v0, :cond_17

    .line 584
    .line 585
    .line 586
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 587
    move-result-wide v2

    .line 588
    .line 589
    cmp-long v0, v2, v4

    .line 590
    .line 591
    if-lez v0, :cond_17

    .line 592
    .line 593
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 594
    .line 595
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 596
    .line 597
    iget v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 598
    .line 599
    iget-object v4, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->url:Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/monetization/bubble/BubbleService;->extract(Ljava/lang/String;ILjava/lang/String;)Z

    .line 603
    move-result v0

    .line 604
    .line 605
    if-eqz v0, :cond_17

    .line 606
    .line 607
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 608
    .line 609
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 610
    .line 611
    iget v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 612
    .line 613
    .line 614
    invoke-static {v0, v2, v3}, Lcom/narvii/monetization/bubble/BubbleService;->h(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V

    .line 615
    goto :goto_e

    .line 616
    .line 617
    :cond_17
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 618
    .line 619
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 620
    .line 621
    iget v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 622
    .line 623
    .line 624
    invoke-static {v0, v2, v3}, Lcom/narvii/monetization/bubble/BubbleService;->j(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V

    .line 625
    .line 626
    :goto_e
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 627
    .line 628
    .line 629
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->e(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 630
    move-result-object v0

    .line 631
    .line 632
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 636
    move-result v0

    .line 637
    .line 638
    if-eqz v0, :cond_19

    .line 639
    .line 640
    if-nez v6, :cond_18

    .line 641
    .line 642
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 643
    .line 644
    .line 645
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->d(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 646
    move-result-object v0

    .line 647
    .line 648
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    goto :goto_f

    .line 653
    .line 654
    :cond_18
    iget-object v0, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 655
    .line 656
    .line 657
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService;->d(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 658
    move-result-object v0

    .line 659
    .line 660
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->bubblId:Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_19
    :goto_f
    return-void

    .line 665
    .line 666
    :goto_10
    iget-object v3, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->os:Ljava/io/OutputStream;

    .line 667
    .line 668
    .line 669
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 670
    .line 671
    .line 672
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 673
    .line 674
    iget-object v2, v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->conn:Ljava/net/HttpURLConnection;

    .line 675
    .line 676
    if-eqz v2, :cond_1a

    .line 677
    .line 678
    .line 679
    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 680
    :catch_8
    :cond_1a
    throw v0
.end method
