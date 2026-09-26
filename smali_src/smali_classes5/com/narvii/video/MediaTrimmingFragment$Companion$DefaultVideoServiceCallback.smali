.class final Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/video/MediaTrimmingFragment;)V
    .locals 1
    .param p1    # Lcom/narvii/video/MediaTrimmingFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "fragment"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 16
    return-void
.end method

.method private final touchDown()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/MediaTrimmingFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    add-int/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getHasFailedTaskInThisShot()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    xor-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setTasksTouchDown(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getHasFailedTaskInThisShot()Z

    .line 51
    move-result v1

    .line 52
    const/4 v3, 0x0

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    sget v2, Lcom/narvii/mediaeditor/R$string;->try_again:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    .line 92
    new-instance v4, Ljava/io/File;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputFileName$p(Lcom/narvii/video/MediaTrimmingFragment;)Ljava/lang/String;

    .line 105
    move-result-object v7

    .line 106
    .line 107
    if-nez v7, :cond_2

    .line 108
    .line 109
    const-string v7, "outputFileName"

    .line 110
    .line 111
    .line 112
    invoke-static {v7}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move-object v3, v7

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v3, ".mp4"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    .line 129
    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    const-string v4, "outputVideoPath"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .line 140
    const-string v3, "outputVideoDuration"

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputDuration$p(Lcom/narvii/video/MediaTrimmingFragment;)I

    .line 144
    move-result v4

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    .line 149
    const-string v3, "outputVideoWidth"

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputWidth$p(Lcom/narvii/video/MediaTrimmingFragment;)I

    .line 153
    move-result v4

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    .line 158
    const-string v3, "outputVideoHeight"

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getOutputHeight$p(Lcom/narvii/video/MediaTrimmingFragment;)I

    .line 162
    move-result v4

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    .line 167
    const-string v3, "entryInfo"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v4

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 181
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/MediaTrimmingFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 33
    :cond_0
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/video/MediaTrimmingFragment;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/video/MediaTrimmingFragment;->access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/video/MediaTrimmingFragment;->setHasFailedTaskInThisShot(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 24
    move-result v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    sget v1, Lcom/narvii/mediaeditor/R$string;->try_again:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    :goto_0
    const/4 v1, 0x0

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 75
    :cond_1
    return-void
.end method

.method public onActionStarted()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/MediaTrimmingFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/video/MediaTrimmingFragment;->access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getInProgressTaskCount()I

    .line 20
    move-result v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setInProgressTaskCount(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "0%"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment;->setHasFailedTaskInThisShot(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public onExecutingTaskChanged(Lg7/d;)V
    .locals 0
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lg7/d;)V

    .line 4
    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFrameBitmapLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    .line 4
    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->touchDown()V

    .line 4
    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "video"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/video/MediaTrimmingFragment;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/video/MediaTrimmingFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const/16 v1, 0x64

    .line 33
    int-to-float v1, v1

    .line 34
    mul-float/2addr p1, v1

    .line 35
    .line 36
    const/high16 v1, 0x3f000000    # 0.5f

    .line 37
    add-float/2addr p1, v1

    .line 38
    float-to-int p1, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const/16 p1, 0x25

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "path"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;->touchDown()V

    .line 9
    return-void
.end method
