.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;
.super Ljava/lang/Thread;
.source "ThirdPartyAccountBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/ThirdPartyAccountBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadTask"
.end annotation


# instance fields
.field callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

.field dir:Ljava/io/File;

.field photo:Lcom/narvii/photos/PhotoManager;

.field photoUrl:Ljava/lang/String;

.field success:Z

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    .line 273
    invoke-static {v0}, Lcom/narvii/util/Utils;->createTmpFile(Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 275
    :try_start_0
    new-instance v3, Lcom/narvii/util/http/ProxyStack;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 276
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 278
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 281
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 282
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 285
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 286
    iget-object v3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object v4, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->dir:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photoUrl:Ljava/lang/String;

    .line 287
    iput-boolean v0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    iget-object v0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 289
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to download background image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    iput-boolean v2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->success:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    iget-object v0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;)V

    :goto_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 292
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    iget-object v1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    if-eqz v1, :cond_2

    .line 294
    new-instance v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 304
    :cond_2
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
