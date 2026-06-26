.class final Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;
.super Ljava/lang/Object;
.source "MediaTrimmingFragment.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/MediaTrimmingFragment$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultVideoServiceCallback"
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/video/MediaTrimmingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/video/MediaTrimmingFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final touchDown()V
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaTrimmingFragment;

    if-eqz v0, :cond_2

    .line 172
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 174
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getHasFailedTaskInThisShot()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setTasksTouchDown(Z)V

    .line 176
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 177
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getHasFailedTaskInThisShot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v2, Lcom/narvii/mediaeditor/R$string;->try_again:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 180
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 181
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputFileName$p(Lcom/narvii/video/MediaTrimmingFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "outputVideoPath"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputDuration$p(Lcom/narvii/video/MediaTrimmingFragment;)I

    move-result v3

    const-string v4, "outputVideoDuration"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputWidth$p(Lcom/narvii/video/MediaTrimmingFragment;)I

    move-result v3

    const-string v4, "outputVideoWidth"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputHeight$p(Lcom/narvii/video/MediaTrimmingFragment;)I

    move-result v3

    const-string v4, "outputVideoHeight"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "entryInfo"

    .line 185
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v0, v2, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaTrimmingFragment;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 164
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/MediaTrimmingFragment;

    if-eqz p1, :cond_1

    .line 136
    invoke-static {p1}, Lcom/narvii/video/MediaTrimmingFragment;->access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p1, v0}, Lcom/narvii/video/MediaTrimmingFragment;->setHasFailedTaskInThisShot(Z)V

    .line 138
    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 139
    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 141
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v1, Lcom/narvii/mediaeditor/R$string;->try_again:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onActionStarted()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaTrimmingFragment;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 128
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 129
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    const-string v2, "0%"

    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setHasFailedTaskInThisShot(Z)V

    :cond_0
    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 121
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->touchDown()V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 2

    const-string v0, "video"

    .line 147
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 148
    iget-object p2, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/MediaTrimmingFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float p1, p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->touchDown()V

    return-void
.end method
