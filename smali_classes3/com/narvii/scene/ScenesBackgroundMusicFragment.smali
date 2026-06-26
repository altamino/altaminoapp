.class public Lcom/narvii/scene/ScenesBackgroundMusicFragment;
.super Lcom/narvii/app/NVFragment;
.source "ScenesBackgroundMusicFragment.java"

# interfaces
.implements Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
.implements Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
.implements Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


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
    .locals 1

    .line 40
    const-class v0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    .line 53
    iput-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->isWaitingPlaying:Z

    .line 55
    iput v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/ScenePreviewLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/model/SceneDraft;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)Lcom/narvii/scene/view/EditSceneBGMLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private showInvalidDialog()V
    .locals 4

    .line 168
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 169
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 170
    new-instance v1, Lcom/narvii/scene/ScenesBackgroundMusicFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment$3;-><init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V

    const/4 v2, 0x0

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 176
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 177
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    .line 60
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected getEditDuration()J
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryBackgroundMusicEdit"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, ""

    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    .line 243
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->release()V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/narvii/scene/view/EditSceneBGMLayout;->release()V

    .line 251
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultBgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bgMusicClip"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onControllerActive()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 66
    const-class v0, Lcom/narvii/video/model/AVClipInfoPack;

    const-class v1, Lcom/narvii/scene/model/SceneDraft;

    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "bgMusicClip"

    const-string v3, "sceneDraft"

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 70
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneDraft;

    iput-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 112
    sget p3, Lcom/narvii/mediaeditor/R$layout;->scenes_background_music_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->release(Z)V

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    return-void
.end method

.method public onFade(ZZ)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput-boolean p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 275
    iput-boolean p2, v0, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 276
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/scene/view/ScenePreviewLayout;->fadeBackgroundMusic(ZZ)V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->pause()V

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    :cond_0
    return-void
.end method

.method public onOptionDelete(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultBgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 p1, -0x1

    .line 268
    iput p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    .line 269
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0, p1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    return-void
.end method

.method public onOptionSubmit(Landroid/view/View;)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultBgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    const/4 p1, -0x1

    .line 261
    iput p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->resultCode:I

    .line 262
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0, p1}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->isWaitingPlaying:Z

    .line 104
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->toPause()V

    .line 105
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->showInvalidDialog()V

    return-void
.end method

.method public onPlayingPause()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    iget-object v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/view/EditSceneBGMLayout;->updatePlaybackTime(J)V

    .line 303
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    if-lez v0, :cond_0

    int-to-long v1, v0

    cmp-long v3, v1, p3

    if-gez v3, :cond_0

    int-to-long p3, v0

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 304
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/view/ScenePreviewLayout;->pause()V

    .line 305
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekPoint(J)V

    :cond_0
    return-void
.end method

.method public onPlayingStart()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPlayingStop()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 217
    iget-object p3, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput p1, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 218
    iput p2, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 219
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    invoke-virtual {p1, p3}, Lcom/narvii/scene/view/ScenePreviewLayout;->setBackgroundMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 220
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object p2, p2, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/model/SceneInfo;

    iget-boolean v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    invoke-virtual {p1, p2, v0}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Lcom/narvii/scene/model/SceneInfo;Z)V

    .line 221
    iget-boolean p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->onPlayingStart()V

    .line 223
    iput-boolean p3, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->waitTrackDrag:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    iget-boolean v1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->isWaitingPlaying:Z

    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->toResume(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sceneDraft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bgMusicClip"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSeek(F)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 191
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    sub-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setVolume(FF)V

    return-void
.end method

.method public onSeekFinish(F)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    iput p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 197
    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setVolume(FF)V

    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 0

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

    .line 117
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "videoManager"

    .line 118
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/services/VideoManager;

    iput-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 119
    sget p2, Lcom/narvii/mediaeditor/R$id;->preview_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/view/ScenePreviewLayout;

    iput-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->previewLayout:Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 120
    sget p2, Lcom/narvii/mediaeditor/R$id;->edit_scene_BGM_Layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/view/EditSceneBGMLayout;

    iput-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    .line 121
    sget p2, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoPlayButton:Landroid/view/View;

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 123
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    iget-object p2, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->bgmClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/video/model/StreamInfo;->isACodecInWhiteList()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V

    .line 128
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V

    .line 129
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setTimelineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 130
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/EditSceneBGMLayout;->setOnFadeListener(Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;)V

    .line 132
    new-instance p1, Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-direct {p1, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 133
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    iget-object v0, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "audio_wave"

    invoke-virtual {p1, v0, v2, p2, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 134
    iget-object p1, p0, Lcom/narvii/scene/ScenesBackgroundMusicFragment;->editSceneBGMLayout:Lcom/narvii/scene/view/EditSceneBGMLayout;

    new-instance p2, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment$1;-><init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 149
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 150
    sget v0, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x104000a

    .line 151
    new-instance v1, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/scene/ScenesBackgroundMusicFragment$2;-><init>(Lcom/narvii/scene/ScenesBackgroundMusicFragment;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 158
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 159
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method
