.class Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$1;
.super Landroid/content/BroadcastReceiver;
.source "StoryQuizResultLayoutNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;
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

    .line 77
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$1;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$1;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$000(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->uploadQuizResult()V

    return-void
.end method
