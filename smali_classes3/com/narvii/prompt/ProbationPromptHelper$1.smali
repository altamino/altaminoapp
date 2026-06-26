.class Lcom/narvii/prompt/ProbationPromptHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ProbationPromptHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/ProbationPromptHelper;->doTryShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/ProbationLogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/ProbationPromptHelper;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/ProbationPromptHelper;Ljava/lang/Class;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/prompt/ProbationPromptHelper$1;->this$0:Lcom/narvii/prompt/ProbationPromptHelper;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ProbationLogResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    iget p1, p2, Lcom/narvii/community/ProbationLogResponse;->communityProbationLogCount:I

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/narvii/community/ProbationLogResponse;->communityProbationLogList:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/narvii/prompt/ProbationPromptHelper$1;->this$0:Lcom/narvii/prompt/ProbationPromptHelper;

    iget-object p1, p1, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 46
    new-instance v1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v2, p0, Lcom/narvii/prompt/ProbationPromptHelper$1;->this$0:Lcom/narvii/prompt/ProbationPromptHelper;

    iget-object v2, v2, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0e29

    .line 47
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p2, Lcom/narvii/community/ProbationLogResponse;->communityProbationLogList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean;

    iget-object p1, p1, Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean;->message:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x104000a

    const/4 p2, 0x0

    .line 50
    invoke-virtual {v1, p1, v0, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 51
    new-instance p1, Lcom/narvii/prompt/ProbationPromptHelper$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/prompt/ProbationPromptHelper$1$1;-><init>(Lcom/narvii/prompt/ProbationPromptHelper$1;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    iget-object p1, p0, Lcom/narvii/prompt/ProbationPromptHelper$1;->this$0:Lcom/narvii/prompt/ProbationPromptHelper;

    new-instance p2, Lcom/narvii/prompt/ProbationPromptHelper$1$2;

    invoke-direct {p2, p0, v1}, Lcom/narvii/prompt/ProbationPromptHelper$1$2;-><init>(Lcom/narvii/prompt/ProbationPromptHelper$1;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, p2}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    check-cast p2, Lcom/narvii/community/ProbationLogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prompt/ProbationPromptHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ProbationLogResponse;)V

    return-void
.end method
