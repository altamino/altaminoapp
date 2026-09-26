.class public Lio/agora/rtc/internal/AudioRoutingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerState;,
        Lio/agora/rtc/internal/AudioRoutingController$EventHandler;,
        Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;,
        Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SCO_TIMEOUT_MS:I = 0xfa0

.field private static final BT_SCO_STATE_CONNECTED:I = 0x1

.field private static final BT_SCO_STATE_CONNECTING:I = 0x0

.field private static final BT_SCO_STATE_DISCONNECTED:I = 0x3

.field private static final BT_SCO_STATE_DISCONNECTING:I = 0x2

.field public static final CMD_FORCE_BT_SCO_OFF:I = 0x10

.field public static final CMD_FORCE_TO_SPEAKER:I = 0xb

.field public static final CMD_MUTE_VIDEO_ALL:I = 0xe

.field public static final CMD_MUTE_VIDEO_LOCAL:I = 0xc

.field public static final CMD_MUTE_VIDEO_REMOTES:I = 0xd

.field public static final CMD_SET_DEFAULT_ROUTING:I = 0xa

.field public static final CMD_START_BT_SCO:I = 0xf

.field private static final ERROR:I = 0x4

.field private static final EVT_BT_HEADSET:I = 0x2

.field private static final EVT_BT_SCO:I = 0x3

.field public static final EVT_CHANNEL_PROFILE:I = 0x14

.field public static final EVT_ENGINE_ROLE_CHANGED:I = 0x15

.field private static final EVT_HEADSET:I = 0x1

.field public static final EVT_PHONE_STATE_CHANGED:I = 0x16

.field public static final EVT_USING_COMM_PARAMETERS:I = 0x70

.field public static final EVT_USING_NORM_PARAMETERS:I = 0x71

.field private static final MAX_SCO_CONNECT_ATTEMPS:I = 0x5

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final START:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AudioRoute"

.field private static final UNINIT:I = 0x0

.field public static final UNSET:I = -0x1


# instance fields
.field private final bluetoothTimeoutRunnable:Ljava/lang/Runnable;

.field private dynamic_timeout:I

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTHeadSetProperlySeted:Z

.field private mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

.field private mBtScoState:I

.field private mChannelProfile:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRouting:I

.field private mDefaultRouting:I

.field private mEngineRole:I

.field private mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

.field private mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

.field private mForceSpeakerphone:I

.field private mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

.field private mHeadsetType:I

.field private mIsBTHeadsetPlugged:Z

.field private mIsBTScoStarted:Z

.field private mIsWiredHeadsetPlugged:Z

.field private mLastNotifiedRouting:I

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/internal/AudioRoutingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMuteLocal:Z

.field private mMuteRemotes:Z

.field private mNotifiedRouting:I

.field private mOriginRouting:I

.field private mPhoneInCall:Z

.field private mScoConnectionAttemps:I

.field private mSpeakerCommVolume:I

.field private mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

.field private mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

.field private mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

.field private mUsingCommParameters:Z

.field private mVideoDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/agora/rtc/internal/AudioRoutingListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetType:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 12
    .line 13
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    .line 14
    .line 15
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 16
    .line 17
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 18
    .line 19
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    .line 23
    .line 24
    iput-boolean v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    .line 29
    .line 30
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEngineRole:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    .line 33
    .line 34
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerCommVolume:I

    .line 35
    .line 36
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    .line 37
    const/4 v2, 0x3

    .line 38
    .line 39
    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 40
    .line 41
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    .line 42
    .line 43
    const/16 v2, 0xfa0

    .line 44
    .line 45
    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    .line 46
    .line 47
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mLastNotifiedRouting:I

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    iput-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 51
    .line 52
    iput-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 53
    .line 54
    iput-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 55
    .line 56
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    .line 57
    .line 58
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    .line 59
    .line 60
    new-instance v0, Lio/agora/rtc/internal/AudioRoutingController$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Lio/agora/rtc/internal/AudioRoutingController$1;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 64
    .line 65
    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    .line 73
    .line 74
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeout()V

    .line 4
    return-void
.end method

.method static synthetic access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 3
    return p0
.end method

.method static synthetic access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 3
    return p1
.end method

