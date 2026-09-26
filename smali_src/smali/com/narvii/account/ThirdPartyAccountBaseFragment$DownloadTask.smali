.class Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/narvii/util/Utils;->createTmpFile(Z)Ljava/io/File;

    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :try_start_0
    new-instance v3, Lcom/narvii/util/http/ProxyStack;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    new-instance v4, Ljava/net/URL;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->url:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    new-instance v4, Ljava/io/FileOutputStream;

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    const/16 v5, 0x1000

    .line 38
    .line 39
    new-array v5, v5, [B

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 43
    move-result v6

    .line 44
    const/4 v7, -0x1

    .line 45
    .line 46
    if-eq v6, v7, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_4

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photo:Lcom/narvii/photos/PhotoManager;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->dir:Ljava/io/File;

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4, v5}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    iput-object v3, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->photoUrl:Ljava/lang/String;

    .line 75
    .line 76
    iput-boolean v0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 92
    goto :goto_3

    .line 93
    .line 94
    :goto_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string v4, "fail to download background image "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    iget-object v4, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->url:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    .line 114
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    iput-boolean v2, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->success:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    .line 122
    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    new-instance v0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;)V

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    :goto_3
    return-void

    .line 131
    .line 132
    .line 133
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    .line 135
    iget-object v1, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;->callback:Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;

    .line 136
    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    new-instance v1, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask$1;-><init>(Lcom/narvii/account/ThirdPartyAccountBaseFragment$DownloadTask;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 146
    :cond_2
    throw v0
.end method
