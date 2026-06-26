.class Lcom/narvii/post/BasePostActivity$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BasePostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/post/BasePostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/post/BasePostActivity;Ljava/lang/Class;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$4;->this$0:Lcom/narvii/post/BasePostActivity;

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

    const/16 p1, 0xee

    if-ne p2, p1, :cond_0

    .line 376
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$4;->this$0:Lcom/narvii/post/BasePostActivity;

    invoke-virtual {p1}, Lcom/narvii/post/BasePostActivity;->checkActivation()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 377
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$4;->this$0:Lcom/narvii/post/BasePostActivity;

    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$4;->this$0:Lcom/narvii/post/BasePostActivity;

    invoke-virtual {p1, p4}, Lcom/narvii/post/BasePostActivity;->eligibleFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
