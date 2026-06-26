.class Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;
.super Ljava/lang/Object;
.source "StoryQuizResultLayoutNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->onViewCreated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 153
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-virtual {p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Score"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$300(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 154
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$400(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$300(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/model/Blog;

    move-result-object v0

    new-instance v1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3$1;

    iget-object v2, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$500(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3$1;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;Lcom/narvii/app/NVContext;)V

    invoke-static {p1, v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStory(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/share/ShareButtonSaveStory;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    return-void
.end method
