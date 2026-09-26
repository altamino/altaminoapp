.class public Lcom/narvii/scene/ScenesBackgroundMusicFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
.implements Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
.implements Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScenesBackgroundMusicFragment"


# instance fields
.field private bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private isWaitingPlaying:Z

.field private previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

.field private resultBgmClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private resultCode:I

.field private sceneDraft:Lcom/narvii/scene/model/SceneDraft;

.field private streamInfo:Lcom/narvii/video/model/StreamInfo;

.field private videoManager:Lcom/narvii/video/services/VideoManager;

.field private videoPlayButton:Landroid/view/View;

.field private waitTrackDrag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->isWaitingPlaying:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/model/SceneDraft;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/EditSceneBGMLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private showInvalidDialog()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/scene/ScenesBackgroundMusicFragment$3;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment$3;-><init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V

    .line 20
    .line 21
    .line 22
    const v2, 0x104000a

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 33
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected getEditDuration()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getTotalDuration()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 9
    .line 10
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 11
    int-to-long v2, v2

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "story_background_music_edit"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    .line 13
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->release()V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/scene/view/EditSceneBGMLayout;->release()V

    .line 15
    .line 16
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultBgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "bgMusicClip"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1
.end method

.method public onControllerActive()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 6
    .line 7
    const-string v1, "bgMusicClip"

    .line 8
    .line 9
    const-class v2, Lcom/narvii/scene/model/SceneDraft;

    .line 10
    .line 11
    const-string v3, "sceneDraft"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    check-cast v2, Lcom/narvii/scene/model/SceneDraft;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 69
    .line 70
    iput-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 71
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/mediaeditor/R$layout;->scenes_background_music_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->release(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 12
    return-void
.end method

.method public onFade(ZZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 5
    .line 6
    iput-boolean p2, v0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->fadeBackgroundMusic(ZZ)V

    .line 12
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->isPlaying()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->pause()V

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    .line 17
    :cond_0
    return-void
.end method

.method public onOptionDelete(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultBgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 16
    return-void
.end method

.method public onOptionSubmit(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultBgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 5
    const/4 p1, -0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 17
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->isPlaying()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->isWaitingPlaying:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->toPause()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 17
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->showInvalidDialog()V

    .line 4
    return-void
.end method

.method public onPlayingPause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 5
    .line 6
    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 7
    int-to-long v1, v1

    .line 8
    add-long/2addr v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/view/EditSceneBGMLayout;->updatePlaybackTime(J)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v0, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    int-to-long v1, v0

    .line 21
    .line 22
    cmp-long p3, v1, p3

    .line 23
    .line 24
    if-gez p3, :cond_0

    .line 25
    int-to-long p3, v0

    .line 26
    .line 27
    cmp-long p1, p1, p3

    .line 28
    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->pause()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 37
    .line 38
    const-wide/16 p2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, p3}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekPoint(J)V

    .line 42
    :cond_0
    return-void
.end method

.method public onPlayingStart()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    return-void
.end method

.method public onPlayingStop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 6
    .line 7
    iput p1, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 8
    .line 9
    iput p2, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3}, Lcom/narvii/scene/view/ScenePreviewLayout;->setBackgroundMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 21
    const/4 p3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    check-cast p2, Lcom/narvii/scene/model/SceneInfo;

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Lcom/narvii/scene/model/SceneInfo;Z)V

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onPlayingStart()V

    .line 40
    .line 41
    iput-boolean p3, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    .line 42
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->isWaitingPlaying:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->toResume(Z)V

    .line 11
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "sceneDraft"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "bgMusicClip"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSeek(F)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpl-float v2, p1, v1

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, p1

    .line 12
    .line 13
    :goto_0
    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 16
    sub-float/2addr v1, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setVolume(FF)V

    .line 20
    return-void
.end method

.method public onSeekFinish(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    sub-float/2addr v1, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setVolume(FF)V

    .line 13
    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 0
    .param p1    # Lcom/narvii/video/interfaces/ITimelineClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTimeLineLayout()V
    .locals 0

    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p2, "videoManager"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/video/services/VideoManager;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 15
    .line 16
    sget p2, Lcom/narvii/mediaeditor/R$id;->preview_layout:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 25
    .line 26
    sget p2, Lcom/narvii/mediaeditor/R$id;->edit_scene_BGM_Layout:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 35
    .line 36
    sget p2, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    .line 43
    const/4 p1, 0x0

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 72
    .line 73
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 74
    const/4 p2, 0x0

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    iget-object v0, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/video/model/StreamInfo;->isACodecInWhiteList()Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setTimelineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setOnFadeListener(Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;)V

    .line 107
    .line 108
    new-instance p1, Lcom/narvii/video/services/FrameRetrieverManager;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 112
    .line 113
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 118
    .line 119
    const-string v1, "audio_wave"

    .line 120
    const/4 v2, 0x1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 126
    .line 127
    new-instance p2, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;-><init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    sget v0, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 149
    .line 150
    new-instance v0, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;-><init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V

    .line 154
    .line 155
    .line 156
    const v1, 0x104000a

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 166
    :goto_0
    return-void
.end method
