.class Lcom/narvii/quiz/QuizMileStoneFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "QuizMileStoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;Ljava/lang/Class;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

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

    .line 429
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 430
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xe6

    if-ne p2, p1, :cond_1

    .line 434
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$900(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 438
    :goto_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1002(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    .line 439
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$600(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 440
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$700(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$700(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 441
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$700(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 443
    :cond_2
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$602(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    :cond_3
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 413
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$402(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    .line 417
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$502(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    .line 418
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$600(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 419
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$700(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$700(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$700(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$800(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    .line 423
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$602(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 409
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;)V

    return-void
.end method
