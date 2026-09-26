.class Lcom/narvii/quiz/QuizMileStoneFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    const/16 p1, 0xe6

    .line 15
    .line 16
    if-ne p2, p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->H(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 39
    const/4 p2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$202(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->C(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->z(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->z(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->z(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->E(Lcom/narvii/quiz/QuizMileStoneFragment;Z)V

    .line 85
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$002(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const/4 p2, 0x0

    .line 5
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$102(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->C(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->z(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->z(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->z(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->G(Lcom/narvii/quiz/QuizMileStoneFragment;)V

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$6;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 10
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment;->E(Lcom/narvii/quiz/QuizMileStoneFragment;Z)V

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

    .line 1
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;)V

    return-void
.end method
