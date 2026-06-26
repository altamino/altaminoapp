.class public Lcom/narvii/chat/video/RtcChatManager;
.super Ljava/lang/Object;
.source "RtcChatManager.java"


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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 484
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/RtcChatManager$4;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->wrappedEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    .line 90
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 91
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    .line 92
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f00b7

    goto :goto_0

    :cond_0
    const v0, 0x7f0f00ba

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/RtcChatManager;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/RtcChatManager;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/narvii/chat/video/RtcChatManager;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/chat/video/RtcChatManager;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/RtcChatManager;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/narvii/chat/video/RtcChatManager;->isLocalVideoFrameSet:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/chat/video/RtcChatManager;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->isLocalVideoFrameSet:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/video/RtcChatManager;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/WorkerThread;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/video/RtcChatManager;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->isCurUserJoined:Z

    return p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/chat/video/RtcChatManager;Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/video/CameraRenderer;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/narvii/chat/video/RtcChatManager;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/chat/video/RtcChatManager;->curSigChannelType:I

    return p0
.end method

.method private clearStatus(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->isCurUserJoined:Z

    .line 405
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    .line 406
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->isLocalVideoFrameSet:Z

    .line 407
    iput-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    .line 408
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->leaveChannel(Ljava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    const/4 p1, 0x0

    .line 409
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelName:Ljava/lang/String;

    return-void
.end method

.method private configAudioManager(Z)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->configAudioManger(Z)V

    :cond_0
    return-void
.end method

.method private configAudioSource(ZII)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/video/model/WorkerThread;->configAudioSource(ZII)V

    :cond_0
    return-void
.end method

.method private getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;
    .locals 4

    .line 827
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 831
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 832
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    if-ne v2, v3, :cond_1

    .line 833
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/video/ui/UserStatusData;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private leaveVideoChannel(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onDestroy()V

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->clearStatus(Lcom/narvii/video/model/ChannelActionCallback;)V

    return-void
.end method

.method private setCustomLocalVideo(I)V
    .locals 3

    .line 303
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    if-nez p1, :cond_0

    .line 304
    new-instance p1, Lcom/narvii/video/framepusher/AgoraFramePusher;

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/video/framepusher/AgoraFramePusher;-><init>(Lio/agora/rtc/RtcEngine;)V

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-nez p1, :cond_3

    .line 307
    new-instance p1, Lcom/narvii/chat/video/CameraRenderer;

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    invoke-direct {p1, v0, v1}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    .line 308
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->setCameraFramePusher(Lcom/narvii/video/framepusher/MediaFramePusher;)V

    .line 309
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/RtcChatManager$3;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->setCameraRendererStatusListener(Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;)V

    .line 361
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    iput-object v0, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    goto :goto_0

    .line 364
    :cond_1
    new-instance p1, Lcom/narvii/video/ui/UserStatusData;

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 365
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    iput v0, p1, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    :cond_3
    return-void
.end method

.method private setLocalVideoPlayView()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Lcom/narvii/video/framepusher/AgoraFramePusher;

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/video/framepusher/AgoraFramePusher;-><init>(Lio/agora/rtc/RtcEngine;)V

    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAgoraRoleChangeListener(Lcom/narvii/chat/video/AgoraRoleChangeListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->eventHandler()Lcom/narvii/video/model/MyEngineEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/video/model/MyEngineEventHandler;->addEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V

    :cond_0
    return-void
.end method

.method public addNewUser(ILandroid/view/SurfaceView;I)V
    .locals 2

    .line 374
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 375
    invoke-virtual {v0, p3}, Lcom/narvii/video/ui/UserStatusData;->setVideoFrameStatus(I)V

    .line 376
    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public config()Lcom/narvii/video/model/EngineConfig;
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    move-result-object v0

    return-object v0
.end method

.method public configEngine(IIZZZ)V
    .locals 6

    .line 791
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 792
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    :cond_0
    return-void
.end method

.method public enterLowerStreamMode()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public flipCamera()V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->switchCamera()V

    :cond_0
    return-void
.end method

.method public getCurChannelType()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    return v0
.end method

.method public getLocalUid()I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 422
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    move-result-object v0

    iget v0, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    return v0
.end method

.method public getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    move-result-object v1

    iget v1, v1, Lcom/narvii/video/model/EngineConfig;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    return-object v0
.end method

.method public getLocalUserSurfaceView()Lcom/narvii/chat/video/CameraRenderer;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    return-object v0
.end method

.method public getMediaFramePusher()Lcom/narvii/video/framepusher/MediaFramePusher;
    .locals 1

    .line 126
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

    .line 414
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUserStausData(I)Lcom/narvii/video/ui/UserStatusData;
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 998
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    return-object p1
.end method

.method public initLocalVideoStatus(I)V
    .locals 3

    .line 211
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->setCustomLocalVideo(I)V

    .line 212
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 213
    new-instance p1, Lcom/narvii/video/ui/UserStatusData;

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 214
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public initRtcService(ZILcom/narvii/video/model/RtcEventHandler;)V
    .locals 2

    .line 96
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    .line 97
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    const v0, 0x7f0f00b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    const v0, 0x7f0f00b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    const v0, 0x7f0f00b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 109
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    const v0, 0x7f0f00bb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 112
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    const v0, 0x7f0f00bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    const v0, 0x7f0f00ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    :goto_0
    if-ne p2, v1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 118
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->initVideoEngine(I)V

    .line 121
    invoke-virtual {p0, p3}, Lcom/narvii/chat/video/RtcChatManager;->initVideoEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V

    return-void
.end method

.method public initScreenRoomHostSwap()V
    .locals 3

    .line 1010
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-eqz v0, :cond_0

    const/16 v1, 0x27

    .line 1011
    iget-boolean v2, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomWidthHeightSwap:Z

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/model/WorkerThread;->changeVideoProfile(IZ)V

    :cond_0
    return-void
.end method

.method public initVideoEngine(I)V
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getCurChannelprofile()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-nez v0, :cond_1

    .line 817
    new-instance v0, Lcom/narvii/video/model/WorkerThread;

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->appId:Ljava/lang/String;

    sget-boolean v3, Lcom/narvii/app/NVApplication;->DEBUG:Z

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/narvii/video/model/WorkerThread;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    .line 818
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 819
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {p1}, Lcom/narvii/video/model/WorkerThread;->waitForReady()V

    goto :goto_0

    .line 821
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->setCurChannelProfile(I)V

    :goto_0
    return-void
.end method

.method public initVideoEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    .line 139
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {p1}, Lcom/narvii/video/model/WorkerThread;->eventHandler()Lcom/narvii/video/model/MyEngineEventHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->wrappedEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    invoke-virtual {p1, v0}, Lcom/narvii/video/model/MyEngineEventHandler;->containeHandle(Lcom/narvii/video/model/RtcEventHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->wrappedEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->addEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V

    :cond_0
    return-void
.end method

.method public isEligible()Z
    .locals 2

    const/4 v0, 0x0

    .line 869
    :try_start_0
    invoke-static {}, Lio/agora/rtc/RtcEngine;->getSdkVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->isFrontCamera()Z

    move-result v0

    return v0
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;IIIZZZZZ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p7

    .line 162
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-boolean v0, v6, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v11, 0x1

    .line 168
    iput-boolean v11, v6, Lcom/narvii/chat/video/RtcChatManager;->isJoinRequestSent:Z

    .line 169
    iput-object v8, v6, Lcom/narvii/chat/video/RtcChatManager;->curChannelName:Ljava/lang/String;

    .line 170
    iput v9, v6, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    move/from16 v0, p5

    .line 171
    iput v0, v6, Lcom/narvii/chat/video/RtcChatManager;->curNdcId:I

    .line 172
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    move-result-object v0

    iput v9, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 173
    iget v0, v6, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    const/4 v12, 0x0

    const v13, 0xac44

    const/4 v1, 0x2

    const/4 v14, 0x0

    if-ne v0, v1, :cond_5

    if-eqz p9, :cond_2

    const/16 v0, 0x27

    const/16 v2, 0x27

    goto :goto_0

    :cond_2
    const/16 v0, 0x21

    const/16 v2, 0x21

    :goto_0
    const/4 v3, 0x1

    xor-int/lit8 v4, p9, 0x1

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v5, p10

    .line 174
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/video/RtcChatManager;->configEngine(IIZZZ)V

    .line 175
    invoke-direct {p0, v10, v13, v11}, Lcom/narvii/chat/video/RtcChatManager;->configAudioSource(ZII)V

    .line 176
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, v11}, Lio/agora/rtc/RtcEngine;->enableDualStreamMode(Z)I

    .line 177
    invoke-direct {p0, v10}, Lcom/narvii/chat/video/RtcChatManager;->configAudioManager(Z)V

    .line 178
    new-instance v0, Lcom/narvii/video/framepusher/AgoraFramePusher;

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/video/framepusher/AgoraFramePusher;-><init>(Lio/agora/rtc/RtcEngine;)V

    iput-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->mediaFramePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 179
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 180
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz p8, :cond_3

    iget-object v12, v6, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    :cond_3
    invoke-direct {v0, v9, v12, v14}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 181
    iget-object v1, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :cond_4
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v0, v7, v8, v9}, Lcom/narvii/video/model/WorkerThread;->joinChannel(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 185
    :cond_5
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 186
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    invoke-direct {v0, v9, v12, v14}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 187
    iget-object v2, v6, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    :cond_6
    invoke-direct {p0, v14}, Lcom/narvii/chat/video/RtcChatManager;->configAudioManager(Z)V

    .line 190
    invoke-direct {p0, v14, v13, v11}, Lcom/narvii/chat/video/RtcChatManager;->configAudioSource(ZII)V

    .line 191
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v0, v7, v8, v9}, Lcom/narvii/video/model/WorkerThread;->joinChannel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/RtcEngine;->setAudioProfile(II)I

    .line 193
    iget-object v0, v6, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setDefaultAudioRoutetoSpeakerphone(Z)I

    :goto_1
    return-void
.end method

.method public leaveAudioChannel(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->clearStatus(Lcom/narvii/video/model/ChannelActionCallback;)V

    return-void
.end method

.method public leaveChannel(Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 2

    .line 380
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->curChannelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->leaveAudioChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 383
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->leaveVideoChannel(Lcom/narvii/video/model/ChannelActionCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public muteAllRemoteStream()V
    .locals 2

    .line 990
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->muteAllRemoteAudioStreams(Z)I

    .line 991
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->muteLocalVideoStream(Z)I

    return-void
.end method

.method public muteAllRemoteStream(Z)V
    .locals 1

    .line 984
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->muteAllRemoteAudioStreams(Z)I

    :cond_0
    return-void
.end method

.method public muteLocalAudio(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 923
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(ZZ)I

    move-result p1

    return p1
.end method

.method public muteLocalAudio(ZZ)I
    .locals 2

    .line 927
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->muteLocalAudioStream(Z)I

    move-result v0

    .line 931
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 934
    invoke-virtual {v1, p1}, Lcom/narvii/video/ui/UserStatusData;->setVoiceMuted(Z)V

    .line 936
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    if-eqz p2, :cond_2

    .line 937
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

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 881
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    .line 882
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    :goto_0
    return-void
.end method

.method public muteLocalStreamWithoutChangeStatus(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 890
    invoke-virtual {p0, p2, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(ZZ)I

    .line 891
    invoke-virtual {p0, p2, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(ZZ)I

    goto :goto_0

    .line 893
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(ZZ)I

    :goto_0
    return-void
.end method

.method public muteLocalVideo(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 898
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(ZZ)I

    move-result p1

    return p1
.end method

.method public muteLocalVideo(ZZ)I
    .locals 2

    .line 902
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

    .line 903
    :goto_1
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    move-result-object v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 906
    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 908
    invoke-virtual {p2}, Lcom/narvii/chat/video/CameraRenderer;->stopPreview()V

    goto :goto_2

    .line 910
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/chat/video/CameraRenderer;->startPreview()V

    .line 913
    :cond_3
    :goto_2
    invoke-virtual {v1, p1}, Lcom/narvii/video/ui/UserStatusData;->setVideoMuted(Z)V

    .line 914
    iget-object p2, p0, Lcom/narvii/chat/video/RtcChatManager;->videoEventHandler:Lcom/narvii/video/model/RtcEventHandler;

    if-eqz p2, :cond_4

    .line 915
    iget v1, v1, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    invoke-interface {p2, v1, p1}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteVideo(IZ)V

    :cond_4
    return v0
.end method

.method public muteRemoteAudio(IZ)I
    .locals 1

    .line 980
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteAudioStream(IZ)I

    move-result p1

    return p1
.end method

.method public muteRemoteUer(IIZ)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 968
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteVideo(IZ)I

    .line 969
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteAudio(IZ)I

    goto :goto_0

    .line 971
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteAudio(IZ)I

    :goto_0
    return-void
.end method

.method public muteRemoteVideo(IZ)I
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteVideoStream(IZ)I

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onResume()V

    :cond_0
    return-void
.end method

.method public removeAgoraRoleChangeListener(Lcom/narvii/chat/video/AgoraRoleChangeListener;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public requesToBeAudience()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/narvii/video/model/WorkerThread;->changeRole(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/video/RtcChatManager$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/RtcChatManager$1;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public requestToBeBroadcast()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->requestToBeBroadcast(ZZ)V

    return-void
.end method

.method public requestToBeBroadcast(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    iget p1, p0, Lcom/narvii/chat/video/RtcChatManager;->curNdcId:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager;->setCustomLocalVideo(I)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/narvii/video/model/WorkerThread;->doConfig(IZ)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "try to request to be a broadcast while the worker not ready"

    .line 285
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 287
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->agoraRoleChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/chat/video/RtcChatManager$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/RtcChatManager$2;-><init>(Lcom/narvii/chat/video/RtcChatManager;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public restoreStreamMode()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->enterLowerStreamMode()V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 246
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 247
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public sendDataStream([B)I
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 1019
    :cond_0
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    if-nez v1, :cond_2

    .line 1020
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lio/agora/rtc/RtcEngine;->createDataStream(ZZ)I

    move-result v0

    if-gez v0, :cond_1

    return v0

    .line 1024
    :cond_1
    iput v0, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomRtcDataStream:I

    invoke-virtual {v0, v1, p1}, Lio/agora/rtc/RtcEngine;->sendStreamMessage(I[B)I

    move-result p1

    return p1
.end method

.method public setCameraFacing(Z)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->localUserSurfaceView:Lcom/narvii/chat/video/CameraRenderer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 852
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_2

    .line 853
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->flipCamera()V

    goto :goto_0

    .line 856
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 857
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->flipCamera()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurSigChannelType(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/narvii/chat/video/RtcChatManager;->curSigChannelType:I

    return-void
.end method

.method public setFaceTrackStatusChange(Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager;->faceTrackStatusChange:Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;

    return-void
.end method

.method public setForceAvatar(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->forceAvatar:Z

    return-void
.end method

.method public setLocalUid(I)V
    .locals 1

    .line 198
    iput p1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    .line 199
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    move-result-object v0

    iput p1, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    return-void
.end method

.method public setLocalVoiceStatus()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/narvii/video/ui/UserStatusData;

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 206
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLowerStreamMode(IZ)V
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/RtcEngine;->setRemoteVideoStreamType(II)I

    :cond_0
    return-void
.end method

.method public setScreenRoomHostSwap(Z)V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    if-nez v0, :cond_0

    return-void

    .line 1005
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/RtcChatManager;->screenRoomWidthHeightSwap:Z

    const/16 v1, 0x27

    .line 1006
    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->changeVideoProfile(IZ)V

    return-void
.end method

.method public setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)I

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
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 473
    iput v1, v0, Lcom/narvii/chat/video/RtcChatManager;->statSigChannelType:I

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    .line 475
    iput-wide v4, v0, Lcom/narvii/chat/video/RtcChatManager;->statSigStartTime:J

    goto :goto_0

    .line 477
    :cond_0
    iput-wide v2, v0, Lcom/narvii/chat/video/RtcChatManager;->statSigStartTime:J

    :goto_0
    return-void
.end method

.method public toggleLocalAudio()V
    .locals 1

    .line 951
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 955
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    return-void
.end method

.method public toggleLocalVideo()V
    .locals 1

    .line 959
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserStatus()Lcom/narvii/video/ui/UserStatusData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 963
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    return-void
.end method

.method public toggleSpeaker()V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->userDataList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager;->localUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/narvii/chat/video/RtcChatManager;->worker()Lcom/narvii/video/model/WorkerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isSpeakerMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lio/agora/rtc/RtcEngine;->setEnableSpeakerphone(Z)I

    :cond_0
    return-void
.end method

.method public worker()Lcom/narvii/video/model/WorkerThread;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager;->workerThread:Lcom/narvii/video/model/WorkerThread;

    return-object v0
.end method
