.class public final Lcom/narvii/video/widget/AudioEditorPanel;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;


# instance fields
.field private audioClip:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private initialized:Z

.field private final mainHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private originalInputAudioClip:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playbackTimer:Ljava/lang/Runnable;

.field private previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

.field private visibleVideoTrackLengthInMs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 4
    new-instance p1, Lcom/narvii/video/widget/b;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/b;-><init>(Lcom/narvii/video/widget/AudioEditorPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 8
    new-instance p1, Lcom/narvii/video/widget/b;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/b;-><init>(Lcom/narvii/video/widget/AudioEditorPanel;)V

    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/narvii/video/widget/AudioEditorPanel;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->getCurrentPositionInTimeLine()J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updatePlaybackTime(J)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    const-string p0, "playbackTimer"

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 33
    const/4 p0, 0x0

    .line 34
    .line 35
    :cond_1
    const-wide/16 v1, 0x28

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;Lcom/narvii/video/widget/AudioEditorPanel;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/AudioEditorPanel;->initComponent$lambda$4$lambda$3(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;Lcom/narvii/video/widget/AudioEditorPanel;II)V

    return-void
.end method

.method public static final synthetic access$getAudioPlayer$p(Lcom/narvii/video/widget/AudioEditorPanel;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$onPlaybackStatusChanged(Lcom/narvii/video/widget/AudioEditorPanel;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/narvii/video/widget/AudioEditorPanel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/AudioEditorPanel;->_init_$lambda$2(Lcom/narvii/video/widget/AudioEditorPanel;)V

    return-void
.end method

.method private final initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 9

    .line 1
    .line 2
    iget-object v2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    int-to-float v1, v1

    .line 8
    mul-float/2addr v0, v1

    .line 9
    float-to-int v4, v0

    .line 10
    .line 11
    iget-object v3, v2, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->volumeControllerPanel:Lcom/narvii/video/widget/VolumeProgressView;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "volumeControllerPanel"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    new-instance v5, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v5, p1, p0}, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$1;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/widget/AudioEditorPanel;)V

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x4

    .line 25
    const/4 v8, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static/range {v3 .. v8}, Lcom/narvii/video/widget/VolumeProgressView;->init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V

    .line 29
    .line 30
    iget v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    .line 31
    .line 32
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result v0

    .line 37
    .line 38
    const/16 v1, 0x3a98

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 42
    move-result v4

    .line 43
    .line 44
    iget-object v0, v2, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getTrackContent()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-string v3, "getTrackContent(...)"

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3, v1, p0}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 65
    move-result v5

    .line 66
    .line 67
    new-instance v6, Lcom/narvii/video/widget/a;

    .line 68
    move-object v0, v6

    .line 69
    move-object v1, p1

    .line 70
    move-object v3, p0

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/widget/a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;Lcom/narvii/video/widget/AudioEditorPanel;II)V

    .line 74
    .line 75
    .line 76
    invoke-static {v6}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 77
    const/4 p1, 0x1

    .line 78
    .line 79
    iput-boolean p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    .line 80
    return-void
.end method

