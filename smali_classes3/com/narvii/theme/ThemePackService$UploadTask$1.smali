.class Lcom/narvii/theme/ThemePackService$UploadTask$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ThemePackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/theme/ThemePackService$UploadTask;->onPostExecute(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/photos/PhotoUploadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/theme/ThemePackService$UploadTask;


# direct methods
.method constructor <init>(Lcom/narvii/theme/ThemePackService$UploadTask;Ljava/lang/Class;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask$1;->this$1:Lcom/narvii/theme/ThemePackService$UploadTask;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 1055
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1056
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask$1;->this$1:Lcom/narvii/theme/ThemePackService$UploadTask;

    iget-object p1, p1, Lcom/narvii/theme/ThemePackService$UploadTask;->listener:Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;

    invoke-interface {p1, p4}, Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;->onUploadFail(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1045
    check-cast p2, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/theme/ThemePackService$UploadTask$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/photos/PhotoUploadResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/photos/PhotoUploadResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1049
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1050
    iget-object p1, p0, Lcom/narvii/theme/ThemePackService$UploadTask$1;->this$1:Lcom/narvii/theme/ThemePackService$UploadTask;

    iget-object p1, p1, Lcom/narvii/theme/ThemePackService$UploadTask;->listener:Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;

    iget-object p2, p2, Lcom/narvii/photos/PhotoUploadResponse;->mediaValue:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/narvii/theme/ThemePackService$ThemePackUploadListener;->onUploadSuccess(Ljava/lang/String;)V

    return-void
.end method
