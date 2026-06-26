.class Lcom/narvii/photos/PhotoManager$VideoUploadTask;
.super Lcom/narvii/util/http/ApiResponseProgressListener;
.source "PhotoManager.java"

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

    .line 880
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    .line 881
    const-class v0, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-direct {p0, v0}, Lcom/narvii/util/http/ApiResponseProgressListener;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 875
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    .line 876
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    const-wide/16 v1, 0x0

    .line 878
    iput-wide v1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    .line 882
    iput-object p2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    .line 883
    invoke-static {p1}, Lcom/narvii/photos/PhotoManager;->access$100(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->api:Lcom/narvii/util/http/ApiService;

    .line 884
    iput-object p3, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    .line 885
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    .line 886
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .line 965
    invoke-virtual {p0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 968
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 971
    :cond_1
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    invoke-static {p1}, Lcom/narvii/photos/PhotoManager;->access$100(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v1, "api"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 972
    iput-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    .line 973
    iget-object v1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

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

    .line 992
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->ret:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/narvii/model/Media;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1000
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

    .line 870
    invoke-virtual {p0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->get()Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->get(JLjava/util/concurrent/TimeUnit;)Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 979
    iget-boolean v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isCanceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 984
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

    const/4 p1, 0x1

    .line 954
    iput-boolean p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    .line 955
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    iget-object p3, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    iget-object p3, p3, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    invoke-interface {p1, p3, p2, p4, p6}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 870
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

    .line 947
    iget-object p1, p2, Lcom/narvii/photos/PhotoUploadResponse;->media:Lcom/narvii/model/Media;

    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->ret:Lcom/narvii/model/Media;

    const/4 p2, 0x1

    .line 948
    iput-boolean p2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->isDone:Z

    .line 949
    iget-object p2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    iget-object v0, v0, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/narvii/photos/VideoUploadListener;->onFinish(Ljava/lang/String;Lcom/narvii/model/Media;)V

    return-void
.end method

.method public onPostProgress(II)V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    iget-object v1, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    iget-object v1, v1, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/photos/VideoUploadListener;->onProgress(Ljava/lang/String;II)V

    return-void
.end method

.method public startUpload()V
    .locals 8

    .line 890
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->uploadSpec:Lcom/narvii/photos/VideoUploadSpec;

    iget-object v1, v0, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    .line 891
    iget-object v2, v0, Lcom/narvii/photos/VideoUploadSpec;->headers:[Ljava/lang/String;

    .line 892
    iget-object v0, v0, Lcom/narvii/photos/VideoUploadSpec;->target:Ljava/lang/String;

    .line 894
    iget-object v3, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v3, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 895
    iget-object v4, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v4, v1}, Lcom/narvii/photos/PhotoManager;->getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 896
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 897
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    const/4 v2, -0x3

    const/4 v3, 0x0

    const-string v4, "video file does not exist"

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "video file not exist "

    .line 898
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void

    .line 903
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 905
    invoke-virtual {v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 907
    :cond_1
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 908
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v2, "/media/upload"

    .line 911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 912
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/target/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    :cond_2
    invoke-virtual {v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 917
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    .line 918
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->contentTypeMultiPart()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v2, Lcom/narvii/util/http/ApiRequest$FilePart;

    const-string v6, "video.mp4"

    invoke-direct {v2, v6, v3}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 919
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    new-instance v0, Lcom/narvii/util/http/ApiRequest$FilePart;

    const-string v2, "cover.jpg"

    invoke-direct {v0, v2, v4}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 921
    iget-wide v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->length:J

    :cond_3
    const v0, 0x493e0

    .line 926
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 929
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    iget v0, v0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    if-eqz v0, :cond_4

    .line 930
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    iget v0, v0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    invoke-virtual {v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 934
    :cond_4
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 935
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->api:Lcom/narvii/util/http/ApiService;

    iget-object v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v2, p0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 940
    iget-object v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->this$0:Lcom/narvii/photos/PhotoManager;

    invoke-static {v4}, Lcom/narvii/photos/PhotoManager;->access$100(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/narvii/lib/R$string;->out_of_memory:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4, v0}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "out of memory when upload video"

    .line 941
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 937
    iget-object v2, p0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->listener:Lcom/narvii/photos/VideoUploadListener;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-interface {v2, v1, v3, v4, v0}, Lcom/narvii/photos/VideoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "fail to upload video"

    .line 938
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
