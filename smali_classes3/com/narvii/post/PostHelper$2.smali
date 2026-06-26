.class Lcom/narvii/post/PostHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PostHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/PostHelper;->step()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/PostHelper;

.field final updateProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/post/PostHelper;Ljava/lang/Class;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 216
    new-instance p1, Lcom/narvii/post/PostHelper$2$1;

    invoke-direct {p1, p0}, Lcom/narvii/post/PostHelper$2$1;-><init>(Lcom/narvii/post/PostHelper$2;)V

    iput-object p1, p0, Lcom/narvii/post/PostHelper$2;->updateProgress:Ljava/lang/Runnable;

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

    .line 253
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    iget-boolean p3, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    if-nez p3, :cond_0

    iget-object p3, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz p3, :cond_0

    .line 254
    invoke-interface {p3, p1, p2, p4, p6}, Lcom/narvii/post/PostListener;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    iget-boolean v0, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    .line 244
    iput v0, p1, Lcom/narvii/post/PostHelper;->postProgres:I

    .line 245
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/post/PostHelper$2;->updateProgress:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    iget-object v0, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    invoke-virtual {v2}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/narvii/post/PostListener;->onPostProgress(Lcom/narvii/post/PostHelper;II)V

    .line 247
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    iget-object v0, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/post/PostListener;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    :cond_0
    return-void
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;[B)",
            "Lcom/narvii/model/api/ApiResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    invoke-virtual {p2}, Lcom/narvii/post/PostHelper;->getProgress()I

    move-result p2

    .line 230
    iget-object p3, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    invoke-virtual {p3}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    move-result p3

    sub-int p2, p3, p2

    int-to-float p2, p2

    const p4, 0x3f99999a    # 1.2f

    mul-float p2, p2, p4

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 231
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const p3, 0x3ecccccd    # 0.4f

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-long p2, p2

    .line 232
    iget-object p4, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    const/16 v0, 0x64

    iput v0, p4, Lcom/narvii/post/PostHelper;->postProgres:I

    .line 233
    iget-object p4, p0, Lcom/narvii/post/PostHelper$2;->updateProgress:Ljava/lang/Runnable;

    invoke-static {p4}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 235
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method
