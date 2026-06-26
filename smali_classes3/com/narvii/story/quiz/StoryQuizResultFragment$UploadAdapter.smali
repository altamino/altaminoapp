.class Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;
.super Lcom/narvii/story/quiz/StoryQuizResultAdapter;
.source "StoryQuizResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadAdapter"
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private resultUploading:Z

.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    .line 132
    invoke-direct {p0, p2}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->errorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->resultUploading:Z

    return-void
.end method

.method static synthetic access$302(Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->resultUploading:Z

    return p1
.end method

.method static synthetic access$402(Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->errorMessage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isListShown()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->resultUploading:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->uploadQuizResult()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->onErrorRetry()V

    :goto_0
    return-void
.end method

.method public uploadQuizResult()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultFragment;->access$100(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultFragment;->access$200(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->resultUploading:Z

    .line 169
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    .line 170
    invoke-static {v2}, Lcom/narvii/story/quiz/StoryQuizResultFragment;->access$100(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    iget v2, v2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    .line 171
    invoke-static {v3}, Lcom/narvii/story/quiz/StoryQuizResultFragment;->access$100(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Lcom/narvii/model/Blog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/quiz/result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    .line 174
    invoke-static {v3}, Lcom/narvii/story/quiz/StoryQuizResultFragment;->access$200(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "quizAnswerList"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->signature(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 178
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    const/4 v2, 0x0

    .line 180
    iput-object v2, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->errorMessage:Ljava/lang/String;

    .line 182
    new-instance v2, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;

    const-class v3, Lcom/narvii/feed/quizzes/mode/QuizzesResultResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter$1;-><init>(Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "empty story or result"

    .line 156
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void
.end method
