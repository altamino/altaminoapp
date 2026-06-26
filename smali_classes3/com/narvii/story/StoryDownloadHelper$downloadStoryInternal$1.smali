.class final Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$1;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper;->downloadStoryInternal(Lcom/narvii/model/User;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/story/StoryDownloadHelper;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ProgressRingDialog;->updateProgress(I)V

    .line 120
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStoryInternal$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/story/StoryDownloadHelper;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/ProgressRingDialog;->show()V

    return-void
.end method
