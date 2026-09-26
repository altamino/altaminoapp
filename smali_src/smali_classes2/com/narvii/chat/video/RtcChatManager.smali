.class public Lcom/narvii/chat/video/RtcChatManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AGORA_TYPE_AUDIO:I = 0x1

.field public static final AGORA_TYPE_VIDEO:I = 0x2

.field public static final AUDIO_CHANNEL_NUMBER:I = 0x1

.field public static final HIGH_STREAM_ACCOUNT_LIMIT:I = 0x2

.field public static final REMOTE_VIDEO_STREAM_HIGH:I = 0x0

.field public static final REMOTE_VIDEO_STREAM_LOW:I = 0x1

.field public static final SAMPLE_RATE:I = 0xac44

.field public static final VIDEO_PROFILE_CONFIG_ACCOUNT_LIMIT:I = 0x2

.field private static final VIDEO_RPOFILE:I = 0x21

.field private static final VIDEO_RPOFILE_SCREEN_ROOM:I = 0x27


# instance fields
.field private agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/video/AgoraRoleChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private curChannelName:Ljava/lang/String;

.field private curChannelType:I

.field private curNdcId:I

.field private curSigChannelType:I

.field faceTrackStatusChange:Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;

.field private forceAvatar:Z

.field private isCurUserJoined:Z

.field private isJoinRequestSent:Z

.field private volatile isLocalVideoFrameSet:Z

.field private localUid:I

.field private localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

.field private mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private screenRoomRtcDataStream:I

.field private screenRoomWidthHeightSwap:Z

.field private statSigChannelType:I

.field private statSigStartTime:J

.field private userDataList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/video/ui/UserStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

.field private workerThread:Lcom/narvii/video/model/WorkerThread;

.field private wrappedEventHandler:Lcom/narvii/video/model/RtcEventHandler;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/RtcChatManager$4;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->wrappedEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 37
    .line 38
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    .line 43
    const v0, 0x7f1200c0

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    const v0, 0x7f1200c3

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/RtcChatManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/RtcChatManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/video/RtcChatManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/RtcChatManager;->curSigChannelType:I

    return p0
.end method

