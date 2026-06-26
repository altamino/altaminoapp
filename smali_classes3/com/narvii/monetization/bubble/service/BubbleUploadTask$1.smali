.class Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BubbleUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->onPostExecute(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/bubble/BubbleUploadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/service/BubbleUploadTask;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/service/BubbleUploadTask;Ljava/lang/Class;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;->this$0:Lcom/narvii/monetization/bubble/service/BubbleUploadTask;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 146
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;->this$0:Lcom/narvii/monetization/bubble/service/BubbleUploadTask;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    invoke-interface {v0, p4}, Lcom/narvii/monetization/bubble/service/BubbleUploadListener;->onUploadFail(Ljava/lang/String;)V

    .line 147
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleUploadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/BubbleUploadResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/BubbleUploadResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 141
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;->this$0:Lcom/narvii/monetization/bubble/service/BubbleUploadTask;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    iget-object p2, p2, Lcom/narvii/monetization/bubble/BubbleUploadResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-interface {p1, p2}, Lcom/narvii/monetization/bubble/service/BubbleUploadListener;->onUploadSuccess(Lcom/narvii/model/ChatBubble;)V

    return-void
.end method
