.class Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StoryQuizResultLayoutNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->uploadQuizResult()V
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
.field final synthetic this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

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

    .line 395
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->access$1202(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->access$1102(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;Z)Z

    .line 397
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

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

    .line 389
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->access$1102(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;Z)Z

    .line 390
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

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

    .line 386
    check-cast p2, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;)V

    return-void
.end method
