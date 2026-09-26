.class Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/DrawerResponseListenerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadLaunchImage"
.end annotation


# instance fields
.field delete:Ljava/io/File;

.field furl:Ljava/io/File;

.field target:Ljava/io/File;

.field final synthetic this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

.field tmp:Ljava/io/File;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/services/DrawerResponseListenerProvider;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->target:Ljava/io/File;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->delete:Ljava/io/File;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->furl:Ljava/io/File;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/narvii/util/http/ProxyStack;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 7
    move-result-object v2

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance v2, Ljava/net/URL;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 21
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-static {v1}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 25
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    :try_start_2
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    if-eq v3, p0, :cond_3

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    .line 41
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 42
    .line 43
    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    .line 44
    .line 45
    .line 46
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 47
    .line 48
    :catch_1
    :cond_1
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 49
    .line 50
    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 51
    .line 52
    if-ne v2, p0, :cond_2

    .line 53
    .line 54
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 55
    :cond_2
    return-void

    .line 56
    .line 57
    :cond_3
    const/16 v3, 0x1000

    .line 58
    .line 59
    :try_start_5
    new-array v3, v3, [B

    .line 60
    .line 61
    new-instance v4, Ljava/io/FileOutputStream;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 64
    .line 65
    .line 66
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 70
    move-result v5

    .line 71
    const/4 v6, -0x1

    .line 72
    .line 73
    if-eq v5, v6, :cond_7

    .line 74
    const/4 v6, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 78
    .line 79
    iget-object v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 80
    .line 81
    iget-object v5, v5, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    .line 83
    if-eq v5, p0, :cond_4

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 89
    .line 90
    .line 91
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 92
    .line 93
    :catch_2
    if-eqz v1, :cond_5

    .line 94
    .line 95
    .line 96
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 97
    .line 98
    :catch_3
    :cond_5
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 99
    .line 100
    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 101
    .line 102
    if-ne v2, p0, :cond_6

    .line 103
    .line 104
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 105
    :cond_6
    return-void

    .line 106
    :catchall_0
    move-exception v3

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    :catch_4
    move-exception v3

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_7
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 114
    .line 115
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 116
    .line 117
    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->target:Ljava/io/File;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 121
    move-result v3

    .line 122
    .line 123
    if-eqz v3, :cond_8

    .line 124
    .line 125
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->delete:Ljava/io/File;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 129
    .line 130
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->furl:Ljava/io/File;

    .line 131
    .line 132
    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    const-string v4, "community launch image download succeed "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    .line 157
    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 158
    .line 159
    :cond_8
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 163
    .line 164
    .line 165
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 166
    .line 167
    :catch_5
    if-eqz v1, :cond_9

    .line 168
    .line 169
    .line 170
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 171
    .line 172
    :catch_6
    :cond_9
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 173
    .line 174
    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 175
    .line 176
    if-ne v2, p0, :cond_c

    .line 177
    .line 178
    :goto_0
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 179
    goto :goto_2

    .line 180
    :catchall_1
    move-exception v3

    .line 181
    move-object v2, v0

    .line 182
    goto :goto_3

    .line 183
    :catch_7
    move-exception v3

    .line 184
    move-object v2, v0

    .line 185
    goto :goto_1

    .line 186
    :catchall_2
    move-exception v3

    .line 187
    move-object v1, v0

    .line 188
    move-object v2, v1

    .line 189
    goto :goto_3

    .line 190
    :catch_8
    move-exception v3

    .line 191
    move-object v1, v0

    .line 192
    move-object v2, v1

    .line 193
    .line 194
    :goto_1
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    const-string v5, "fail to download community launch image "

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    iget-object v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v4

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 215
    .line 216
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 220
    .line 221
    if-eqz v2, :cond_a

    .line 222
    .line 223
    .line 224
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 225
    .line 226
    :catch_9
    :cond_a
    if-eqz v1, :cond_b

    .line 227
    .line 228
    .line 229
    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 230
    .line 231
    :catch_a
    :cond_b
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 232
    .line 233
    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 234
    .line 235
    if-ne v2, p0, :cond_c

    .line 236
    goto :goto_0

    .line 237
    :cond_c
    :goto_2
    return-void

    .line 238
    .line 239
    :goto_3
    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 243
    .line 244
    if-eqz v2, :cond_d

    .line 245
    .line 246
    .line 247
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 248
    .line 249
    :catch_b
    :cond_d
    if-eqz v1, :cond_e

    .line 250
    .line 251
    .line 252
    :try_start_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 253
    .line 254
    :catch_c
    :cond_e
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 255
    .line 256
    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 257
    .line 258
    if-ne v2, p0, :cond_f

    .line 259
    .line 260
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 261
    :cond_f
    throw v3
.end method
