.class Lcom/narvii/photos/PhotoManager$VideoUploadTask;
.super Lcom/narvii/util/http/ApiResponseProgressListener;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/photos/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseProgressListener<",
        "Lcom/narvii/photos/PhotoUploadResponse;",
        ">;",
        "Ljava/util/concurrent/Future<",
        "Lcom/narvii/model/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/narvii/util/http/ApiService;

.field private isCanceled:Z

.field private isDone:Z

.field private length:J

.field listener:Lcom/narvii/photos/VideoUploadListener;

.field request:Lcom/narvii/util/http/ApiRequest;

.field private ret:Lcom/narvii/model/Media;

.field final synthetic this$0:Lcom/narvii/photos/PhotoManager;

.field uploadSpec:Lcom/narvii/photos/VideoUploadSpec;


# direct methods
.method public constructor <init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/VideoUploadSpec;Lcom/narvii/photos/VideoUploadListener;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/photos/PhotoUploadResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiResponseProgressListener;-><init>(Ljava/lang/Class;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/photos/PhotoManager;->a(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string p2, "api"

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->api:Lcom/narvii/util/http/ApiService;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    .line 39
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCancelled()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/photos/PhotoManager;->a(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v1, "api"

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 38
    return v0
.end method

.method public get()Lcom/narvii/model/Media;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->ret:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/narvii/model/Media;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->ret:Lcom/narvii/model/Media;

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->get()Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->get(JLjava/util/concurrent/TimeUnit;)Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    return v0
.end method

.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    .line 6
    .line 7
    iget-object p3, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    .line 8
    .line 9
    iget-object p3, p3, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p3, p2, p4, p6}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/photos/PhotoUploadResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/photos/PhotoUploadResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p2, Lcom/narvii/photos/PhotoUploadResponse;->media:Lcom/narvii/model/Media;

    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->ret:Lcom/narvii/model/Media;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    iget-object p2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    .line 3
    iget-object v0, v0, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/narvii/photos/VideoUploadListener;->onFinish(Ljava/lang/String;Lcom/narvii/model/Media;)V

    return-void
.end method

.method public onPostProgress(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/photos/VideoUploadListener;->onProgress(Ljava/lang/String;II)V

    .line 10
    return-void
.end method

.method public startUpload()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/photos/VideoUploadSpec;->headers:[Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/photos/VideoUploadSpec;->target:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    iget-object v4, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v1}, Lcom/narvii/photos/PhotoManager;->getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v5}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 28
    move-result v5

    .line 29
    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    .line 33
    .line 34
    const-string v2, "video file does not exist"

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, -0x3

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    const-string v0, "video file not exist "

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 45
    return-void

    .line 46
    .line 47
    .line 48
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    .line 72
    const-string v2, "/media/upload"

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v6

    .line 77
    .line 78
    if-nez v6, :cond_2

    .line 79
    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "/target/"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 105
    move-result-wide v6

    .line 106
    .line 107
    iput-wide v6, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->contentTypeMultiPart()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    new-instance v2, Lcom/narvii/util/http/ApiRequest$FilePart;

    .line 114
    .line 115
    const-string v6, "video.mp4"

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v6, v3}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    new-instance v0, Lcom/narvii/util/http/ApiRequest$FilePart;

    .line 130
    .line 131
    const-string v2, "cover.jpg"

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v2, v4}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 138
    .line 139
    iget-wide v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 143
    move-result-wide v6

    .line 144
    add-long/2addr v2, v6

    .line 145
    .line 146
    iput-wide v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    .line 147
    .line 148
    .line 149
    :cond_3
    const v0, 0x493e0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 155
    .line 156
    iget v0, v0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    .line 157
    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 162
    .line 163
    .line 164
    :cond_4
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    iput-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->api:Lcom/narvii/util/http/ApiService;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v0, p0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_4

    .line 174
    .line 175
    :goto_1
    iget-object v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    .line 176
    .line 177
    iget-object v3, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 178
    .line 179
    .line 180
    invoke-static {v3}, Lcom/narvii/photos/PhotoManager;->a(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    .line 184
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    sget v4, Lcom/narvii/lib/R$string;->out_of_memory:I

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 192
    const/4 v4, -0x2

    .line 193
    .line 194
    .line 195
    invoke-interface {v2, v1, v4, v3, v0}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    const-string v1, "out of memory when upload video"

    .line 198
    .line 199
    .line 200
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    goto :goto_4

    .line 202
    .line 203
    :goto_2
    iget-object v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    if-nez v3, :cond_5

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    move-result-object v3

    .line 214
    goto :goto_3

    .line 215
    .line 216
    .line 217
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 218
    move-result-object v3

    .line 219
    :goto_3
    const/4 v4, -0x1

    .line 220
    .line 221
    .line 222
    invoke-interface {v2, v1, v4, v3, v0}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .line 224
    const-string v1, "fail to upload video"

    .line 225
    .line 226
    .line 227
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :goto_4
    return-void
.end method
