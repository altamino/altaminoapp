.class Lio/agora/rtc/internal/CommonUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;,
        Lio/agora/rtc/internal/CommonUtility$MobileType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtility"

.field private static final VIDEO_SOURCE_TYPE_CUSTOMIZED:I = 0x2

.field private static final VIDEO_SOURCE_TYPE_DEFAULT:I = 0x1

.field private static final VIDEO_SOURCE_TYPE_EXTERNAL_DEPRECATED:I = 0x3

.field private static final VIDEO_SOURCE_TYPE_NULL:I

.field private static mApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private batteryPercentage:I

.field private volatile mAccessible:Z

.field private mBridgeHandle:J

.field private mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoEnabled:Z

.field private mMobileType:I

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationObserver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

.field private mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

.field private mVideoSourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bridge"
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
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 10
    .line 11
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 12
    .line 13
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    iput-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 20
    const/4 v2, -0x1

    .line 21
    .line 22
    iput v2, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 23
    .line 24
    const/16 v3, 0xff

    .line 25
    .line 26
    iput v3, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    .line 27
    .line 28
    iput v2, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 29
    .line 30
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mLocalVideoEnabled:Z

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    iput v0, p0, Lio/agora/rtc/internal/CommonUtility;->mVideoSourceType:I

    .line 34
    .line 35
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    iput-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    iput-wide p2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 45
    .line 46
    :try_start_0
    new-instance p2, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    .line 50
    .line 51
    iput-object p2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 52
    .line 53
    const-string p2, "phone"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 60
    .line 61
    iget-object p3, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 62
    .line 63
    const/16 v1, 0x120

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p2

    .line 69
    .line 70
    sget-object p3, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "Unable to create PhoneStateListener, "

    .line 73
    .line 74
    .line 75
    invoke-static {p3, v1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorConnectionEvent(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorPowerChange(Z)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorOrientationChange(Landroid/content/Context;Z)V

    .line 85
    .line 86
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 87
    .line 88
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    const-string p2, "[init] done!"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/internal/CommonUtility;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->checkOrientation(I)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lio/agora/rtc/internal/CommonUtility;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 3
    return p0
.end method

.method static synthetic access$200(Lio/agora/rtc/internal/CommonUtility;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->updateViewOrientation()V

    .line 4
    return-void
.end method

.method static synthetic access$300(Lio/agora/rtc/internal/CommonUtility;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static canGetDefaultContext()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method private static checkAccessNetworkState(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    move-result v2

    .line 13
    .line 14
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 18
    move-result p0

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

.method private static checkAccessWifiState(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    move-result v2

    .line 13
    .line 14
    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 18
    move-result p0

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

.method private checkOrientation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 v0, 0x154

    .line 11
    .line 12
    if-gt p1, v0, :cond_3

    .line 13
    .line 14
    const/16 v0, 0x14

    .line 15
    .line 16
    if-lt p1, v0, :cond_3

    .line 17
    .line 18
    const/16 v0, 0x46

    .line 19
    .line 20
    if-le p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x6e

    .line 23
    .line 24
    if-lt p1, v0, :cond_3

    .line 25
    .line 26
    :cond_1
    const/16 v0, 0xa0

    .line 27
    .line 28
    if-le p1, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0xc8

    .line 31
    .line 32
    if-lt p1, v0, :cond_3

    .line 33
    .line 34
    :cond_2
    const/16 v0, 0xfa

    .line 35
    .line 36
    if-le p1, v0, :cond_4

    .line 37
    .line 38
    const/16 v0, 0x122

    .line 39
    .line 40
    if-ge p1, v0, :cond_4

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->updateViewOrientation()V

    .line 44
    :cond_4
    :goto_0
    return-void
.end method

.method private checkVoipPermissions(Landroid/content/Context;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "clientRole"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, -0x9

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    const-string p2, "android.permission.INTERNET"

    .line 7
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string p2, "Do not have Internet permission!"

    .line 8
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    sget-object p2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v0, "Do not have enough permission! "

    .line 10
    invoke-static {p2, v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private checkVoipPermissions(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.INTERNET"

    .line 3
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 4
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 5
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, p0, Lio/agora/rtc/internal/CommonUtility;->mVideoSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mLocalVideoEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 6
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "perm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not granted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private disableOrientationListener()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 11
    .line 12
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "[disableOrientationListener] done!"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "[disableOrientationListener] mOrientationListener is null!"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_0
    return-void
.end method

.method private doGetNetworkInfo(Landroid/content/Context;)Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->checkAccessNetworkState(Landroid/content/Context;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iput-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 27
    .line 28
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 29
    .line 30
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 31
    .line 32
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->frequency:I

    .line 33
    .line 34
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->linkspeed:I

    .line 35
    return-object v0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->getLocalHost()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp4:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-static {p1}, Lio/agora/rtc/internal/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/net/NetworkInfo;)I

    .line 51
    move-result v4

    .line 52
    .line 53
    iput v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkType:I

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 59
    move-result v1

    .line 60
    .line 61
    iput v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {}, Lio/agora/rtc/internal/Connectivity;->getDnsList()Ljava/util/ArrayList;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->dnsList:Ljava/util/ArrayList;

    .line 68
    .line 69
    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkType:I

    .line 70
    const/4 v4, 0x2

    .line 71
    .line 72
    if-ne v1, v4, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->checkAccessWifiState(Landroid/content/Context;)Z

    .line 76
    move-result v1

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    iput-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 83
    .line 84
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 85
    .line 86
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 87
    .line 88
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->frequency:I

    .line 89
    .line 90
    iput v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->linkspeed:I

    .line 91
    return-object v0

    .line 92
    .line 93
    .line 94
    :cond_4
    const-string/jumbo v1, "wifi"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    iget v1, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->intToInetAddress(I)Ljava/net/InetAddress;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp4:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    iput-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 134
    move-result v1

    .line 135
    .line 136
    iput v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 137
    const/4 v2, 0x5

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    .line 141
    move-result v1

    .line 142
    .line 143
    iput v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    .line 147
    move-result v1

    .line 148
    .line 149
    iput v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->linkspeed:I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 153
    move-result p1

    .line 154
    .line 155
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->frequency:I

    .line 156
    .line 157
    const/16 v1, 0x1388

    .line 158
    .line 159
    if-lt p1, v1, :cond_6

    .line 160
    .line 161
    const/16 p1, 0x65

    .line 162
    .line 163
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    .line 164
    goto :goto_0

    .line 165
    .line 166
    :cond_6
    const/16 v1, 0x960

    .line 167
    .line 168
    if-lt p1, v1, :cond_9

    .line 169
    .line 170
    const/16 p1, 0x64

    .line 171
    .line 172
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    .line 173
    goto :goto_0

    .line 174
    .line 175
    :cond_7
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 176
    .line 177
    if-eqz v1, :cond_8

    .line 178
    .line 179
    .line 180
    :try_start_0
    invoke-virtual {v1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getRssi()I

    .line 181
    move-result p1

    .line 182
    .line 183
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 184
    .line 185
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getLevel()I

    .line 189
    move-result p1

    .line 190
    .line 191
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 192
    .line 193
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getAsuLevel()I

    .line 197
    move-result p1

    .line 198
    .line 199
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_0

    .line 201
    .line 202
    .line 203
    :cond_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 204
    move-result v1

    .line 205
    .line 206
    .line 207
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 208
    move-result v2

    .line 209
    .line 210
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 214
    move-result v1

    .line 215
    .line 216
    if-nez v1, :cond_9

    .line 217
    .line 218
    .line 219
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->getSignalStrength(Landroid/content/Context;Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;)Z

    .line 220
    :catch_0
    :cond_9
    :goto_0
    return-object v0

    .line 221
    :cond_a
    :goto_1
    const/4 p1, 0x0

    .line 222
    return-object p1
.end method

.method private enableOrientationListener(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lio/agora/rtc/internal/CommonUtility$1;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1, v1}, Lio/agora/rtc/internal/CommonUtility$1;-><init>(Lio/agora/rtc/internal/CommonUtility;Landroid/content/Context;I)V

    .line 11
    .line 12
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    .line 21
    .line 22
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "[enableOrientationListener] done!"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :goto_1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "Unable to create OrientationEventListener, "

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :goto_2
    return-void
.end method

.method private static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method private static getAppPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "mounted"

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static getAppStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 10
    move-result v1

    .line 11
    .line 12
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v1, "/sdcard/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_0
    sget-object p0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "read external storage is not granted"

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method private getAssetsCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "filePath"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "getAssetsCacheFile filePath: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "wm_"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "_"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    new-instance v1, Ljava/io/File;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_4

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 77
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    const/16 v0, 0x400

    .line 85
    .line 86
    :try_start_2
    new-array v0, v0, [B

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 90
    move-result v2

    .line 91
    .line 92
    if-lez v2, :cond_1

    .line 93
    const/4 v3, 0x0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :cond_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    .line 104
    .line 105
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 109
    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    return-object p1

    .line 111
    :catchall_1
    move-exception p2

    .line 112
    goto :goto_3

    .line 113
    .line 114
    .line 115
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 116
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    .line 118
    .line 119
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 120
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 121
    .line 122
    .line 123
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    const/4 p1, 0x0

    .line 125
    return-object p1
.end method

.method private getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    const-string v0, "audio"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/media/AudioManager;

    .line 13
    return-object p1
.end method

.method public static getContextInfo(Landroid/content/Context;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getDeviceId()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getDeviceInfo()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getSystemInfo()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->getAppPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    .line 52
    .line 53
    const-string p0, ""

    .line 54
    .line 55
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    .line 66
    .line 67
    :cond_1
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    .line 76
    .line 77
    :cond_2
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    .line 86
    .line 87
    :cond_3
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    .line 96
    .line 97
    :cond_4
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    move-result v1

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    .line 106
    .line 107
    :cond_5
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v1

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    .line 116
    .line 117
    :cond_6
    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_7

    .line 124
    .line 125
    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->marshall()[B

    .line 129
    move-result-object p0

    .line 130
    return-object p0
.end method

.method public static getLocalHost()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/net/NetworkInterface;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    const-string/jumbo v3, "usb"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Ljava/net/InetAddress;

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lio/agora/rtc/internal/CommonUtility;->inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 72
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    return-object v2

    .line 76
    :catch_0
    :cond_3
    const/4 v0, 0x0

    .line 77
    return-object v0
.end method

.method public static getLocalHostList()[Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Ljava/net/NetworkInterface;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    const-string/jumbo v4, "usb"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 60
    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    check-cast v3, Ljava/net/InetAddress;

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lio/agora/rtc/internal/CommonUtility;->inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 87
    move-result v0

    .line 88
    .line 89
    new-array v0, v0, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v1

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v3

    .line 99
    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    return-object v0

    .line 113
    :catch_0
    :cond_5
    const/4 v0, 0x0

    .line 114
    return-object v0
.end method

.method public static getRandomUUID()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "-"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method private getSignalStrength(Landroid/content/Context;Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "ni"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    .line 4
    if-eqz p1, :cond_a

    .line 5
    .line 6
    const-string v2, "phone"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_9

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/telephony/CellInfo;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    return v0

    .line 36
    :cond_1
    const/4 v2, 0x1

    .line 37
    .line 38
    :try_start_0
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 39
    .line 40
    if-eq v3, v1, :cond_2

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    :cond_2
    move-object v3, p1

    .line 44
    .line 45
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iput v0, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    .line 57
    move-result v4

    .line 58
    .line 59
    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    .line 63
    move-result v4

    .line 64
    .line 65
    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    .line 69
    move-result v3

    .line 70
    .line 71
    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return v2

    .line 73
    .line 74
    :catch_0
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 75
    .line 76
    :cond_3
    :try_start_1
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 77
    .line 78
    if-eq v3, v1, :cond_4

    .line 79
    .line 80
    if-ne v3, v2, :cond_5

    .line 81
    :cond_4
    move-object v3, p1

    .line 82
    .line 83
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    iput v2, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    .line 95
    move-result v4

    .line 96
    .line 97
    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    .line 101
    move-result v4

    .line 102
    .line 103
    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    .line 107
    move-result v3

    .line 108
    .line 109
    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    return v2

    .line 111
    .line 112
    :catch_1
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 113
    .line 114
    :cond_5
    :try_start_2
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 115
    const/4 v4, 0x2

    .line 116
    .line 117
    if-eq v3, v1, :cond_6

    .line 118
    .line 119
    if-ne v3, v4, :cond_7

    .line 120
    :cond_6
    move-object v3, p1

    .line 121
    .line 122
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    if-eqz v3, :cond_7

    .line 129
    .line 130
    iput v4, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    .line 134
    move-result v4

    .line 135
    .line 136
    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    .line 140
    move-result v4

    .line 141
    .line 142
    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    .line 146
    move-result v3

    .line 147
    .line 148
    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    return v2

    .line 150
    .line 151
    :catch_2
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 152
    .line 153
    :cond_7
    :try_start_3
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 154
    const/4 v4, 0x3

    .line 155
    .line 156
    if-eq v3, v1, :cond_8

    .line 157
    .line 158
    if-ne v3, v4, :cond_9

    .line 159
    .line 160
    :cond_8
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    if-eqz p1, :cond_9

    .line 167
    .line 168
    iput v4, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    .line 172
    move-result v3

    .line 173
    .line 174
    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    .line 178
    move-result v3

    .line 179
    .line 180
    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    .line 184
    move-result p1

    .line 185
    .line 186
    iput p1, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    return v2

    .line 188
    .line 189
    :catch_3
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 190
    :cond_9
    :goto_0
    return v0

    .line 191
    .line 192
    :cond_a
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 193
    return v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "android.os.SystemProperties"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v3, Ljava/lang/String;

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    const-string v3, "get"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p0, v1, v4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method private static inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Ljava/net/Inet4Address;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p0, Ljava/net/Inet4Address;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    instance-of p0, p0, Ljava/net/Inet6Address;

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method private static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostAddress"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    and-int/lit16 v1, p0, 0xff

    .line 6
    int-to-byte v1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    aput-byte v1, v0, v2

    .line 10
    .line 11
    shr-int/lit8 v1, p0, 0x8

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    int-to-byte v1, v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    aput-byte v1, v0, v2

    .line 18
    .line 19
    shr-int/lit8 v1, p0, 0x10

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    int-to-byte v1, v1

    .line 23
    const/4 v2, 0x2

    .line 24
    .line 25
    aput-byte v1, v0, v2

    .line 26
    .line 27
    shr-int/lit8 p0, p0, 0x18

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    int-to-byte p0, p0

    .line 31
    const/4 v1, 0x3

    .line 32
    .line 33
    aput-byte p0, v0, v1

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :catch_0
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method private isSimulatorProperty()Z
    .locals 11

    .line 1
    .line 2
    const-string v0, "android"

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    .line 10
    :try_start_0
    const-string v5, "ro.hardware"

    .line 11
    .line 12
    .line 13
    invoke-static {v5}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    const-string v6, "intel"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    :cond_0
    move v5, v3

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :catch_0
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v6, "get property hardware fail."

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    move v5, v4

    .line 39
    .line 40
    :goto_0
    sget-object v6, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v8, "hardware = "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v8, ", suspectCount = "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    :try_start_1
    const-string v7, "os.arch"

    .line 71
    .line 72
    .line 73
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    if-eqz v7, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 80
    move-result-object v9

    .line 81
    .line 82
    const-string v10, "i686"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v9

    .line 87
    .line 88
    if-eqz v9, :cond_3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    const-string v9, "asus"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v2

    .line 99
    .line 100
    if-nez v2, :cond_3

    .line 101
    .line 102
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    const-string v9, "arch = "

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    .line 128
    invoke-static {v6, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :catch_1
    sget-object v2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string v6, "get property arch fail."

    .line 134
    .line 135
    .line 136
    invoke-static {v2, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    :cond_3
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    const/16 v6, 0x1c

    .line 141
    .line 142
    if-le v2, v6, :cond_b

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    .line 149
    const-string/jumbo v6, "ttvm"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    move-result v2

    .line 154
    .line 155
    if-eqz v2, :cond_4

    .line 156
    .line 157
    :goto_2
    add-int/lit8 v5, v5, 0xa

    .line 158
    goto :goto_3

    .line 159
    .line 160
    .line 161
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    const-string v2, "nox"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 168
    move-result v1

    .line 169
    .line 170
    if-eqz v1, :cond_5

    .line 171
    goto :goto_2

    .line 172
    .line 173
    :cond_5
    :goto_3
    :try_start_2
    const-string v1, "ro.build.flavor"

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    if-eqz v1, :cond_6

    .line 180
    .line 181
    .line 182
    const-string/jumbo v2, "vbox"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 186
    move-result v2

    .line 187
    .line 188
    if-nez v2, :cond_6

    .line 189
    .line 190
    const-string v2, "sdk_gphone"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    move-result v2

    .line 195
    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 199
    .line 200
    sget-object v2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 201
    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    const-string v7, "buildFlavor = "

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    goto :goto_4

    .line 228
    .line 229
    :catch_2
    sget-object v1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 230
    .line 231
    const-string v2, "get property buildFlavor fail."

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    :cond_7
    :goto_4
    :try_start_3
    const-string v1, "ro.product.board"

    .line 237
    .line 238
    .line 239
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    .line 242
    if-eqz v1, :cond_8

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 246
    move-result v2

    .line 247
    .line 248
    const-string v6, "goldfish"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 252
    move-result v6

    .line 253
    or-int/2addr v2, v6

    .line 254
    .line 255
    if-eqz v2, :cond_9

    .line 256
    .line 257
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 258
    .line 259
    sget-object v2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    const-string v7, "productBoard = "

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    move-result-object v1

    .line 283
    .line 284
    .line 285
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 286
    goto :goto_5

    .line 287
    .line 288
    :catch_3
    sget-object v1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 289
    .line 290
    const-string v2, "get property productBoard fail."

    .line 291
    .line 292
    .line 293
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    :cond_9
    :goto_5
    :try_start_4
    const-string v1, "ro.board.platform"

    .line 296
    .line 297
    .line 298
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    if-eqz v1, :cond_a

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 305
    move-result v0

    .line 306
    .line 307
    if-eqz v0, :cond_b

    .line 308
    .line 309
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 310
    .line 311
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 312
    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    const-string v6, "boardPlatform = "

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v1

    .line 335
    .line 336
    .line 337
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 338
    goto :goto_6

    .line 339
    .line 340
    :catch_4
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 341
    .line 342
    const-string v1, "get property boardPlatform fail."

    .line 343
    .line 344
    .line 345
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    :cond_b
    :goto_6
    if-lez v5, :cond_c

    .line 348
    goto :goto_7

    .line 349
    :cond_c
    move v3, v4

    .line 350
    :goto_7
    return v3
.end method

.method private monitorOrientationChange(Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "enable"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->enableOrientationListener(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->regiseterBroadcaster(Landroid/content/Context;)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->disableOrientationListener()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->unregisterBroadcaster(Landroid/content/Context;)V

    .line 16
    :goto_0
    return-void
.end method

.method private native nativeAudioRoutingPhoneChanged(JZII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bridgeHandle",
            "enableAudio",
            "event",
            "arg"
        }
    .end annotation
.end method

.method private native nativeNotifyNetworkChange(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bridgeHandle",
            "networkInfo"
        }
    .end annotation
.end method

.method private native nativeNotifyOrientationChange(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bridgeHandle",
            "mOrientation"
        }
    .end annotation
.end method

.method private regiseterBroadcaster(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/CommonUtility$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lio/agora/rtc/internal/CommonUtility$2;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .line 17
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    .line 27
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "[regiseterBroadcaster] done!"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private unregisterBroadcaster(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    sget-object p1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "[unregisterBroadcaster] done!"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private updateViewOrientation()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "window"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroid/view/WindowManager;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "[updateViewOrientation] display is null!"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 48
    move-result v0

    .line 49
    .line 50
    iget v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 51
    .line 52
    if-ne v0, v1, :cond_2

    .line 53
    return-void

    .line 54
    .line 55
    :cond_2
    if-eqz v0, :cond_6

    .line 56
    const/4 v1, 0x1

    .line 57
    .line 58
    if-eq v0, v1, :cond_5

    .line 59
    const/4 v1, 0x2

    .line 60
    .line 61
    if-eq v0, v1, :cond_4

    .line 62
    const/4 v1, 0x3

    .line 63
    .line 64
    if-eq v0, v1, :cond_3

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 68
    .line 69
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v2, v3, v1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_4
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 76
    .line 77
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v2, v3, v1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_5
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 84
    .line 85
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v2, v3, v1}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    .line 89
    goto :goto_0

    .line 90
    :cond_6
    const/4 v0, 0x0

    .line 91
    .line 92
    iput v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientation:I

    .line 93
    .line 94
    iget-wide v1, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyOrientationChange(JI)I

    .line 98
    :goto_0
    return-void

    .line 99
    .line 100
    :cond_7
    :goto_1
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    const-string v1, "[updateViewOrientation] mContext is null or mAccessible is false!"

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 4
    .line 5
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Landroid/content/Context;

    .line 12
    .line 13
    iget-object v2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v2, "phone"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 26
    .line 27
    iget-object v3, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    iput-object v2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorConnectionEvent(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorPowerChange(Z)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1, v0}, Lio/agora/rtc/internal/CommonUtility;->monitorOrientationChange(Landroid/content/Context;Z)V

    .line 43
    .line 44
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 48
    .line 49
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "[destroy] done!"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public getAndroidVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBatteryLifePercent()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    .line 17
    return v0

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0xff

    .line 20
    return v0
.end method

.method public getFrontCameraIndex(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lio/agora/rtc/internal/DeviceUtils;->selectFrontCamera(Landroid/content/Context;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getNetworkInfo()[B
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

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
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v2, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->doGetNetworkInfo(Landroid/content/Context;)Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->marshall()[B

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getNetworkType()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

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
    const/4 v1, -0x1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v2, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->checkAccessNetworkState(Landroid/content/Context;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/content/Context;)I

    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    :goto_0
    return v1
.end method

.method public getNumberOfCameras(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lio/agora/rtc/internal/DeviceUtils;->getNumberOfCameras(Landroid/content/Context;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isSimulator()I
    .locals 10

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "unknown"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v6, 0x1a

    .line 14
    .line 15
    if-ge v5, v6, :cond_0

    .line 16
    .line 17
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-object v5, v1

    .line 20
    :catch_1
    move v6, v4

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    if-gt v5, v2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lio/agora/rtc/internal/a;->a()Ljava/lang/String;

    .line 27
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v5, v1

    .line 30
    .line 31
    .line 32
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    :try_start_2
    sget-object v6, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v8, "serial = "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v8, ", suspectCount = "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    .line 69
    invoke-static {v6, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    move v6, v3

    .line 71
    goto :goto_2

    .line 72
    :catch_2
    move v6, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v6, v4

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :goto_1
    sget-object v7, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    const-string v8, "get serial info fail."

    .line 80
    .line 81
    .line 82
    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    :goto_2
    :try_start_3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    const-string v8, "netease"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v7

    .line 95
    .line 96
    if-eqz v7, :cond_3

    .line 97
    .line 98
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    :cond_3
    sget-object v7, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v9, "manufacturer = "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v8

    .line 118
    .line 119
    .line 120
    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :catch_3
    sget-object v7, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string v8, "get manufacturer info fail."

    .line 126
    .line 127
    .line 128
    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_3
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->isSimulatorProperty()Z

    .line 132
    move-result v7

    .line 133
    .line 134
    if-eqz v7, :cond_4

    .line 135
    .line 136
    add-int/lit8 v6, v6, 0x1

    .line 137
    .line 138
    :cond_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    .line 141
    const-string/jumbo v8, "welldo"

    .line 142
    .line 143
    if-le v7, v2, :cond_7

    .line 144
    .line 145
    const-string v0, "nokia"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    move-result v0

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    const-string v0, "Nokia_N1"

    .line 154
    .line 155
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    const-string v0, "N1"

    .line 164
    .line 165
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    :cond_5
    return v4

    .line 173
    .line 174
    :cond_6
    if-lez v6, :cond_9

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 182
    move-result v0

    .line 183
    .line 184
    if-nez v0, :cond_9

    .line 185
    return v3

    .line 186
    .line 187
    .line 188
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v0

    .line 194
    .line 195
    if-nez v0, :cond_8

    .line 196
    .line 197
    if-lez v6, :cond_9

    .line 198
    .line 199
    .line 200
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    move-result v0

    .line 206
    .line 207
    if-nez v0, :cond_9

    .line 208
    return v3

    .line 209
    :cond_9
    return v4
.end method

.method public isSpeakerphoneEnabled(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public monitorConnectionEvent(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 5
    .line 6
    if-nez p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    new-instance p1, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    .line 12
    .line 13
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 14
    .line 15
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/content/Context;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v1, Landroid/content/IntentFilter;

    .line 30
    .line 31
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    .line 41
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "Unable to create ConnectionChangeBroadcastReceiver, "

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Landroid/content/Context;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :catch_1
    :cond_1
    const/4 p1, 0x0

    .line 66
    .line 67
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public monitorPowerChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 5
    .line 6
    if-nez p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    new-instance p1, Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lio/agora/rtc/internal/PowerConnectionReceiver;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    .line 12
    .line 13
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 14
    .line 15
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/content/Context;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .line 34
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    .line 46
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "Unable to create PowerConnectionReceiver, "

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Landroid/content/Context;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :catch_1
    :cond_1
    const/4 p1, 0x0

    .line 71
    .line 72
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 73
    :cond_2
    :goto_0
    return-void
.end method

.method public notifyNetworkChange()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lio/agora/rtc/internal/CommonUtility;->getNetworkInfo()[B

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-boolean v1, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-wide v1, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyNetworkChange(J[B)I

    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public onPhoneStateChanged(ZII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enableAudio",
            "event",
            "arg"
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-wide v2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 16
    move-object v1, p0

    .line 17
    move v4, p1

    .line 18
    move v5, p2

    .line 19
    move v6, p3

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Lio/agora/rtc/internal/CommonUtility;->nativeAudioRoutingPhoneChanged(JZII)V

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public onPowerChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batteryPct"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lio/agora/rtc/internal/CommonUtility;->mAccessible:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iput p1, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public updateLocalVideoEnableState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "updateLocalVideoEnableState: "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    iput-boolean p1, p0, Lio/agora/rtc/internal/CommonUtility;->mLocalVideoEnabled:Z

    .line 26
    return-void
.end method

.method public updateVideoSourceType(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "updateVideoSourceType: "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    iput p1, p0, Lio/agora/rtc/internal/CommonUtility;->mVideoSourceType:I

    .line 26
    return-void
.end method
