.class Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3$1;
.super Lcom/narvii/share/ShareButtonSaveStory;
.source "StoryQuizResultLayoutNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;

    invoke-direct {p0, p2}, Lcom/narvii/share/ShareButtonSaveStory;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onClickWithPermissionGranted(Lcom/narvii/share/SharePayload;)V
    .locals 2

    .line 157
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;

    iget-object p1, p1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$600(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/StoryDownloadHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;

    iget-object p1, p1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$600(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/StoryDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3$1;->this$1:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;

    iget-object v0, v0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$300(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/model/Blog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/story/StoryDownloadHelper;->downloadStory(Lcom/narvii/model/Blog;I)V

    :cond_0
    return-void
.end method