.method static synthetic access$102(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 3
    return p1
.end method

.method static synthetic access$1102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    .line 3
    return p1
.end method

.method static synthetic access$1202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    .line 3
    return p1
.end method

.method static synthetic access$1302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    .line 3
    return p1
.end method

.method static synthetic access$1402(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEngineRole:I

    .line 3
    return p1
.end method

.method static synthetic access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    .line 3
    return p0
.end method

.method static synthetic access$1502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    .line 3
    return p1
.end method

.method static synthetic access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    .line 3
    return p0
.end method

.method static synthetic access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    .line 3
    return p1
.end method

.method static synthetic access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    .line 3
    return p0
.end method

.method static synthetic access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    .line 3
    return p1
.end method

.method static synthetic access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->stopBtSco()V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 3
    return p0
.end method

.method static synthetic access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    .line 3
    return p0
.end method

.method static synthetic access$2002(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    .line 3
    return p1
.end method

.method static synthetic access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 3
    return p1
.end method

.method static synthetic access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 3
    return p0
.end method

.method static synthetic access$2102(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 3
    return p1
.end method

.method static synthetic access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 3
    return p0
.end method

.method static synthetic access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 3
    return p1
.end method

.method static synthetic access$2300(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    .line 3
    return p0
.end method

.method static synthetic access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    .line 3
    return p1
.end method

.method static synthetic access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2500(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2600(Lio/agora/rtc/internal/AudioRoutingController;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    .line 4
    return-void
.end method

.method static synthetic access$2700(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    .line 3
    return p0
.end method

.method static synthetic access$2800(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isAudioOnly()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    return-object p0
.end method

.method static synthetic access$3000(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 3
    return p0
.end method

.method static synthetic access$3002(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 3
    return p1
.end method

.method static synthetic access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->doStopBTSco(Landroid/media/AudioManager;)V

    .line 4
    return-void
.end method

.method static synthetic access$3300(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    .line 4
    return-void
.end method

.method static synthetic access$3400(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->updateBluetoothSco(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3502(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 3
    return p1
.end method

.method static synthetic access$3600(Lio/agora/rtc/internal/AudioRoutingController;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->checkBtScoState(Z)V

    .line 4
    return-void
.end method

.method static synthetic access$3700(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    .line 3
    return p0
.end method

.method static synthetic access$3800(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->startTimer()V

    .line 4
    return-void
.end method

.method static synthetic access$400(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->cancelTimer()V

    .line 4
    return-void
.end method

.method static synthetic access$4002(Lio/agora/rtc/internal/AudioRoutingController;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$ControllerState;)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lio/agora/rtc/internal/AudioRoutingController;I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$800(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->resetAudioRouting()V

    .line 4
    return-void
.end method

.method static synthetic access$902(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetType:I

    .line 3
    return p1
.end method

.method private bluetoothTimeout()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 7
    .line 8
    const-string v2, "AudioRoute"

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v0, "no bluetooth profile connected"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    .line 28
    if-lez v3, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 35
    .line 36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v6, 0x1a

    .line 39
    .line 40
    if-gt v3, v6, :cond_1

    .line 41
    .line 42
    :try_start_0
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    const-string v6, "isAudioOn"

    .line 49
    .line 50
    new-array v7, v5, [Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    iget-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 57
    .line 58
    new-array v7, v5, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_4

    .line 64
    :catch_0
    move-exception v3

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v3

    .line 67
    goto :goto_1

    .line 68
    :catch_2
    move-exception v3

    .line 69
    goto :goto_2

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    goto :goto_3

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    goto :goto_3

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    :cond_1
    :goto_3
    const/4 v3, 0x0

    .line 82
    .line 83
    :goto_4
    iget-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    .line 87
    move-result v6

    .line 88
    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    check-cast v3, Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    move-result v3

    .line 98
    .line 99
    if-eqz v3, :cond_2

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v6, "SCO is not connected with "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    goto :goto_6

    .line 126
    .line 127
    :cond_3
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    const-string v6, "SCO connected with "

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move v1, v4

    .line 151
    goto :goto_7

    .line 152
    .line 153
    :cond_4
    const-string v1, "no bluetooth device connected."

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_6
    move v1, v5

    .line 158
    .line 159
    :goto_7
    iget v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 160
    const/4 v6, 0x5

    .line 161
    .line 162
    if-ge v3, v6, :cond_5

    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    const-string v5, "attemps trying, bt sco started: "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    iget-boolean v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v5, " sco connected: "

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v5, " "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    iget v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v5, " times "

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    iget v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v5, "["

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    iget v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, v5}, Lio/agora/rtc/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    .line 216
    move-result-object v5

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v5, "]"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v3

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    iget-boolean v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    .line 234
    .line 235
    if-eqz v2, :cond_7

    .line 236
    .line 237
    if-nez v1, :cond_7

    .line 238
    .line 239
    .line 240
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->startTimer()V

    .line 241
    .line 242
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 243
    add-int/2addr v1, v4

    .line 244
    .line 245
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 246
    .line 247
    .line 248
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->stopBtSco()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 252
    .line 253
    .line 254
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    .line 255
    goto :goto_8

    .line 256
    .line 257
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    const-string v1, "start bluetooth sco timeout, actual routing: "

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 269
    move-result v1

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    .line 279
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    iput v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 282
    .line 283
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 287
    move-result-object v0

    .line 288
    .line 289
    if-eqz v0, :cond_6

    .line 290
    .line 291
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 295
    move-result-object v0

    .line 296
    .line 297
    check-cast v0, Lio/agora/rtc/internal/AudioRoutingListener;

    .line 298
    .line 299
    const/16 v1, 0x406

    .line 300
    .line 301
    .line 302
    invoke-interface {v0, v1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingError(I)V

    .line 303
    .line 304
    .line 305
    :cond_6
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->resetAudioRouting()V

    .line 306
    :cond_7
    :goto_8
    return-void
.end method

.method private btStateAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "Unknown "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    const-string p1, "SCO_DISCONNECTED"

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    const-string p1, "SCO_DISCONNECTING"

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    const-string p1, "SCO_CONNECTED"

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_3
    const-string p1, "SCO_CONNECTING"

    .line 41
    :goto_0
    return-object p1
.end method

.method private cancelTimer()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "AudioRoute"

    .line 3
    .line 4
    const-string v1, "cancel bluetooth timer"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 10
    .line 11
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method

.method private changeState(I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 13
    .line 14
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->reset()V

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 24
    return-object p1

    .line 25
    :cond_2
    const/4 v0, 0x1

    .line 26
    .line 27
    if-ne p1, v0, :cond_5

    .line 28
    .line 29
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 37
    .line 38
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 39
    .line 40
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->reset()V

    .line 46
    .line 47
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 48
    return-object p1

    .line 49
    .line 50
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 51
    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 59
    .line 60
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 61
    .line 62
    :cond_6
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 63
    .line 64
    if-eqz p1, :cond_7

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->reset()V

    .line 68
    .line 69
    :cond_7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 70
    return-object p1
.end method

.method private checkBtScoState(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBtScoOn"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    return-void
.end method

.method private clearBTResource()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    .line 14
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->cancelTimer()V

    .line 24
    .line 25
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 26
    .line 27
    :cond_0
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 34
    :cond_2
    return-void
.end method

.method private doSetAudioOutputRouting(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "set audio output routing from "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, " to "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "AudioRoute"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x5

    .line 47
    .line 48
    if-eq p1, v3, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 52
    const/4 v3, 0x3

    .line 53
    .line 54
    if-ne p1, v3, :cond_0

    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v3, v0

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 67
    move-result v2

    .line 68
    .line 69
    if-eq v2, p1, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 73
    move-result v2

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    const-string v4, "different audio routing from target "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v4, ", actual routing: "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "["

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "]"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->updateBluetoothSco(I)I

    .line 122
    .line 123
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 124
    .line 125
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    const-string v2, "audio routing changed to "

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :goto_2
    const-string v2, "set audio output routing failed:"

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :goto_3
    return v0
.end method

.method private doStartBTSco(Landroid/media/AudioManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "am"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "]"

    .line 3
    .line 4
    const-string v1, "["

    .line 5
    .line 6
    const-string v2, " "

    .line 7
    .line 8
    const-string v3, "AudioRoute"

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 12
    move-result v4

    .line 13
    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v6, "doStartBTSco "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v6, " sco on: "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 36
    move-result v6

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v4}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v4, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 76
    const/4 v5, 0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 80
    .line 81
    iget-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    const-string v6, "connectAudio"

    .line 90
    .line 91
    new-array v7, v4, [Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    iget-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 98
    .line 99
    new-array v4, v4, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    goto :goto_4

    .line 104
    :catch_0
    move-exception v4

    .line 105
    goto :goto_3

    .line 106
    :catch_1
    move-exception v4

    .line 107
    goto :goto_0

    .line 108
    :catch_2
    move-exception v4

    .line 109
    goto :goto_1

    .line 110
    :catch_3
    move-exception v4

    .line 111
    goto :goto_2

    .line 112
    .line 113
    .line 114
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    goto :goto_4

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    goto :goto_4

    .line 120
    .line 121
    .line 122
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    goto :goto_4

    .line 124
    .line 125
    :goto_3
    const-string v5, "doStartBTSco fail "

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v5, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    :cond_0
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    const-string v5, "doStartBTSco done sco on: "

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 142
    move-result v5

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 152
    move-result v2

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 162
    move-result p1

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private doStopBTSco(Landroid/media/AudioManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "am"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "doStopBTSco "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " sco on: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "AudioRoute"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 44
    .line 45
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    const-string v1, "disconnectAudio"

    .line 54
    .line 55
    new-array v2, v0, [Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 62
    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_3

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_0

    .line 70
    :catch_1
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    goto :goto_3

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    goto :goto_3

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :cond_0
    :goto_3
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    const-string v1, "audio"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/media/AudioManager;

    .line 21
    return-object v0
.end method

.method private getAudioRouteDesc(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown"

    return-object p1

    :pswitch_0
    const-string p1, "HeadsetBluetooth"

    return-object p1

    :pswitch_1
    const-string p1, "Loudspeaker"

    return-object p1

    :pswitch_2
    const-string p1, "Speakerphone"

    return-object p1

    :pswitch_3
    const-string p1, "HeadsetOnly"

    return-object p1

    :pswitch_4
    const-string p1, "Earpiece"

    return-object p1

    :pswitch_5
    const-string p1, "Headset"

    return-object p1

    :pswitch_6
    const-string p1, "Default"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAudioOnly()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private modeAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "Unknown "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    const-string p1, "MODE_IN_COMMUNICATION"

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    const-string p1, "MODE_IN_CALL"

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    const-string p1, "MODE_RINGTONE"

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_3
    const-string p1, "MODE_NORMAL"

    .line 41
    :goto_0
    return-object p1
.end method

.method private notifyAudioRoutingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lio/agora/rtc/internal/AudioRoutingListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mLastNotifiedRouting:I

    .line 13
    .line 14
    if-eq v1, p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingChanged(I)V

    .line 18
    .line 19
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mLastNotifiedRouting:I

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-string p1, "AudioRoute"

    .line 23
    .line 24
    const-string v0, "failed to get audio routing listener"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private queryCurrentAudioRouting()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    const/4 v0, 0x3

    .line 22
    return v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    :goto_0
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    const/4 v0, 0x5

    .line 47
    return v0

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 51
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    const/4 v0, 0x0

    .line 55
    return v0

    .line 56
    :cond_4
    const/4 v0, 0x1

    .line 57
    return v0

    .line 58
    .line 59
    :goto_1
    const-string v1, "AudioRoute"

    .line 60
    .line 61
    const-string v2, "fatal error @queryCurrentAudioRouting"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const/4 v0, -0x1

    .line 66
    return v0
.end method

.method private resetAudioRouting()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "default routing: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, " bluetooth "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ", current routing: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, ", actual system routing: "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v3, "AudioRoute"

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    .line 71
    .line 72
    const-string v4, ", target routing: "

    .line 73
    const/4 v5, 0x1

    .line 74
    .line 75
    if-ne v0, v5, :cond_1

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    const-string v2, "reset(force) audio routing, default routing: "

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v1, 0x3

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, ", actual system routing:"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 126
    move-result v2

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 143
    .line 144
    if-ne v0, v1, :cond_0

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 148
    move-result v0

    .line 149
    .line 150
    if-eq v0, v1, :cond_7

    .line 151
    .line 152
    .line 153
    :cond_0
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    .line 158
    :cond_1
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 159
    move-result v0

    .line 160
    .line 161
    if-eqz v0, :cond_2

    .line 162
    const/4 v6, 0x2

    .line 163
    .line 164
    if-ne v0, v6, :cond_3

    .line 165
    .line 166
    :cond_2
    iput-boolean v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 167
    .line 168
    :cond_3
    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 169
    .line 170
    if-eqz v0, :cond_4

    .line 171
    const/4 v0, 0x5

    .line 172
    goto :goto_0

    .line 173
    .line 174
    :cond_4
    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 175
    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetType:I

    .line 179
    goto :goto_0

    .line 180
    .line 181
    :cond_5
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 182
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    const-string v6, "reset audio routing, OriginRouting routing: "

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    iget v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v6}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    .line 206
    .line 207
    invoke-static {v3, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    const-string v6, "reset audio routing, default routing: "

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    iget v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, v6}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 223
    move-result-object v6

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 232
    .line 233
    .line 234
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 255
    move-result v1

    .line 256
    .line 257
    .line 258
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 259
    move-result-object v1

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v1

    .line 267
    .line 268
    .line 269
    invoke-static {v3, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 272
    .line 273
    if-ne v1, v0, :cond_6

    .line 274
    .line 275
    .line 276
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    .line 277
    move-result v1

    .line 278
    .line 279
    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 280
    .line 281
    if-eq v1, v2, :cond_7

    .line 282
    .line 283
    .line 284
    :cond_6
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    .line 285
    :cond_7
    :goto_1
    return-void
.end method

.method private startBtSco()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "try to opening bt sco "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, " "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "["

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "] "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "] sco on: "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    const-string v2, "AudioRoute"

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v3, "Off call sco support = "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    .line 101
    move-result v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    .line 113
    .line 114
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 115
    .line 116
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    .line 124
    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    .line 3
    .line 4
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 5
    .line 6
    mul-int/lit16 v1, v1, 0xfa0

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "start bluetooth timer "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "AudioRoute"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 36
    .line 37
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    const-wide/16 v2, 0xfa0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    return-void
.end method

.method private stopBtSco()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "try to stopping bt sco "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "["

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "] "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "] sco on: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    const-string v2, "AudioRoute"

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x3

    .line 85
    .line 86
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 v1, 0x2

    .line 89
    .line 90
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doStopBTSco(Landroid/media/AudioManager;)V

    .line 94
    return-void
.end method

.method private updateBluetoothSco(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetRouting"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "updateBluetoothSco sco started: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, ", audio route target: "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "["

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "] current: "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "], engine role: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEngineRole:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "mUsing  "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, " mBTHeadSetProperlySeted "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    const-string v1, "AudioRoute"

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x5

    .line 99
    const/4 v1, 0x0

    .line 100
    .line 101
    if-ne p1, v0, :cond_0

    .line 102
    .line 103
    iput-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x1

    .line 106
    .line 107
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    .line 108
    .line 109
    :goto_0
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    .line 113
    return v1
.end method


# virtual methods
.method public clearListenerNativeHandle()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "clearListenerNativeHandle"

    .line 3
    .line 4
    const-string v1, "AudioRoute"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lio/agora/rtc/internal/AudioRoutingListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingDestroyed()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const-string v0, "failed to get audio routing listener"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void
.end method

.method protected hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public initialize()I
    .locals 9

    .line 1
    .line 2
    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 3
    .line 4
    const-string v1, "initialize +"

    .line 5
    .line 6
    const-string v2, "AudioRoute"

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroid/content/Context;

    .line 18
    const/4 v3, -0x1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v0, "context has been GCed"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return v3

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    const-string v0, "invalid context: can\'t get AudioManager"

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return v3

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x0

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    new-instance v6, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 48
    .line 49
    .line 50
    invoke-direct {v6, p0, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V

    .line 51
    .line 52
    iput-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    new-instance v6, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 62
    .line 63
    .line 64
    invoke-direct {v6, p0, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V

    .line 65
    .line 66
    iput-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_3
    iput-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 70
    .line 71
    :goto_0
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 72
    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    new-instance v3, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, p0, v5}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 79
    .line 80
    iput-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 84
    move-result v3

    .line 85
    .line 86
    iput-boolean v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 87
    const/4 v3, 0x2

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v6, "Headset setup: Plugged = "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    iget-boolean v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->getRegistered()Z

    .line 121
    move-result v4

    .line 122
    const/4 v6, 0x1

    .line 123
    .line 124
    if-nez v4, :cond_5

    .line 125
    .line 126
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 127
    .line 128
    new-instance v7, Landroid/content/IntentFilter;

    .line 129
    .line 130
    const-string v8, "android.intent.action.HEADSET_PLUG"

    .line 131
    .line 132
    .line 133
    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    .line 138
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v6}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->setRegistered(Z)V

    .line 142
    .line 143
    :cond_5
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 144
    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    const-string v4, "Bluetooth service Listener already been initialized"

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v4}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    goto :goto_1

    .line 152
    .line 153
    :cond_6
    :try_start_0
    new-instance v4, Lio/agora/rtc/internal/AudioRoutingController$2;

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, p0}, Lio/agora/rtc/internal/AudioRoutingController$2;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 157
    .line 158
    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_1

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    const-string v8, "initialize failed: unable to create BluetoothProfile.ServiceListener, err="

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    :goto_1
    const-string v4, "android.permission.BLUETOOTH"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 190
    move-result v4

    .line 191
    const/4 v7, 0x0

    .line 192
    .line 193
    if-nez v4, :cond_7

    .line 194
    .line 195
    const-string v0, "lacks BLUETOOTH permission"

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return v7

    .line 200
    .line 201
    :cond_7
    :try_start_1
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 202
    .line 203
    if-nez v4, :cond_8

    .line 204
    .line 205
    new-instance v4, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 206
    .line 207
    .line 208
    invoke-direct {v4, p0, v5}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 209
    .line 210
    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 211
    goto :goto_2

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    .line 217
    :cond_8
    :goto_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 218
    move-result-object v4

    .line 219
    .line 220
    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 221
    .line 222
    if-eqz v4, :cond_b

    .line 223
    .line 224
    iget-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 225
    .line 226
    if-eqz v5, :cond_b

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 230
    move-result-object v5

    .line 231
    .line 232
    iget-object v8, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v5, v8, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 236
    .line 237
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    .line 241
    move-result v4

    .line 242
    .line 243
    if-ne v3, v4, :cond_9

    .line 244
    .line 245
    iput-boolean v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 246
    .line 247
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    const-string v4, "BT headset setup: BTHeadsetPlugged = "

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    iget-boolean v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v4, " "

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 275
    .line 276
    .line 277
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    new-instance v3, Landroid/content/IntentFilter;

    .line 280
    .line 281
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 282
    .line 283
    .line 284
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    .line 294
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    .line 299
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->getRegistered()Z

    .line 303
    move-result v4

    .line 304
    .line 305
    if-nez v4, :cond_c

    .line 306
    .line 307
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v6}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->setRegistered(Z)V

    .line 317
    .line 318
    if-eqz v1, :cond_c

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 322
    move-result-object v3

    .line 323
    .line 324
    .line 325
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 326
    move-result v0

    .line 327
    .line 328
    if-eqz v0, :cond_c

    .line 329
    .line 330
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 334
    move-result v0

    .line 335
    .line 336
    if-eq v0, v6, :cond_a

    .line 337
    .line 338
    const-string v0, "initial Bluetooth SCO device unconnected"

    .line 339
    .line 340
    .line 341
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x3

    .line 343
    .line 344
    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 345
    goto :goto_4

    .line 346
    .line 347
    :cond_a
    const-string v0, "initial Bluetooth SCO device connected"

    .line 348
    .line 349
    .line 350
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    iput v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 353
    goto :goto_4

    .line 354
    .line 355
    :cond_b
    const-string v0, "initialize: failed to get bluetooth adapter!!"

    .line 356
    .line 357
    .line 358
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    return v7

    .line 360
    .line 361
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string/jumbo v3, "unable to create BluetoothHeadsetBroadcastReceiver, err:"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 374
    move-result-object v0

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    move-result-object v0

    .line 382
    .line 383
    .line 384
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    :cond_c
    :goto_4
    const-string v0, "initialize -"

    .line 387
    .line 388
    .line 389
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return v7
.end method

.method public sendEvent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "arg"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "sendEvent: ["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "], extra arg: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "... "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "AudioRoute"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public startMonitoring(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultRouting",
            "channelProfile"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerState;->getState()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    const-string p1, "AudioRoute"

    .line 12
    .line 13
    const-string p2, "state not changed!"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 20
    .line 21
    iput p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    .line 22
    .line 23
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 24
    .line 25
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerState;->setState(I)V

    .line 29
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerState;->setState(I)V

    .line 7
    return-void
.end method

.method public uninitialize()V
    .locals 4

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "uninitialize"

    .line 4
    .line 5
    const-string v1, "AudioRoute"

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->clearBTResource()V

    .line 12
    .line 13
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->getRegistered()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    .line 39
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->setRegistered(Z)V

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->getRegistered()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    .line 62
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->setRegistered(Z)V

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    .line 68
    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 69
    .line 70
    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :goto_1
    const-string v2, "AudioRoutingController uninitialize fail: "

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_2
    return-void
.end method
