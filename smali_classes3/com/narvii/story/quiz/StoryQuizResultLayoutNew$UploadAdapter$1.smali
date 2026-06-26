.class Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$1;
.super Ljava/lang/Object;
.source "StoryQuizResultLayoutNew.java"

# interfaces
.implements Lcom/narvii/list/ObjectItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

.field final synthetic val$this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    iput-object p2, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$1;->val$this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    iget-object v0, v0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-virtual {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Score"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    iget-object v1, v1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$900(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scoreShowId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
