.class Lcom/narvii/photos/PhotoManager$5;
.super Lcom/narvii/util/http/ApiResponseProgressListener;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseProgressListener<",
        "Lcom/narvii/photos/PhotoUploadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/photos/PhotoManager;

.field final synthetic val$listener:Lcom/narvii/photos/PhotoUploadListener;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/photos/PhotoManager;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager$5;->this$0:Lcom/narvii/photos/PhotoManager;

    iput-object p3, p0, Lcom/narvii/photos/PhotoManager$5;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/photos/PhotoManager$5;->val$listener:Lcom/narvii/photos/PhotoUploadListener;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseProgressListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
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

    .line 704
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$5;->val$listener:Lcom/narvii/photos/PhotoUploadListener;

    iget-object p3, p0, Lcom/narvii/photos/PhotoManager$5;->val$uri:Ljava/lang/String;

    invoke-interface {p1, p3, p2, p4, p6}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 686
    check-cast p2, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/photos/PhotoManager$5;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/photos/PhotoUploadResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/photos/PhotoUploadResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$5;->val$uri:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$5;->this$0:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "u"

    invoke-static {v0, p1, v1}, Lcom/narvii/photos/PhotoManager;->access$000(Lcom/narvii/photos/PhotoManager;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 691
    iget-object v0, p2, Lcom/narvii/photos/PhotoUploadResponse;->mediaValue:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 694
    :cond_0
    iget-object p1, p0, Lcom/narvii/photos/PhotoManager$5;->val$listener:Lcom/narvii/photos/PhotoUploadListener;

    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$5;->val$uri:Ljava/lang/String;

    iget-object v1, p2, Lcom/narvii/photos/PhotoUploadResponse;->mediaValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/narvii/photos/PhotoUploadListener;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object p1, p2, Lcom/narvii/photos/PhotoUploadResponse;->mediaValue:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 697
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "malformed uploaded image url "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/narvii/photos/PhotoUploadResponse;->mediaValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPostProgress(II)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager$5;->val$listener:Lcom/narvii/photos/PhotoUploadListener;

    iget-object v1, p0, Lcom/narvii/photos/PhotoManager$5;->val$uri:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/photos/PhotoUploadListener;->onProgress(Ljava/lang/String;II)V

    return-void
.end method
