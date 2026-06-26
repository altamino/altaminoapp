.class Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StoryQuizResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->uploadQuizResult()V
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
.field final synthetic this$1:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

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

    .line 191
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->access$402(Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->access$302(Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;Z)Z

    .line 193
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->access$302(Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;Z)Z

    .line 186
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;)V

    return-void
.end method
