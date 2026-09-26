.class Lcom/narvii/post/PostHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/post/PostHelper$2$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/post/PostHelper$2$1;-><init>(Lcom/narvii/post/PostHelper$2;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/post/PostHelper$2;->updateProgress:Ljava/lang/Runnable;

    .line 13
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    iget-boolean p3, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    iget-object p3, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p1, p2, p4, p6}, Lcom/narvii/post/PostListener;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x64

    .line 13
    .line 14
    iput v0, p1, Lcom/narvii/post/PostHelper;->postProgres:I

    .line 15
    .line 16
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/post/PostHelper$2;->updateProgress:Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 24
    .line 25
    iget-object v0, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->getProgress()I

    .line 29
    move-result v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1, v1, v2}, Lcom/narvii/post/PostListener;->onPostProgress(Lcom/narvii/post/PostHelper;II)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p1, p2}, Lcom/narvii/post/PostListener;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 46
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/post/PostHelper;->getProgress()I

    .line 10
    move-result p2

    .line 11
    .line 12
    iget-object p3, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    .line 16
    move-result p3

    .line 17
    .line 18
    sub-int p2, p3, p2

    .line 19
    int-to-float p2, p2

    .line 20
    .line 21
    .line 22
    const p4, 0x3f99999a    # 1.2f

    .line 23
    mul-float/2addr p2, p4

    .line 24
    int-to-float p3, p3

    .line 25
    div-float/2addr p2, p3

    .line 26
    .line 27
    const/high16 p3, 0x3f800000    # 1.0f

    .line 28
    .line 29
    .line 30
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result p2

    .line 32
    .line 33
    .line 34
    const p3, 0x3ecccccd    # 0.4f

    .line 35
    .line 36
    .line 37
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 38
    move-result p2

    .line 39
    .line 40
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 41
    mul-float/2addr p2, p3

    .line 42
    float-to-int p2, p2

    .line 43
    int-to-long p2, p2

    .line 44
    .line 45
    iget-object p4, p0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 46
    .line 47
    const/16 v0, 0x64

    .line 48
    .line 49
    iput v0, p4, Lcom/narvii/post/PostHelper;->postProgres:I

    .line 50
    .line 51
    iget-object p4, p0, Lcom/narvii/post/PostHelper$2;->updateProgress:Ljava/lang/Runnable;

    .line 52
    .line 53
    .line 54
    invoke-static {p4}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    return-object p1
.end method