.method private static final initComponent$lambda$4$lambda$3(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;Lcom/narvii/video/widget/AudioEditorPanel;II)V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v9, p2

    .line 7
    .line 8
    const-string v2, "$audioClip"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v2, "$this_with"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "this$0"

    .line 20
    .line 21
    .line 22
    invoke-static {v9, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    const-string v3, "copy(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    iget v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 45
    .line 46
    iget-object v3, v1, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 47
    .line 48
    const-string v8, "audioTimeLineComponent"

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    const/16 v4, 0x65

    .line 54
    .line 55
    const/16 v5, 0xc9

    .line 56
    const/4 v6, 0x1

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    move-result-object v7

    .line 61
    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    iget-object v2, v9, Lcom/narvii/video/widget/AudioEditorPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 65
    const/4 v15, 0x0

    .line 66
    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    const-string v2, "frameRetrieverManager"

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 73
    .line 74
    move-object/from16 v17, v15

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_0
    move-object/from16 v17, v2

    .line 78
    .line 79
    :goto_0
    const/16 v2, 0x3e8

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v10

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    move v15, v2

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    .line 94
    const v19, 0x9f00

    .line 95
    .line 96
    const/16 v20, 0x0

    .line 97
    move-object v2, v3

    .line 98
    move v3, v4

    .line 99
    move v4, v5

    .line 100
    move v5, v6

    .line 101
    move-object v6, v7

    .line 102
    .line 103
    move-object/from16 v7, v16

    .line 104
    .line 105
    move-object/from16 v21, v8

    .line 106
    .line 107
    move-object/from16 v8, v17

    .line 108
    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move/from16 v16, p4

    .line 112
    .line 113
    move-object/from16 v17, p2

    .line 114
    .line 115
    .line 116
    invoke-static/range {v2 .. v20}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    .line 117
    .line 118
    move-object/from16 v2, p2

    .line 119
    .line 120
    iget-object v15, v2, Lcom/narvii/video/widget/AudioEditorPanel;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 121
    .line 122
    if-nez v15, :cond_1

    .line 123
    .line 124
    const-string v3, "previewPlayer"

    .line 125
    .line 126
    .line 127
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 128
    const/4 v15, 0x0

    .line 129
    :cond_1
    const/4 v3, 0x2

    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, 0x0

    .line 132
    .line 133
    .line 134
    invoke-static {v15, v0, v4, v3, v5}, Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin$DefaultImpls;->openSingleAudio$default(Lcom/narvii/video/interfaces/IExtraAudioTrackPlugin;Lcom/narvii/video/model/AVClipInfoPack;ZILjava/lang/Object;)Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    iput-object v3, v2, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 138
    .line 139
    if-eqz v3, :cond_2

    .line 140
    .line 141
    new-instance v5, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$2$1;

    .line 142
    .line 143
    .line 144
    invoke-direct {v5, v2}, Lcom/narvii/video/widget/AudioEditorPanel$initComponent$1$2$1;-><init>(Lcom/narvii/video/widget/AudioEditorPanel;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v3, v5}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->addAudioEventListener(Lcom/narvii/video/interfaces/IEditorAudioPlayer$IAudioEventListener;)V

    .line 148
    .line 149
    :cond_2
    iput v4, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 150
    .line 151
    iget v3, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 152
    .line 153
    if-lez v3, :cond_3

    .line 154
    .line 155
    iget-object v4, v1, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 156
    .line 157
    move-object/from16 v1, v21

    .line 158
    .line 159
    .line 160
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    iget v5, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 163
    const/4 v6, 0x0

    .line 164
    const/4 v7, 0x0

    .line 165
    const/4 v8, 0x1

    .line 166
    const/4 v9, 0x0

    .line 167
    const/4 v10, 0x0

    .line 168
    const/4 v11, 0x0

    .line 169
    .line 170
    const/16 v12, 0x76

    .line 171
    const/4 v13, 0x0

    .line 172
    .line 173
    .line 174
    invoke-static/range {v4 .. v13}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 175
    .line 176
    iget-object v1, v2, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 177
    .line 178
    if-eqz v1, :cond_3

    .line 179
    .line 180
    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 181
    int-to-long v2, v0

    .line 182
    .line 183
    .line 184
    invoke-interface {v1, v2, v3}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->seekTo(J)V

    .line 185
    :cond_3
    return-void
.end method

.method private final onPlaybackStatusChanged(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const-string v3, "playbackTimer"

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    move-object v1, v2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->mainHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->playbackTimer:Ljava/lang/Runnable;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public final bind(Lcom/narvii/video/model/AVClipInfoPack;ILcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/interfaces/IPreviewPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/services/FrameRetrieverManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "audioClip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "previewPlayer"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "frameRetrieverManager"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "listener"

    .line 18
    .line 19
    .line 20
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->originalInputAudioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 37
    .line 38
    iput p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 39
    .line 40
    :goto_0
    iput-object p5, p0, Lcom/narvii/video/widget/AudioEditorPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 41
    .line 42
    iput p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->visibleVideoTrackLengthInMs:I

    .line 43
    .line 44
    iput-object p4, p0, Lcom/narvii/video/widget/AudioEditorPanel;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/narvii/video/widget/AudioEditorPanel;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 49
    .line 50
    iget-object p2, p1, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    move-result p1

    .line 61
    .line 62
    if-lez p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 71
    :cond_1
    return-void
.end method

.method public onAddMusicSelected()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener$DefaultImpls;->onAddMusicSelected(Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 4
    return-void
.end method

.method public onControllerActive()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onControllerActive(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->pause()V

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    .line 15
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->pause()V

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    .line 12
    return-void
.end method

.method public onOptionCancel(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onOptionCancel(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public onOptionDone(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->originalInputAudioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->binding:Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/ComponentAudioEditorPanelBinding;->audioTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurCutPosition()[I

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    aget v2, v1, v2

    .line 16
    .line 17
    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    aget v1, v1, v2

    .line 21
    .line 22
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    :goto_0
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->optionSelectedListener:Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;->onOptionDone(I)V

    .line 41
    :cond_2
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onPlayerTick(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;JJ)V

    .line 4
    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    int-to-long v0, p1

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, v0, v1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->seekTo(J)V

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->start()V

    .line 16
    :cond_1
    const/4 p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    .line 20
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/AudioEditorPanel;->initComponent(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 20
    :cond_0
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 0
    .param p1    # Lcom/narvii/video/interfaces/ITimelineClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 4
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 4
    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineScrolledOffsetChanged(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;I)V

    .line 4
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "changedView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/video/widget/AudioEditorPanel;->initialized:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x8

    .line 21
    .line 22
    if-ne p2, p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/video/widget/AudioEditorPanel;->audioPlayer:Lcom/narvii/video/interfaces/IEditorAudioPlayer;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IEditorAudioPlayer;->stop()V

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/AudioEditorPanel;->onPlaybackStatusChanged(Z)V

    .line 34
    :cond_1
    return-void
.end method
