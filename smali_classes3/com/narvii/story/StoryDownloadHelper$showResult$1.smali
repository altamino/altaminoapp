.class final Lcom/narvii/story/StoryDownloadHelper$showResult$1;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper;->showResult(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $hasError:Z

.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iput-boolean p2, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->$hasError:Z

    iput-object p3, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 217
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/story/StoryDownloadHelper;->getProgressDialog()Lcom/narvii/scene/view/ProgressRingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/ProgressRingDialog;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {v0}, Lcom/narvii/story/StoryDownloadHelper;->getOnActionFinished()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v0}, Lcom/narvii/story/StoryDownloadHelper;->access$getCtx$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 220
    iget-boolean v2, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->$hasError:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0f0f27

    .line 221
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 223
    :cond_1
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_2

    .line 224
    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVActivity;

    const v1, 0x7f080148

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v1, 0x7f0f0f30

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f01004c

    const-wide/16 v6, 0x258

    .line 224
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-static {v1}, Lcom/narvii/story/StoryDownloadHelper;->access$getVideoManager$p(Lcom/narvii/story/StoryDownloadHelper;)Lcom/narvii/video/services/VideoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->$filePath:Ljava/lang/String;

    new-instance v3, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;-><init>(Lcom/narvii/story/StoryDownloadHelper$showResult$1;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfo(Ljava/lang/String;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;)V

    :goto_0
    return-void
.end method
