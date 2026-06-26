.class public final Lcom/narvii/video/widget/AudioEditorPanel;
.super Landroid/widget/RelativeLayout;
.source "AudioEditorPanel.kt"

# interfaces
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioEditorPanel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEditorPanel.kt\ncom/narvii/video/widget/AudioEditorPanel\n*L\n1#1,157:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private audioClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private initialized:Z

.field private final mainHandler:Landroid/os/Handler;

.field private optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

.field private originalInputAudioClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private playbackTimer:Ljava/lang/Runnable;

.field private previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

.field private visibleVideoTrackLengthInMs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3a98

    .line 57
    iput p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$layout;->component_audio_editor_panel:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    new-instance p1, Lcom/narvii/video/widget/AudioEditorPanel$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/AudioEditorPanel$1;-><init>(Lcom/narvii/video/widget/AudioEditorPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3a98

    .line 57
    iput p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$layout;->component_audio_editor_panel:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    new-instance p1, Lcom/narvii/video/widget/AudioEditorPanel$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/AudioEditorPanel$1;-><init>(Lcom/narvii/video/widget/AudioEditorPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    return-object p0
.end method

.method public static final synthetic access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "frameRetrieverManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/narvii/video/widget/AudioEditorPanel;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getPlaybackTimer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "playbackTimer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getPreviewPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "previewPlayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$onPlaybackStatusChanged(Lcom/narvii/video/widget/AudioEditorPanel;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    return-void
.end method

.method public static final synthetic access$setAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/interfaces/IEditorAudioPlayer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    return-void
.end method

.method public static final synthetic access$setFrameRetrieverManager$p(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public static final synthetic access$setPlaybackTimer$p(Lcom/narvii/video/widget/AudioEditorPanel;Ljava/lang/Runnable;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setPreviewPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    return-void
.end method

.method private final initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 7

    .line 108
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v2, v0

    .line 109
    sget v0, Lcom/narvii/mediaeditor/R$id;->volume_controller_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/video/widget/VolumeProgressView;

    new-instance v3, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1;-><init>(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/model/AVClipInfoPack;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/widget/VolumeProgressView;->init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V

    .line 115
    iget v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3a98

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 116
    sget v1, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/widget/MediaOptionPanel;

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getTrackContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audioClip.trackContent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, p0}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 117
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 118
    new-instance v2, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$2;-><init>(Lcom/narvii/video/widget/AudioEditorPanel;Lcom/narvii/video/model/AVClipInfoPack;II)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    return-void
.end method

.method private final onPlaybackStatusChanged(Z)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const-string v3, "playbackTimer"

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->audio_time_line_component:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    return-void

    .line 151
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bind(Lcom/narvii/video/model/AVClipInfoPack;ILcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V
    .locals 1

    const-string v0, "audioClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewPlayer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameRetrieverManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    .line 95
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->originalInputAudioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 96
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 97
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    iput p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 98
    :cond_0
    iput-object p5, p0, Lcom/narvii/video/widget/AudioEditorPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 99
    iput p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    .line 100
    iput-object p4, p0, Lcom/narvii/video/widget/AudioEditorPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 101
    iput-object p3, p0, Lcom/narvii/video/widget/AudioEditorPanel;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 102
    sget p1, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/MediaOptionPanel;

    if-eqz p1, :cond_2

    sget p1, Lcom/narvii/mediaeditor/R$id;->audio_time_line_component:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onAddMusicSelected()V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    return-void
.end method

.method public onControllerActive()V
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onControllerActive(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 38
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->pause()V

    :cond_0
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->pause()V

    :cond_0
    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    return-void
.end method

.method public onOptionCancel(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onOptionCancel(I)V

    :cond_0
    return-void
.end method

.method public onOptionDone(I)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->originalInputAudioClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_1

    .line 24
    sget v1, Lcom/narvii/mediaeditor/R$id;->audio_time_line_component:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/AudioEditorPanel;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurCutPosition()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 25
    aget v2, v1, v2

    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    const/4 v2, 0x1

    .line 26
    aget v1, v1, v2

    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 27
    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onOptionDone(I)V

    :cond_2
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onPlayerTick(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;JJ)V

    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 2

    .line 48
    iget-object p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz p2, :cond_0

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->seekTo(J)V

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->start()V

    :cond_1
    const/4 p1, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 80
    iget-boolean p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p2, :cond_1

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 81
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/AudioEditorPanel;->initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 1

    const-string v0, "clipInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V

    return-void
.end method

.method public onTimeLineLayout()V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineScrolledOffsetChanged(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;I)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 87
    iget-boolean v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    if-ne p2, p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->stop()V

    :cond_0
    const/4 p1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    :cond_1
    return-void
.end method
