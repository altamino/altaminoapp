.class public abstract Lcom/narvii/video/BaseMediaEditorFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/app/FragmentOnBackListener;


# instance fields
.field private activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private autoPlaying:Z

.field private controllerActive:Z

.field private dragging:Z

.field private hasAudioPrepared:Z

.field private hasVideoPrepared:Z

.field private inPlay:Z

.field private initSuccess:Z

.field private isMute:Z

.field private lastSeekPreviewTime:I

.field private needRealOutput:Z

.field private outputFileDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pauseShadow:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pendingSeekAction:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playerButton:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

.field private previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rtl:Z

.field private final seekRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private seeking:Z

.field private skipPauseVideo:Z

.field protected videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->rtl:Z

    .line 22
    return-void
.end method

.method public static final synthetic access$getControllerActive$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasAudioPrepared:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$setHasAudioPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasAudioPrepared:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setHasVideoPrepared$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    .line 3
    return-void
.end method

.method public static final synthetic access$setMute$p(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    .line 3
    return-void
.end method

.method public static synthetic changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x2

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: changeVideoPlaybackStatus"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method private final init()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "realOutput"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->initInputClips()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    return v1
.end method

.method private static final initInputClips$lambda$4(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "$videoClipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$audioClipList"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "$captionList"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "$stickerList"

    .line 24
    .line 25
    .line 26
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result p2

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPipClipList()Ljava/util/ArrayList;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object p0

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result p2

    .line 112
    .line 113
    if-eqz p2, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    check-cast p2, Lcom/narvii/pip/PipInfoPack;

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->preparePipClipSync(Lcom/narvii/pip/PipInfoPack;)Z

    .line 126
    move-result v0

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_2

    .line 133
    .line 134
    :cond_5
    new-instance p0, Lcom/narvii/video/j;

    .line 135
    move-object v1, p0

    .line 136
    move-object v2, p1

    .line 137
    move-object v5, p3

    .line 138
    move-object v6, p4

    .line 139
    .line 140
    .line 141
    invoke-direct/range {v1 .. v7}, Lcom/narvii/video/j;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method private static final initInputClips$lambda$4$lambda$3(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

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
    const-string v0, "$validVideoClipList"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$validAudioClipList"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "$captionList"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "$stickerList"

    .line 24
    .line 25
    .line 26
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    const-string v0, "$validPipClipList"

    .line 29
    .line 30
    .line 31
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 61
    move-result-object v1

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x6

    .line 65
    const/4 v6, 0x0

    .line 66
    move-object v2, p1

    .line 67
    .line 68
    .line 69
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetAudioClipList(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetCaptionList(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, p4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, p5}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetPipVideoList(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    .line 104
    :cond_1
    return-void
.end method

.method private final initMediaPlayer()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasAudioPrepared:Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    new-instance v2, Lcom/narvii/video/q;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/narvii/video/q;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addSeekingPositionChangeListener(Lcom/narvii/video/interfaces/OnSeekingPositionListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    new-instance v2, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$2;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v2, 0x2

    .line 46
    const/4 v3, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v1, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoPlaybackStatusChanged(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_container:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    move-object v3, v0

    .line 66
    .line 67
    check-cast v3, Landroid/widget/FrameLayout;

    .line 68
    .line 69
    :cond_0
    if-eqz v3, :cond_1

    .line 70
    .line 71
    new-instance v0, Lcom/narvii/video/s;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/narvii/video/s;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_1
    return-void
.end method

.method private static final initMediaPlayer$lambda$10$lambda$9(Lcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 15
    const/4 v0, 0x2

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 23
    .line 24
    xor-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 27
    :cond_0
    return-void
.end method

.method private static final initMediaPlayer$lambda$8(Lcom/narvii/video/BaseMediaEditorFragment;J)V
    .locals 1

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
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoSeekingPositionChanged(J)V

    .line 10
    return-void
.end method

.method public static synthetic n(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/BaseMediaEditorFragment;->initInputClips$lambda$4(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList$lambda$6(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method private static final onFrameLocatedDuringMove$lambda$0(Lcom/narvii/video/BaseMediaEditorFragment;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, p1, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 13
    return-void
.end method

.method private static final onReplayTriggered$lambda$1(Lcom/narvii/video/BaseMediaEditorFragment;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, p1, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 13
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 17
    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 21
    return-void
.end method

.method public static synthetic p(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/narvii/video/BaseMediaEditorFragment;->initInputClips$lambda$4$lambda$3(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic prepareAVClipList$default(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p5, :cond_1

    .line 3
    .line 4
    and-int/lit8 p4, p4, 0x2

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: prepareAVClipList"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method private static final prepareAVClipList$lambda$6(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "$clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$callback"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    new-instance v0, Lkotlin/jvm/internal/k0;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z

    .line 49
    move-result v4

    .line 50
    .line 51
    if-nez v4, :cond_0

    .line 52
    const/4 v4, 0x1

    .line 53
    .line 54
    iput-boolean v4, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget-boolean v2, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_2
    new-instance p0, Lcom/narvii/video/k;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/narvii/video/k;-><init>(Lkotlin/jvm/internal/k0;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method private static final prepareAVClipList$lambda$6$lambda$5(Lkotlin/jvm/internal/k0;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$hasInvalidClip"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$callback"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-boolean v0, p0, Lkotlin/jvm/internal/k0;->element:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    .line 24
    .line 25
    :cond_0
    iget-boolean p0, p0, Lkotlin/jvm/internal/k0;->element:Z

    .line 26
    .line 27
    xor-int/lit8 p0, p0, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-interface {p3, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static synthetic q(Lcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated$lambda$2(Lcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(ZLcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$lambda$11(ZLcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/video/BaseMediaEditorFragment;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer$lambda$8(Lcom/narvii/video/BaseMediaEditorFragment;J)V

    return-void
.end method

.method public static synthetic safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: safeSeekTo"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method private final seekTo(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(II)V

    .line 23
    :goto_0
    return-void
.end method

.method static synthetic seekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->seekTo(II)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: seekTo"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static synthetic showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p3, :cond_1

    .line 3
    const/4 p3, 0x1

    .line 4
    and-int/2addr p2, p3

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    move p1, p3

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: showInvalidDialog"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method private static final showInvalidDialog$lambda$11(ZLcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic t(Lkotlin/jvm/internal/k0;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList$lambda$6$lambda$5(Lkotlin/jvm/internal/k0;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/video/BaseMediaEditorFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove$lambda$0(Lcom/narvii/video/BaseMediaEditorFragment;I)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer$lambda$10$lambda$9(Lcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/video/BaseMediaEditorFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onReplayTriggered$lambda$1(Lcom/narvii/video/BaseMediaEditorFragment;I)V

    return-void
.end method


# virtual methods
.method protected final changeSeekStatus(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onSeekingStatusChanged(Z)V

    .line 11
    return-void
.end method

.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->showPauseButton()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    sget v3, Lcom/narvii/mediaeditor/R$drawable;->ic_sr_media_play:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_1
    if-eqz p2, :cond_2

    .line 33
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v3, v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_4
    if-eqz p2, :cond_5

    .line 46
    move v1, v2

    .line 47
    .line 48
    .line 49
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mute()V

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    .line 59
    .line 60
    iput-boolean v2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->pause()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoPlaybackStatusChanged(Z)V

    .line 71
    goto :goto_5

    .line 72
    .line 73
    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->showPauseButton()Z

    .line 75
    move-result p1

    .line 76
    .line 77
    if-nez p1, :cond_8

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    .line 80
    .line 81
    if-nez p1, :cond_7

    .line 82
    goto :goto_3

    .line 83
    .line 84
    .line 85
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_8
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    .line 89
    .line 90
    if-eqz p1, :cond_9

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    sget p2, Lcom/narvii/mediaeditor/R$drawable;->ic_action_pause:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    .line 100
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    .line 101
    .line 102
    if-nez p1, :cond_a

    .line 103
    goto :goto_4

    .line 104
    .line 105
    .line 106
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    :goto_4
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->unMute()V

    .line 116
    .line 117
    iput-boolean v2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    .line 118
    .line 119
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 120
    .line 121
    if-nez p1, :cond_b

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoPlaybackStatusChanged(Z)V

    .line 132
    :cond_b
    :goto_5
    return-void
.end method

.method protected final getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method protected abstract getAudioInputClipList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getAutoPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    return v0
.end method

.method protected abstract getCaptionList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    return v0
.end method

.method protected final getInPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    return v0
.end method

.method protected final getInitSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->initSuccess:Z

    return v0
.end method

.method protected final getNeedRealOutput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    return v0
.end method

.method protected final getOutputFileDir()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    return-object v0
.end method

.method protected final getPauseShadow()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getPipClipList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getPlayerButton()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "previewPlayer"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected final getPreviewVideoView()Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    return-object v0
.end method

.method protected final getRtl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->rtl:Z

    return v0
.end method

.method protected final getSeekRequestQueue()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected final getSkipPauseVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    return v0
.end method

.method protected abstract getStickerList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getTotalVisibleVideoDurationInMs()Lw7/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    .line 34
    move-result v3

    .line 35
    add-int/2addr v2, v3

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    new-instance v1, Lw7/u;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2, v0}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-object v1
.end method

.method protected abstract getVideoInputClipList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getVideoManager()Lcom/narvii/video/services/VideoManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string/jumbo v0, "videoManager"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method protected ignoreMainTrackCompletionInBase()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initComponent()V
.end method

.method protected initInputClips()Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoInputClipList()Ljava/util/ArrayList;

    .line 4
    move-result-object v1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getAudioInputClipList()Ljava/util/ArrayList;

    .line 8
    move-result-object v3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getCaptionList()Ljava/util/ArrayList;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getStickerList()Ljava/util/ArrayList;

    .line 16
    move-result-object v5

    .line 17
    .line 18
    const-string v0, "outputFileDir"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result v2

    .line 27
    const/4 v6, 0x1

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    if-eqz v2, :cond_1

    .line 39
    .line 40
    new-instance v2, Ljava/io/File;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    iput-object v2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 63
    .line 64
    :cond_1
    const-string v0, "prepare AV clip list"

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 68
    move-result-object v7

    .line 69
    .line 70
    new-instance v8, Lcom/narvii/video/l;

    .line 71
    move-object v0, v8

    .line 72
    move-object v2, p0

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/l;-><init>(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 79
    return v6

    .line 80
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v1, v6, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 85
    return v1
.end method

.method protected abstract innerOnVideoPrepared()V
.end method

.method protected final isAudioClipIndexValid(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ge p1, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_0
    return v0
.end method

.method protected final isImageInput(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "url"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    return p1
.end method

.method protected final isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z
    .locals 8
    .param p1    # Lcom/narvii/video/model/StreamInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "info"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return v1

    .line 16
    .line 17
    :cond_0
    const-string v2, "h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp"

    .line 18
    .line 19
    const-string v0, ","

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x6

    .line 27
    const/4 v7, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static/range {v2 .. v7}, Lkotlin/text/k;->C0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    return v1

    .line 39
    .line 40
    :cond_1
    iget-object v2, p1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    move v2, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v2, v1

    .line 47
    .line 48
    :goto_0
    iget-object v4, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v4, :cond_3

    .line 51
    move v4, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v4, v1

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-eqz v5, :cond_7

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    iget-object v6, p1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v6, v3}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 75
    move-result v6

    .line 76
    .line 77
    if-eqz v6, :cond_5

    .line 78
    move v2, v3

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_5
    iget-object v6, p1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-static {v5, v6, v3}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    move-result v5

    .line 86
    .line 87
    if-eqz v5, :cond_6

    .line 88
    move v4, v3

    .line 89
    .line 90
    :cond_6
    :goto_2
    if-eqz v2, :cond_4

    .line 91
    .line 92
    if-eqz v4, :cond_4

    .line 93
    return v3

    .line 94
    :cond_7
    return v1
.end method

.method protected final isSeeking()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isSeeking()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method protected onAVClipsPrepared()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer()V

    .line 4
    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    if-ltz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p2

    .line 33
    .line 34
    if-ge p1, p2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 51
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "videoManager"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "getService(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setVideoManager(Lcom/narvii/video/services/VideoManager;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->init()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->initSuccess:Z

    .line 27
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 5
    return p1
.end method

.method public onControllerActive()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->release()V

    .line 11
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 1

    .line 1
    .line 2
    iget p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->lastSeekPreviewTime:I

    .line 3
    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mute()V

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->isMute:Z

    .line 20
    .line 21
    :cond_1
    iput p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->lastSeekPreviewTime:I

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/video/p;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/narvii/video/p;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    .line 32
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v3, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    .line 25
    .line 26
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 27
    .line 28
    const-string v0, "editorPackFactory"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/video/services/IEditorPackFactory;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorRecycler;->clearCacheResources()V

    .line 46
    :cond_1
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 1
    .line 2
    const-wide/16 p3, 0x0

    .line 3
    .line 4
    cmp-long p1, p1, p3

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->hasVideoPrepared:Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->start()V

    .line 21
    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    if-eq p3, p2, :cond_0

    .line 5
    const/4 p2, 0x3

    .line 6
    .line 7
    if-eq p3, p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    .line 11
    .line 12
    :goto_0
    iget-boolean p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iget-boolean p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seeking:Z

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    :cond_1
    if-eq p3, v1, :cond_4

    .line 22
    const/4 p2, 0x4

    .line 23
    .line 24
    if-ne p3, p2, :cond_2

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_2
    iput-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->controllerActive:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->ignoreMainTrackCompletionInBase()Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    if-ne p3, v1, :cond_3

    .line 36
    return-void

    .line 37
    .line 38
    :cond_3
    new-instance p2, Lcom/narvii/video/m;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p0, p1}, Lcom/narvii/video/m;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 45
    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->restoreStates()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 19
    :cond_0
    return-void
.end method

.method protected abstract onSeekingStatusChanged(Z)V
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

    return-void
.end method

.method protected abstract onVideoPlaybackStatusChanged(Z)V
.end method

.method protected onVideoSeekingPositionChanged(J)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->initComponent()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/video/n;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/narvii/video/n;-><init>(Lcom/narvii/video/BaseMediaEditorFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    :cond_0
    sget-object p1, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->Companion:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p0}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;->initPlayer(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;Lcom/narvii/app/NVContext;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "Failed to find a NVEditorPreviewVideoView instance"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1
.end method

.method protected final prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "clipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "callback"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    const-string v1, "prepare AV clip list"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/video/t;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1, p0, p2, p3}, Lcom/narvii/video/t;-><init>(Ljava/util/ArrayList;Lcom/narvii/video/BaseMediaEditorFragment;ZLcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method protected final prepareAVClipSync(Lcom/narvii/video/model/AVClipInfoPack;)Z
    .locals 7
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const-string v6, ";"

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v6, v1, v3, v4}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-ne v2, v5, :cond_1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const-string v6, ","

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v6, v1, v3, v4}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-ne v2, v5, :cond_2

    .line 48
    :goto_0
    return v1

    .line 49
    .line 50
    :cond_2
    iget-object v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "inputPath"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, v5, v4}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    .line 67
    .line 68
    const/16 v0, 0x1388

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    const-string v3, "getAbsolutePath(...)"

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iput-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 92
    .line 93
    iget-boolean v2, v0, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    .line 94
    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z

    .line 99
    move-result v2

    .line 100
    .line 101
    if-nez v2, :cond_4

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_4
    iget v2, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 105
    .line 106
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, p1, v1, v0}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    .line 110
    move v0, v2

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->updateAVClipDurations(Lcom/narvii/video/model/AVClipInfoPack;I)V

    .line 114
    return v5

    .line 115
    :cond_5
    :goto_2
    return v1
.end method

.method protected final preparePipClipSync(Lcom/narvii/pip/PipInfoPack;)Z
    .locals 7
    .param p1    # Lcom/narvii/pip/PipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x1

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    const-string v6, ";"

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v6, v0, v4, v1}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-ne v3, v5, :cond_2

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    const-string v6, ","

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v6, v0, v4, v1}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-ne v1, v5, :cond_3

    .line 55
    :goto_1
    return v0

    .line 56
    .line 57
    :cond_3
    iget-object v1, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 58
    .line 59
    const-string v3, "inputPath"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    const/16 v0, 0x1388

    .line 71
    goto :goto_2

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    const-string v3, "getAbsolutePath(...)"

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    iput-object v1, p1, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 94
    .line 95
    iget-boolean v2, v1, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    .line 96
    .line 97
    if-nez v2, :cond_8

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z

    .line 101
    move-result v2

    .line 102
    .line 103
    if-nez v2, :cond_5

    .line 104
    goto :goto_4

    .line 105
    .line 106
    :cond_5
    iget v0, v1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    .line 110
    move-result v1

    .line 111
    .line 112
    if-nez v1, :cond_6

    .line 113
    .line 114
    iget v1, p1, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 115
    add-int/2addr v1, v0

    .line 116
    .line 117
    iput v1, p1, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 118
    .line 119
    .line 120
    :cond_6
    invoke-virtual {p1}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    .line 127
    move-result v1

    .line 128
    goto :goto_3

    .line 129
    :cond_7
    move v1, v0

    .line 130
    .line 131
    :goto_3
    iput v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 132
    .line 133
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 134
    return v5

    .line 135
    :cond_8
    :goto_4
    return v0
.end method

.method protected final safeSeekTo(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->seekTo(II)V

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    if-lez p1, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v0, p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 33
    move-result v1

    .line 34
    add-int/2addr p2, v1

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 43
    move-result p1

    .line 44
    const/4 v0, 0x2

    .line 45
    .line 46
    if-lt p1, v0, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->seekRequestQueue:Ljava/util/LinkedList;

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 61
    :goto_1
    return-void
.end method

.method protected final setActiveVideoClip(Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->activeVideoClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-void
.end method

.method protected final setAutoPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->autoPlaying:Z

    return-void
.end method

.method protected final setDragging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->dragging:Z

    return-void
.end method

.method protected final setInPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->inPlay:Z

    return-void
.end method

.method protected final setInitSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->initSuccess:Z

    return-void
.end method

.method protected final setNeedRealOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->needRealOutput:Z

    return-void
.end method

.method protected final setOutputFileDir(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->outputFileDir:Ljava/io/File;

    return-void
.end method

.method protected final setPauseShadow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->pauseShadow:Landroid/view/View;

    return-void
.end method

.method protected final setPlayerButton(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->playerButton:Landroid/widget/ImageView;

    return-void
.end method

.method protected final setPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 1
    .param p1    # Lcom/narvii/video/interfaces/IPreviewPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    return-void
.end method

.method protected final setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V
    .locals 0
    .param p1    # Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->previewVideoView:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    return-void
.end method

.method protected final setSkipPauseVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->skipPauseVideo:Z

    return-void
.end method

.method protected final setVideoManager(Lcom/narvii/video/services/VideoManager;)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    return-void
.end method

.method protected final showInvalidDialog(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/video/o;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p1, p0}, Lcom/narvii/video/o;-><init>(ZLcom/narvii/video/BaseMediaEditorFragment;)V

    .line 36
    .line 37
    .line 38
    const p1, 0x104000a

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 49
    :cond_0
    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateAVClipDurations(Lcom/narvii/video/model/AVClipInfoPack;I)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, p2

    .line 18
    .line 19
    :goto_0
    iput v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 20
    .line 21
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 22
    return-void
.end method
