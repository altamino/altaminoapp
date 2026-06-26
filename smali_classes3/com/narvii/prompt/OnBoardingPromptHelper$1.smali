.class Lcom/narvii/prompt/OnBoardingPromptHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "OnBoardingPromptHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/OnBoardingPromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/OnBoardingPromptHelper;Ljava/lang/Class;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$1;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

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

    .line 79
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$1;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFollowFinished:Z

    .line 81
    invoke-static {p1}, Lcom/narvii/prompt/OnBoardingPromptHelper;->access$000(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prompt/OnBoardingPromptHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$1;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/prompt/OnBoardingPromptHelper;->recommendFollowFinished:Z

    .line 70
    iget-object p1, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$1;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    iget-object p1, p1, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$1;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    iget-object p1, p1, Lcom/narvii/prompt/OnBoardingPromptHelper;->mOnBoardingIntent:Landroid/content/Intent;

    iget-object p2, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "users"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/prompt/OnBoardingPromptHelper$1;->this$0:Lcom/narvii/prompt/OnBoardingPromptHelper;

    invoke-static {p1}, Lcom/narvii/prompt/OnBoardingPromptHelper;->access$000(Lcom/narvii/prompt/OnBoardingPromptHelper;)V

    return-void
.end method