.method private clearStatus(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->isCurUserJoined:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->isLocalVideoFrameSet:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelName:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->leaveChannel(Ljava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private configAudioManager(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->configAudioManger(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method private configAudioSource(ZII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/video/model/WorkerThread;->configAudioSource(ZII)V

    .line 8
    :cond_0
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/chat/video/RtcChatManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    return p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/video/RtcChatManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/video/RtcChatManager;->isLocalVideoFrameSet:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/video/RtcChatManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    return-object p0
.end method

.method private getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v2

    .line 20
    .line 21
    if-ge v0, v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    move-result v2

    .line 28
    .line 29
    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    move-object v1, v0

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/video/ui/UserStatusData;

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-object v1
.end method

.method static bridge synthetic h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/WorkerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/narvii/chat/video/RtcChatManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->isCurUserJoined:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/chat/video/RtcChatManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->isLocalVideoFrameSet:Z

    return-void
.end method

.method private leaveVideoChannel(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onDestroy()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->clearStatus(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 14
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/chat/video/RtcChatManager;Lcom/narvii/chat/video/CameraRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/chat/video/RtcChatManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    return-void
.end method

.method private setCustomLocalVideo(I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/video/framepusher/AgoraFramePusher;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/narvii/video/framepusher/AgoraFramePusher;-><init>(Lio/agora/rtc/RtcEngine;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 22
    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/chat/video/CameraRenderer;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->setCameraFramePusher(Lcom/narvii/video/framepusher/MediaFramePusher;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$3;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/RtcChatManager$3;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->setCameraRendererStatusListener(Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 52
    .line 53
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 62
    .line 63
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 72
    .line 73
    iput-object v0, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_1
    new-instance p1, Lcom/narvii/video/ui/UserStatusData;

    .line 77
    .line 78
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 81
    const/4 v2, 0x0

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v0, v1, v2}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 87
    .line 88
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    const/4 v0, 0x2

    .line 109
    .line 110
    :goto_1
    iput v0, p1, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    .line 111
    :cond_3
    return-void
.end method

.method private setLocalVideoPlayView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/video/framepusher/AgoraFramePusher;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/narvii/video/framepusher/AgoraFramePusher;-><init>(Lio/agora/rtc/RtcEngine;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public addAgoraRoleChangeListener(Lcom/narvii/chat/video/AgoraRoleChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->eventHandler()Lcom/narvii/video/model/MyEngineEventHandler;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/video/model/MyEngineEventHandler;->addEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V

    .line 12
    :cond_0
    return-void
.end method

.method public addNewUser(ILandroid/view/SurfaceView;I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Lcom/narvii/video/ui/UserStatusData;->setVideoFrameStatus(I)V

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    return-void
.end method

.method public config()Lcom/narvii/video/model/EngineConfig;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public configEngine(IIZZZ)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    .line 13
    :cond_0
    return-void
.end method

.method public destroyAgoraEngine()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->destroyRtcEngine()V

    .line 8
    :cond_0
    return-void
.end method

.method public enterLowerStreamMode()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    move-result v1

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 23
    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    .line 36
    .line 37
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public flipCamera()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->switchCamera()V

    .line 8
    :cond_0
    return-void
.end method

.method public getCurChannelType()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    return v0
.end method

.method public getLocalUid()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 13
    return v0
.end method

.method public getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget v1, v1, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 17
    return-object v0
.end method

.method public getLocalUserSurfaceView()Lcom/narvii/chat/video/CameraRenderer;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    return-object v0
.end method

.method public getMediaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    return-object v0
.end method

.method public getUserDataList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/video/ui/UserStatusData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUserStausData(I)Lcom/narvii/video/ui/UserStatusData;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    .line 13
    return-object p1
.end method

.method public initLocalVideoStatus(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->setCustomLocalVideo(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/video/ui/UserStatusData;

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0, v1, v2}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

.method public initRtcService(ZILcom/narvii/video/model/RtcEventHandler;)V
    .locals 2

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    .line 3
    .line 4
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f1200c1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    if-ne p2, v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f1200c2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    const v0, 0x7f1200c0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    const v0, 0x7f1200c4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    if-ne p2, v1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    const v0, 0x7f1200c5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    const v0, 0x7f1200c3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 87
    .line 88
    :goto_0
    if-ne p2, v1, :cond_5

    .line 89
    const/4 p1, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const/4 p1, 0x0

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->initVideoEngine(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p3}, Lcom/narvii/chat/video/RtcChatManager;->initVideoEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V

    .line 98
    return-void
.end method

.method public initScreenRoomHostSwap()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x27

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomWidthHeightSwap:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/model/WorkerThread;->changeVideoProfile(IZ)V

    .line 12
    :cond_0
    return-void
.end method

.method public initVideoEngine(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getCurChannelprofile()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/video/model/WorkerThread;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    .line 22
    .line 23
    sget-boolean v3, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/narvii/video/model/WorkerThread;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/video/model/WorkerThread;->waitForReady()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->setCurChannelProfile(I)V

    .line 41
    :goto_0
    return-void
.end method

.method public initVideoEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/video/model/WorkerThread;->eventHandler()Lcom/narvii/video/model/MyEngineEventHandler;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->wrappedEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/video/model/MyEngineEventHandler;->containeHandle(Lcom/narvii/video/model/RtcEventHandler;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->wrappedEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->addEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V

    .line 22
    :cond_0
    return-void
.end method

.method public isEligible()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lio/agora/rtc/RtcEngine;->getSdkVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    :catch_0
    :cond_0
    return v0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->isFrontCamera()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;IIIZZZZZ)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    move/from16 v10, p7

    .line 10
    .line 11
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, v6, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v11, 0x1

    .line 21
    .line 22
    iput-boolean v11, v6, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    .line 23
    .line 24
    iput-object v8, v6, Lcom/narvii/chat/video/RtcChatManager;->curChannelName:Ljava/lang/String;

    .line 25
    .line 26
    iput v9, v6, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 27
    .line 28
    move/from16 v0, p5

    .line 29
    .line 30
    iput v0, v6, Lcom/narvii/chat/video/RtcChatManager;->curNdcId:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput v9, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 41
    .line 42
    iget v0, v6, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    .line 43
    const/4 v12, 0x0

    .line 44
    .line 45
    .line 46
    const v13, 0xac44

    .line 47
    const/4 v1, 0x2

    .line 48
    const/4 v14, 0x0

    .line 49
    .line 50
    if-ne v0, v1, :cond_5

    .line 51
    .line 52
    if-eqz p9, :cond_2

    .line 53
    .line 54
    const/16 v0, 0x27

    .line 55
    :goto_0
    move v2, v0

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    const/16 v0, 0x21

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    const/4 v3, 0x1

    .line 61
    .line 62
    xor-int/lit8 v4, p9, 0x1

    .line 63
    move-object v0, p0

    .line 64
    .line 65
    move/from16 v1, p3

    .line 66
    .line 67
    move/from16 v5, p10

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/video/RtcChatManager;->configEngine(IIZZZ)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v10, v13, v11}, Lcom/narvii/chat/video/RtcChatManager;->configAudioSource(ZII)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v11}, Lio/agora/rtc/RtcEngine;->enableDualStreamMode(Z)I

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v10}, Lcom/narvii/chat/video/RtcChatManager;->configAudioManager(Z)V

    .line 88
    .line 89
    new-instance v0, Lcom/narvii/video/framepusher/AgoraFramePusher;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Lcom/narvii/video/framepusher/AgoraFramePusher;-><init>(Lio/agora/rtc/RtcEngine;)V

    .line 101
    .line 102
    iput-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 103
    .line 104
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    .line 113
    .line 114
    if-eqz p8, :cond_3

    .line 115
    .line 116
    iget-object v12, v6, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-direct {v0, v9, v12, v14}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 120
    .line 121
    iget-object v1, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    .line 126
    :cond_4
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v7, v8, v9}, Lcom/narvii/video/model/WorkerThread;->joinChannel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    goto :goto_2

    .line 131
    .line 132
    :cond_5
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    if-nez v0, :cond_6

    .line 139
    .line 140
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    .line 141
    .line 142
    .line 143
    invoke-direct {v0, v9, v12, v14}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 144
    .line 145
    iget-object v2, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-direct {p0, v14}, Lcom/narvii/chat/video/RtcChatManager;->configAudioManager(Z)V

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, v14, v13, v11}, Lcom/narvii/chat/video/RtcChatManager;->configAudioSource(ZII)V

    .line 155
    .line 156
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v7, v8, v9}, Lcom/narvii/video/model/WorkerThread;->joinChannel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    .line 161
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 173
    move-result-object v0

    .line 174
    const/4 v2, 0x3

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/RtcEngine;->setAudioProfile(II)I

    .line 178
    .line 179
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    move/from16 v1, p6

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setEnableSpeakerphone(Z)I

    .line 189
    :cond_7
    :goto_2
    return-void
.end method

.method public leaveAudioChannel(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->clearStatus(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 9
    return-void
.end method

.method public leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->leaveAudioChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->leaveVideoChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public muteAllRemoteStream()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->muteAllRemoteAudioStreams(Z)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->muteLocalVideoStream(Z)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->destroyRtcEngine()V

    .line 31
    return-void
.end method

.method public muteLocalAudio(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(ZZ)I

    move-result p1

    return p1
.end method

.method public muteLocalAudio(ZZ)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->muteLocalAudioStream(Z)I

    move-result v0

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v1, p1}, Lcom/narvii/video/ui/UserStatusData;->setVoiceMuted(Z)V

    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    if-eqz p2, :cond_2

    .line 6
    iget v1, v1, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    invoke-interface {p2, v1, p1}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteAudio(IZ)V

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public muteLocalStream(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    .line 14
    :goto_0
    return-void
.end method

.method public muteLocalStreamWithoutChangeStatus(IZ)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(ZZ)I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(ZZ)I

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(ZZ)I

    .line 15
    :goto_0
    return-void
.end method

.method public muteLocalVideo(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(ZZ)I

    move-result p1

    return p1
.end method

.method public muteLocalVideo(ZZ)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->muteLocalVideoStream(Z)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 3
    :goto_1
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    move-result-object v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/narvii/chat/video/CameraRenderer;->stopPreview()V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/chat/video/CameraRenderer;->startPreview()V

    .line 6
    :cond_3
    :goto_2
    invoke-virtual {v1, p1}, Lcom/narvii/video/ui/UserStatusData;->setVideoMuted(Z)V

    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    if-eqz p2, :cond_4

    .line 7
    iget v1, v1, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    invoke-interface {p2, v1, p1}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteVideo(IZ)V

    :cond_4
    return v0
.end method

.method public muteRemoteAudio(IZ)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteAudioStream(IZ)I

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, -0x1

    .line 31
    return p1
.end method

.method public muteRemoteUer(IIZ)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteVideo(IZ)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteAudio(IZ)I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteAudio(IZ)I

    .line 14
    :goto_0
    return-void
.end method

.method public muteRemoteVideo(IZ)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteVideoStream(IZ)I

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, -0x1

    .line 31
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onPause()V

    .line 8
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onResume()V

    .line 8
    :cond_0
    return-void
.end method

.method public removeAgoraRoleChangeListener(Lcom/narvii/chat/video/AgoraRoleChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public requesToBeAudience()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/video/model/WorkerThread;->changeRole(I)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/chat/video/RtcChatManager$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/RtcChatManager$1;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 25
    return-void
.end method

.method public requestToBeBroadcast()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->requestToBeBroadcast(ZZ)V

    return-void
.end method

.method public requestToBeBroadcast(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/chat/video/RtcChatManager;->curNdcId:I

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->setCustomLocalVideo(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/narvii/video/model/WorkerThread;->doConfig(IZ)V

    goto :goto_0

    :cond_1
    const-string p1, "try to request to be a broadcast while the worker not ready"

    .line 6
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 7
    new-instance p2, Lcom/narvii/chat/video/RtcChatManager$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/RtcChatManager$2;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public restoreStreamMode()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-le v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->enterLowerStreamMode()V

    .line 16
    goto :goto_2

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    .line 20
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-ge v1, v2, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 32
    move-result v2

    .line 33
    .line 34
    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 43
    move-result v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2, v0}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    .line 47
    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_2
    return-void
.end method

.method public sendDataStream([B)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v1}, Lio/agora/rtc/RtcEngine;->createDataStream(ZZ)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    return v0

    .line 23
    .line 24
    :cond_1
    iput v0, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Lio/agora/rtc/RtcEngine;->sendStreamMessage(I[B)I

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public setCameraFacing(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->isFrontCamera()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->flipCamera()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->isFrontCamera()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->flipCamera()V

    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public setCurSigChannelType(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/video/RtcChatManager;->curSigChannelType:I

    return-void
.end method

.method public setFaceTrackStatusChange(Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->faceTrackStatusChange:Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;

    return-void
.end method

.method public setForceAvatar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    return-void
.end method

.method public setLocalUid(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput p1, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 13
    return-void
.end method

.method public setLocalVoiceStatus()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

.method public setLowerStreamMode(IZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 24
    move-result-object p2

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/RtcEngine;->setRemoteVideoStreamType(II)I

    .line 29
    :cond_0
    return-void
.end method

.method public setScreenRoomHostSwap(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomWidthHeightSwap:Z

    .line 8
    .line 9
    const/16 v1, 0x27

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->changeVideoProfile(IZ)V

    .line 13
    return-void
.end method

.method public setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)I

    .line 10
    return-void
.end method

.method statName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "Other"

    return-object p1

    :cond_0
    const-string p1, "Screening Room"

    return-object p1

    :cond_1
    const-string p1, "Video"

    return-object p1

    :cond_2
    const-string p1, "Avatar"

    return-object p1

    :cond_3
    const-string p1, "Audio"

    return-object p1
.end method

.method statUpdate(I)V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v3, "statistics"

    .line 9
    .line 10
    .line 11
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Lcom/narvii/util/statistics/StatisticsService;

    .line 15
    .line 16
    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager;->statSigChannelType:I

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-wide v6, p0, Lcom/narvii/chat/video/RtcChatManager;->statSigStartTime:J

    .line 23
    .line 24
    cmp-long v3, v6, v4

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    sub-long v6, v0, v6

    .line 29
    .line 30
    const-wide/16 v8, 0x3e8

    .line 31
    div-long/2addr v6, v8

    .line 32
    .line 33
    const-wide/16 v8, 0x1

    .line 34
    .line 35
    cmp-long v3, v6, v8

    .line 36
    .line 37
    if-lez v3, :cond_0

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 42
    move-result-object v8

    .line 43
    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    iget v10, p0, Lcom/narvii/chat/video/RtcChatManager;->statSigChannelType:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v10}, Lcom/narvii/chat/video/RtcChatManager;->statName(I)Ljava/lang/String;

    .line 53
    move-result-object v10

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v10, "ChatDuration"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v9

    .line 66
    .line 67
    const-wide/16 v10, 0x1c20

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 71
    move-result-wide v12

    .line 72
    long-to-int v12, v12

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v9, v12}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    const/4 v8, 0x5

    .line 77
    .line 78
    if-ne p1, v8, :cond_0

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 86
    move-result-wide v6

    .line 87
    long-to-int v3, v6

    .line 88
    .line 89
    const-string v6, "ABTest ABTest ScreenRoom Duration"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v6, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 93
    .line 94
    :cond_0
    iput p1, p0, Lcom/narvii/chat/video/RtcChatManager;->statSigChannelType:I

    .line 95
    .line 96
    if-nez p1, :cond_1

    .line 97
    .line 98
    iput-wide v4, p0, Lcom/narvii/chat/video/RtcChatManager;->statSigStartTime:J

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_1
    iput-wide v0, p0, Lcom/narvii/chat/video/RtcChatManager;->statSigStartTime:J

    .line 102
    :goto_0
    return-void
.end method

.method public toggleLocalAudio()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    .line 17
    return-void
.end method

.method public toggleLocalVideo()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    .line 17
    return-void
.end method

.method public toggleSpeaker()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isSpeakerMode()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lio/agora/rtc/RtcEngine;->setEnableSpeakerphone(Z)I

    .line 30
    :cond_0
    return-void
.end method

.method public worker()Lcom/narvii/video/model/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    return-object v0
.end method
