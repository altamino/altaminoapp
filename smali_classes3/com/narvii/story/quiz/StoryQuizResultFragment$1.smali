.class Lcom/narvii/story/quiz/StoryQuizResultFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "StoryQuizResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$1;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultFragment$1;->this$0:Lcom/narvii/story/quiz/StoryQuizResultFragment;

    invoke-static {p1}, Lcom/narvii/story/quiz/StoryQuizResultFragment;->access$000(Lcom/narvii/story/quiz/StoryQuizResultFragment;)Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/quiz/StoryQuizResultFragment$UploadAdapter;->uploadQuizResult()V

    return-void
.end method
