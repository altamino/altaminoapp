.class Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;
.super Ljava/lang/Thread;
.source "DrawerResponseListenerProvider.java"


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

    .line 165
    iput-object p1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    .line 168
    iput-object p4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->target:Ljava/io/File;

    .line 169
    iput-object p5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->delete:Ljava/io/File;

    .line 170
    iput-object p6, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->furl:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 179
    :try_start_0
    new-instance v1, Lcom/narvii/util/http/ProxyStack;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 180
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    iget-object v3, v3, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v3, p0, :cond_3

    .line 202
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_0

    .line 205
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 211
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 215
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    if-ne v2, p0, :cond_2

    .line 216
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    :cond_2
    return-void

    :cond_3
    const/16 v3, 0x1000

    :try_start_5
    new-array v3, v3, [B

    .line 187
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 188
    :cond_4
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    const/4 v6, 0x0

    .line 189
    invoke-virtual {v4, v3, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 190
    iget-object v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    iget-object v5, v5, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v5, p0, :cond_4

    .line 202
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_5

    .line 205
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 211
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    nop

    .line 215
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    if-ne v2, p0, :cond_7

    .line 216
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    :cond_7
    return-void

    .line 193
    :cond_8
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 194
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->target:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 195
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->delete:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 196
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->furl:Ljava/io/File;

    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "community launch image download succeed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 202
    :cond_9
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_a

    .line 205
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    nop

    :cond_a
    :goto_4
    if-eqz v1, :cond_b

    .line 211
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    :catch_5
    nop

    .line 215
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    if-ne v2, p0, :cond_e

    goto :goto_9

    :catch_6
    move-exception v3

    goto :goto_6

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_a

    :catch_7
    move-exception v3

    move-object v2, v0

    goto :goto_6

    :catchall_1
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    goto :goto_a

    :catch_8
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 200
    :goto_6
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to download community launch image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 202
    iget-object v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_c

    .line 205
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_7

    :catch_9
    nop

    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 211
    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_8

    :catch_a
    nop

    .line 215
    :cond_d
    :goto_8
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    if-ne v2, p0, :cond_e

    .line 216
    :goto_9
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    :cond_e
    return-void

    :catchall_2
    move-exception v3

    .line 202
    :goto_a
    iget-object v4, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->tmp:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_f

    .line 205
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_b

    :catch_b
    nop

    :cond_f
    :goto_b
    if-eqz v1, :cond_10

    .line 211
    :try_start_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_c

    :catch_c
    nop

    .line 215
    :cond_10
    :goto_c
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    iget-object v2, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    if-ne v2, p0, :cond_11

    .line 216
    iput-object v0, v1, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 218
    :cond_11
    goto :goto_e

    :goto_d
    throw v3

    :goto_e
    goto :goto_d
.end method
