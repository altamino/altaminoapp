.class Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/LinkPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadTask"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field fileD:Ljava/io/File;

.field saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

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
    const/4 v3, 0x0

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lcom/narvii/util/http/ProxyStack;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 13
    move-result-object v5

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    new-instance v5, Ljava/net/URL;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    new-instance v5, Ljava/io/FileOutputStream;

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    const/16 v6, 0x1000

    .line 39
    .line 40
    new-array v6, v6, [B

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 44
    move-result v7

    .line 45
    const/4 v8, -0x1

    .line 46
    .line 47
    if-eq v7, v8, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_3

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 62
    .line 63
    iget-object v4, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->file:Ljava/io/File;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 67
    move-result v4

    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    iget-object v4, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->fileD:Ljava/io/File;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 80
    .line 81
    sget-object v1, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 82
    .line 83
    if-ne v1, p0, :cond_2

    .line 84
    .line 85
    sput-object v2, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 86
    .line 87
    :cond_2
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    new-instance v1, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, p0, v0}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    const-string v5, "fail to download background image "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    iget-object v5, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 124
    .line 125
    sget-object v0, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 126
    .line 127
    if-ne v0, p0, :cond_3

    .line 128
    .line 129
    sput-object v2, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 130
    .line 131
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, p0, v3}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;Z)V

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 142
    :cond_4
    :goto_2
    return-void

    .line 143
    .line 144
    .line 145
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 146
    .line 147
    sget-object v1, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 148
    .line 149
    if-ne v1, p0, :cond_5

    .line 150
    .line 151
    sput-object v2, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 152
    .line 153
    :cond_5
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    .line 154
    .line 155
    if-eqz v1, :cond_6

    .line 156
    .line 157
    new-instance v1, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;

    .line 158
    .line 159
    .line 160
    invoke-direct {v1, p0, v3}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;Z)V

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 164
    :cond_6
    throw v0
.end method
