.class public Lio/agora/rtc/internal/RtcEngineImpl;
.super Lio/agora/rtc/RtcEngineEx;
.source "RtcEngineImpl.java"

# interfaces
.implements Lio/agora/rtc/IAudioEffectManager;


# static fields
.field private static final ORIENTATION_HYSTERESIS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RtcEngine"

.field private static final VIDEO_SOURCE_TYPE_CUSTOMIZED:I = 0x2

.field private static final VIDEO_SOURCE_TYPE_DEFAULT:I = 0x1

.field private static final VIDEO_SOURCE_TYPE_EXTERNAL_DEPRECATED:I = 0x3

.field private static final VIDEO_SOURCE_TYPE_NULL:I

.field private static sLibLoaded:Z

.field static sMatrix:[F


# instance fields
.field private lastOrientationTs:J

.field private mChannelProfile:I

.field private mClientRole:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mExAudioChannels:I

.field private mExAudioSampleRate:I

.field private mLocalVideoEnabled:Z

.field private mNativeHandle:J

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private final mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lio/agora/rtc/IRtcEngineEventHandler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

.field private mTotalRotation:I

.field private mUseLocalView:Z

.field private mVideoSourceType:I

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1860
    fill-array-data v0, :array_0

    sput-object v0, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lio/agora/rtc/RtcEngineEx;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    .line 82
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    .line 83
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioSampleRate:I

    .line 84
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioChannels:I

    const-wide/16 v1, 0x0

    .line 86
    iput-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->lastOrientationTs:J

    const/16 v3, 0x3e8

    .line 87
    iput v3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mTotalRotation:I

    .line 88
    iput-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    .line 92
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    .line 95
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 96
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mChannelProfile:I

    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mClientRole:I

    const/4 v0, -0x1

    .line 536
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientation:I

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {p0, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 180
    invoke-direct/range {v1 .. v9}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeObjectInit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/internal/RtcEngineImpl;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    return p0
.end method

.method static synthetic access$100(Lio/agora/rtc/internal/RtcEngineImpl;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateViewOrientation(I)V

    return-void
.end method

.method public static checkIfInUIThread(Ljava/lang/String;)Z
    .locals 3

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "RtcEngine"

    if-ne v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in UI Thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not in UI Thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized checkStatus()Z
    .locals 5

    monitor-enter p0

    .line 2323
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 2325
    monitor-exit p0

    return v0

    .line 2324
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RtcEngine does not initialize or it may be destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkVoipPermissions(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, -0x9

    const-string v2, "RtcEngine"

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    const-string p2, "android.permission.INTERNET"

    .line 127
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Do not have Internet permission!"

    .line 129
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 118
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    const-string p2, "Do not have enough permission! "

    .line 120
    invoke-static {v2, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private checkVoipPermissions(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.INTERNET"

    .line 106
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 107
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 108
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 110
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 103
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

.method private native deliverFrame(J[BIIIIIIIJI)I
.end method

.method private doCheckPermission(Landroid/content/Context;)I
    .locals 2

    .line 487
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mChannelProfile:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 488
    iget v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mClientRole:I

    .line 489
    :cond_0
    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;I)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "RtcEngine"

    const-string v0, "can\'t join channel because no permission"

    .line 490
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x9

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private doMonitorSystemEvent(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 471
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 474
    :cond_1
    invoke-static {p1}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 476
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 479
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz p1, :cond_4

    .line 480
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const-string p1, "RtcEngine"

    const-string v0, "hp connection mode detected"

    .line 481
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private doStopMonitorSystemEvent()V
    .locals 2

    .line 568
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 573
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const-string v0, "RtcEngine"

    const-string v1, "hp connection mode ended"

    .line 575
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1035
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAssetsCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 317
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 328
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 332
    :cond_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 332
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 333
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    .line 335
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 336
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected static getLocalHost()Ljava/lang/String;
    .locals 4

    .line 2084
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2085
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 2086
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2088
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2089
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2090
    invoke-static {v2}, Lio/agora/rtc/internal/RtcEngineImpl;->inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2091
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOptionsByVideoProfile(I)Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;
    .locals 2

    .line 1826
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetOptionsByVideoProfile(JI)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1828
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;-><init>()V

    .line 1829
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;->unmarshall([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1

    .line 2071
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2072
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 2073
    check-cast p0, Ljava/net/Inet4Address;

    .line 2074
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2075
    :cond_0
    instance-of p0, p0, Ljava/net/Inet6Address;

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized initializeNativeLibs()Z
    .locals 2

    const-class v0, Lio/agora/rtc/internal/RtcEngineImpl;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-boolean v1, Lio/agora/rtc/internal/RtcEngineImpl;->sLibLoaded:Z

    if-nez v1, :cond_1

    .line 147
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->loadNativeLibrary()V

    .line 148
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeClassInit()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lio/agora/rtc/internal/RtcEngineImpl;->sLibLoaded:Z

    .line 150
    :cond_1
    sget-boolean v1, Lio/agora/rtc/internal/RtcEngineImpl;->sLibLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized loadNativeLibrary()V
    .locals 2

    const-class v0, Lio/agora/rtc/internal/RtcEngineImpl;

    monitor-enter v0

    :try_start_0
    const-string v1, "agora-rtc-sdk-jni"

    .line 141
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native nativeAddInjectStreamUrl(JLjava/lang/String;[B)I
.end method

.method private native nativeAddLocalVideoRender(JLio/agora/rtc/mediaio/IVideoSink;I)I
.end method

.method private native nativeAddPublishStreamUrl(JLjava/lang/String;Z)I
.end method

.method private native nativeAddRemoteVideoRender(JILio/agora/rtc/mediaio/IVideoSink;I)I
.end method

.method private native nativeAddVideoCapturer(JLio/agora/rtc/mediaio/IVideoSource;I)I
.end method

.method private native nativeAddVideoWatermark(JLjava/lang/String;ZIIIIIIII)I
.end method

.method private static native nativeClassInit()I
.end method

.method private native nativeClearVideoWatermarks(J)I
.end method

.method private native nativeComplain(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeCreateDataStream(JZZ)I
.end method

.method private native nativeDestroy(J)I
.end method

.method private native nativeDisableVideo(J)I
.end method

.method private native nativeEnableLocalAudio(JZ)I
.end method

.method private native nativeEnableVideo(J)I
.end method

.method private native nativeGetCallId(J)Ljava/lang/String;
.end method

.method public static native nativeGetChatEngineVersion()Ljava/lang/String;
.end method

.method private native nativeGetConncetionState(J)I
.end method

.method public static native nativeGetErrorDescription(I)Ljava/lang/String;
.end method

.method private native nativeGetHandle(J)J
.end method

.method private native nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeGetOptionsByVideoProfile(JI)[B
.end method

.method private native nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetParameters(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetProfile(J)Ljava/lang/String;
.end method

.method public static native nativeGetSdkVersion()Ljava/lang/String;
.end method

.method private native nativeGetUserInfoByUid(JILjava/lang/Object;)I
.end method

.method private native nativeGetUserInfoByUserAccount(JLjava/lang/String;Ljava/lang/Object;)I
.end method

.method private native nativeIsSpeakerphoneEnabled(J)Z
.end method

.method private native nativeJoinChannel(J[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeJoinChannelWithUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeLeaveChannel(J)I
.end method

.method static native nativeLog(ILjava/lang/String;)I
.end method

.method private native nativeMakeQualityReportUrl(JLjava/lang/String;III)Ljava/lang/String;
.end method

.method private native nativeMuteAllRemoteVideoStreams(JZ)I
.end method

.method private native nativeMuteLocalVideoStream(JZ)I
.end method

.method private native nativeObjectInit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativePullAudioFrame(J[BI)I
.end method

.method private native nativePushExternalAudioFrameRawData(J[BJII)I
.end method

.method private native nativeRate(JLjava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativeRegisterAudioFrameObserver(JLjava/lang/Object;)I
.end method

.method private native nativeRegisterLocalUserAccount(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeRegisterMediaMetadataObserver(JLjava/lang/Object;I)I
.end method

.method private native nativeRemoveInjectStreamUrl(JLjava/lang/String;)I
.end method

.method private native nativeRemovePublishStreamUrl(JLjava/lang/String;)I
.end method

.method private native nativeRemoveVideoReceiveTrack(JI)I
.end method

.method private native nativeRenewChannelKey(JLjava/lang/String;)I
.end method

.method private native nativeRenewToken(JLjava/lang/String;)I
.end method

.method private native nativeSendStreamMessage(JI[B)I
.end method

.method private native nativeSetApiCallMode(JI)I
.end method

.method private native nativeSetAppType(JI)I
.end method

.method private native nativeSetAudioProfile(JII)I
.end method

.method private native nativeSetBeautyEffectOptions(JZIFFF)I
.end method

.method private native nativeSetChannelProfile(JI)I
.end method

.method private native nativeSetDefaultAudioRoutetoSpeakerphone(JZ)I
.end method

.method private native nativeSetEGL10Context(JLjavax/microedition/khronos/egl/EGLContext;)I
.end method

.method private native nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I
.end method

.method private native nativeSetEGL14Context(JLandroid/opengl/EGLContext;)I
.end method

.method private native nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I
.end method

.method private native nativeSetEnableSpeakerphone(JZ)I
.end method

.method private native nativeSetEncryptionSecret(JLjava/lang/String;)I
.end method

.method private native nativeSetLiveTranscoding(J[B)I
.end method

.method private native nativeSetParameters(JLjava/lang/String;)I
.end method

.method private native nativeSetProfile(JLjava/lang/String;Z)I
.end method

.method private native nativeSetRemoteUserPriority(JII)I
.end method

.method private native nativeSetVideoEncoderConfiguration(JIIIIIIII)I
.end method

.method private native nativeSetVideoProfileEx(JIIII)I
.end method

.method private native nativeSetupVideoLocal(JLandroid/view/SurfaceView;I)I
.end method

.method private native nativeSetupVideoRemote(JLandroid/view/SurfaceView;II)I
.end method

.method private native nativeStartChannelMediaRelay(J[B)I
.end method

.method private native nativeStartDumpVideoReceiveTrack(JI)I
.end method

.method private native nativeStartEchoTest(J[B)I
.end method

.method private native nativeStartEchoTestWithInterval(J[BI)I
.end method

.method private native nativeStartLastmileProbeTest(J[BZZII)I
.end method

.method private native nativeStartPreview(J)I
.end method

.method private native nativeStopChannelMediaRelay(J)I
.end method

.method private native nativeStopDumpVideoReceiveTrack(J)I
.end method

.method private native nativeStopEchoTest(J)I
.end method

.method private native nativeStopLastmileProbeTest(J)I
.end method

.method private native nativeSwitchCamera(J)I
.end method

.method private native nativeSwitchCameraByDirection(JI)I
.end method

.method private native nativeSwitchChannel(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeUpdateChannelMediaRelay(J[B)I
.end method

.method private onApiCallExecuted([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2

    .line 1667
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;-><init>()V

    .line 1668
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->unmarshall([B)V

    .line 1669
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->error:I

    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->api:Ljava/lang/String;

    iget-object v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->result:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onApiCallExecuted(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onCameraExposureAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 4

    .line 1685
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;-><init>()V

    .line 1686
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->unmarshall([B)V

    .line 1687
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->x:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->y:I

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->width:I

    add-int/2addr v3, v1

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->height:I

    add-int/2addr v0, v2

    invoke-direct {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onCameraExposureAreaChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method private onCameraFocusAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 4

    .line 1679
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;-><init>()V

    .line 1680
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->unmarshall([B)V

    .line 1681
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->x:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->y:I

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->width:I

    add-int/2addr v3, v1

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->height:I

    add-int/2addr v0, v2

    invoke-direct {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onCameraFocusAreaChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method private onChannelMediaRelayEvent([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1779
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;-><init>()V

    .line 1780
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;->unmarshall([B)V

    .line 1781
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;->code:I

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onChannelMediaRelayEvent(I)V

    return-void
.end method

.method private onChannelMediaRelayStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1773
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;-><init>()V

    .line 1774
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->unmarshall([B)V

    .line 1775
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->state:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->code:I

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onChannelMediaRelayStateChanged(II)V

    return-void
.end method

.method private onFirstLocalAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1761
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;-><init>()V

    .line 1762
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;->unmarshall([B)V

    .line 1763
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;->elapsed:I

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstLocalAudioFrame(I)V

    return-void
.end method

.method private onFirstLocalVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2

    .line 1721
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;-><init>()V

    .line 1722
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->unmarshall([B)V

    .line 1723
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->width:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->elapsed:I

    invoke-virtual {p2, p1, v1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstLocalVideoFrame(III)V

    return-void
.end method

.method private onFirstRemoteAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1767
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;-><init>()V

    .line 1768
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;->unmarshall([B)V

    .line 1769
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;->uid:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;->elapsed:I

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioFrame(II)V

    return-void
.end method

.method private onFirstRemoteVideoDecoded([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3

    .line 1673
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;-><init>()V

    .line 1674
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->unmarshall([B)V

    .line 1675
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->width:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteVideoDecoded(IIII)V

    return-void
.end method

.method private onFirstRemoteVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3

    .line 1755
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;-><init>()V

    .line 1756
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->unmarshall([B)V

    .line 1757
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->width:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteVideoFrame(IIII)V

    return-void
.end method

.method private onLocalAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1743
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;-><init>()V

    .line 1744
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;->unmarshall([B)V

    .line 1745
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalAudioStats;

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalAudioStats(Lio/agora/rtc/IRtcEngineEventHandler$LocalAudioStats;)V

    return-void
.end method

.method private onLocalVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1749
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;-><init>()V

    .line 1750
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->unmarshall([B)V

    .line 1751
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;)V

    return-void
.end method

.method private onLogEvent(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private onRemoteAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1735
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;-><init>()V

    .line 1736
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->unmarshall([B)V

    .line 1737
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->uid:I

    if-nez v0, :cond_0

    return-void

    .line 1739
    :cond_0
    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteAudioStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;)V

    return-void
.end method

.method private onRemoteAudioStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3

    .line 1697
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;-><init>()V

    .line 1698
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->unmarshall([B)V

    .line 1699
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->state:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->reason:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteAudioStateChanged(IIII)V

    return-void
.end method

.method private onRemoteVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 1727
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;-><init>()V

    .line 1728
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->unmarshall([B)V

    .line 1729
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;

    iget v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->uid:I

    if-nez v0, :cond_0

    return-void

    .line 1731
    :cond_0
    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V

    return-void
.end method

.method private onRemoteVideoStateChangedExt([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3

    .line 1703
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;-><init>()V

    .line 1704
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->unmarshall([B)V

    .line 1705
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->state:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->reason:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteVideoStateChanged(IIII)V

    return-void
.end method

.method private onSpeakersReport([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1787
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;-><init>()V

    .line 1788
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->unmarshall([B)V

    .line 1789
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    if-ltz v2, :cond_2

    .line 1790
    array-length p1, p1

    new-array p1, p1, [Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    .line 1791
    :goto_0
    iget-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1792
    new-instance v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    invoke-direct {v2}, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;-><init>()V

    aput-object v2, p1, v1

    .line 1793
    aget-object v2, p1, v1

    iget-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    aget-object v4, v3, v1

    iget v4, v4, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;->uid:I

    iput v4, v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    .line 1794
    aget-object v2, p1, v1

    aget-object v4, v3, v1

    iget v4, v4, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;->volume:I

    iput v4, v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->volume:I

    .line 1795
    aget-object v2, p1, v1

    aget-object v3, v3, v1

    iget v3, v3, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;->vad:I

    iput v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->vad:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1797
    :cond_1
    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->mixVolume:I

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    goto :goto_1

    :cond_2
    new-array p1, v1, [Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    .line 1799
    invoke-virtual {p2, p1, v1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    :goto_1
    return-void
.end method

.method private onStreamMessage([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2

    .line 1709
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;-><init>()V

    .line 1710
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->unmarshall([B)V

    .line 1711
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->streamId:I

    iget-object v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->payload:[B

    invoke-virtual {p2, p1, v1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamMessage(II[B)V

    return-void
.end method

.method private onStreamMessageError([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 7

    .line 1715
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;-><init>()V

    .line 1716
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->unmarshall([B)V

    .line 1717
    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->uid:I

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->streamId:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->error:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->missed:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->cached:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamMessageError(IIIII)V

    return-void
.end method

.method private onVideoSizeChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3

    .line 1691
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;-><init>()V

    .line 1692
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->unmarshall([B)V

    .line 1693
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->width:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->rotation:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onVideoSizeChanged(IIII)V

    return-void
.end method

.method private static roundOrientation(II)I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x2d

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, p0, p1

    .line 557
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rsub-int v3, v2, 0x168

    .line 558
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/2addr p0, v1

    .line 562
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_2
    return p1
.end method

.method private sendLogEvent([B)V
    .locals 2

    .line 1805
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x0

    .line 1806
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->onLogEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setDeviceOrientation(I)V
    .locals 10

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->lastOrientationTs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    int-to-double v2, p1

    const-wide v4, 0x4056800000000000L    # 90.0

    .line 213
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x5a

    mul-long v2, v2, v4

    long-to-int v3, v2

    rem-int/lit16 v3, v3, 0x168

    sub-int v2, v3, p1

    .line 216
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x28

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v4, v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v3, :cond_4

    const/16 v4, 0xb4

    if-le p1, v4, :cond_4

    rsub-int p1, p1, 0x168

    if-ge p1, v7, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-ge p1, v6, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_1
    if-lez v2, :cond_7

    .line 228
    :try_start_0
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 229
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-ne v2, v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x5

    .line 241
    :goto_2
    iget p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mTotalRotation:I

    if-eqz p1, :cond_6

    .line 242
    invoke-direct {p0, v8, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->setVideoRotateCapturedFrames(II)I

    .line 244
    :cond_6
    iput v8, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mTotalRotation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v2, "RtcEngine"

    const-string v3, "Unable to get camera info, "

    .line 246
    invoke-static {v2, v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    :cond_7
    :goto_3
    iput-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->lastOrientationTs:J

    return-void
.end method

.method private native setExtVideoSource(JII)I
.end method

.method private setParameter(Ljava/lang/String;D)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2311
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%f}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2303
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;J)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2307
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"%s\":\"%s\"}"

    .line 2315
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;Z)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2299
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameterObject(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"%s\":%s}"

    .line 2319
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setVideoRotateCapturedFrames(II)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"degree\":%d,\"rotation\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.local.rotate_video"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private switchCamera(Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)I
    .locals 2

    .line 948
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 952
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-virtual {p1}, Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSwitchCameraByDirection(JI)I

    move-result p1

    return p1
.end method

.method private updateViewOrientation(I)V
    .locals 3

    .line 538
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientation:I

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->roundOrientation(II)I

    move-result p1

    .line 539
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 540
    iput p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientation:I

    .line 541
    iget p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientation:I

    .line 542
    div-int/lit8 v0, p1, 0x5a

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    add-int/lit16 p1, p1, 0xb4

    .line 543
    rem-int/lit16 p1, p1, 0x168

    .line 545
    :cond_0
    div-int/lit8 p1, p1, 0x5a

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "{\"uid\":%d,\"orientation\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "che.video.view_orientation"

    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInjectStreamUrl(Ljava/lang/String;Lio/agora/rtc/live/LiveInjectStreamConfig;)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1999
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;-><init>()V

    .line 2000
    invoke-virtual {v0, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;->marshall(Lio/agora/rtc/live/LiveInjectStreamConfig;)[B

    move-result-object p2

    .line 2001
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddInjectStreamUrl(JLjava/lang/String;[B)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public addPublishStreamUrl(Ljava/lang/String;Z)I
    .locals 2

    .line 1968
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddPublishStreamUrl(JLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public addVideoWatermark(Lio/agora/rtc/video/AgoraImage;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p1, Lio/agora/rtc/video/AgoraImage;->url:Ljava/lang/String;

    .line 350
    new-instance v1, Lio/agora/rtc/video/WatermarkOptions;

    invoke-direct {v1}, Lio/agora/rtc/video/WatermarkOptions;-><init>()V

    const/4 v2, 0x0

    .line 351
    iput-boolean v2, v1, Lio/agora/rtc/video/WatermarkOptions;->visibleInPreview:Z

    .line 352
    new-instance v2, Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v3, p1, Lio/agora/rtc/video/AgoraImage;->x:I

    iget v4, p1, Lio/agora/rtc/video/AgoraImage;->y:I

    iget v5, p1, Lio/agora/rtc/video/AgoraImage;->width:I

    iget p1, p1, Lio/agora/rtc/video/AgoraImage;->height:I

    invoke-direct {v2, v3, v4, v5, p1}, Lio/agora/rtc/video/WatermarkOptions$Rectangle;-><init>(IIII)V

    iput-object v2, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    .line 353
    iget-object p1, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iput-object p1, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 355
    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->addVideoWatermark(Ljava/lang/String;Lio/agora/rtc/video/WatermarkOptions;)I

    move-result p1

    return p1
.end method

.method public addVideoWatermark(Ljava/lang/String;Lio/agora/rtc/video/WatermarkOptions;)I
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, -0x2

    if-eqz v0, :cond_5

    .line 360
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "/assets/"

    .line 364
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    .line 365
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v3, v13, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v13, v3, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->getAssetsCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 371
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assets watermark, url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RtcEngine"

    invoke-static {v3, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v3, v0

    .line 374
    iget-object v0, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 375
    iget v4, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 376
    iget v5, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 377
    iget v6, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 378
    iget v0, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    move v8, v0

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 380
    :goto_0
    iget-object v0, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    if-eqz v0, :cond_4

    .line 381
    iget v2, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 382
    iget v4, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 383
    iget v9, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 384
    iget v0, v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    move v12, v0

    move v10, v4

    move v11, v9

    move v9, v2

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 386
    :goto_1
    iget-wide v14, v13, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-boolean v4, v1, Lio/agora/rtc/video/WatermarkOptions;->visibleInPreview:Z

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct/range {v0 .. v12}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddVideoWatermark(JLjava/lang/String;ZIIIIIIII)I

    move-result v0

    return v0

    :cond_5
    :goto_2
    return v2
.end method

.method public adjustAudioMixingPlayoutVolume(I)I
    .locals 1

    const-string v0, "che.audio.set_file_as_playout_volume"

    .line 1088
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public adjustAudioMixingPublishVolume(I)I
    .locals 1

    const-string v0, "che.audio.set_file_as_playout_publish_volume"

    .line 1092
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public adjustAudioMixingVolume(I)I
    .locals 1

    .line 1080
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->adjustAudioMixingPlayoutVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->adjustAudioMixingPublishVolume(I)I

    :cond_0
    return v0
.end method

.method public adjustPlaybackSignalVolume(I)I
    .locals 1

    const/16 v0, 0x190

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x190

    :cond_1
    :goto_0
    const-string v0, "che.audio.playout.signal.volume"

    .line 814
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public adjustRecordingSignalVolume(I)I
    .locals 1

    const/16 v0, 0x190

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x190

    :cond_1
    :goto_0
    const-string v0, "che.audio.record.signal.volume"

    .line 806
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public clearVideoWatermarks()I
    .locals 2

    .line 392
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeClearVideoWatermarks(J)I

    move-result v0

    return v0
.end method

.method public complain(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1215
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeComplain(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public createDataStream(ZZ)I
    .locals 2

    .line 1839
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeCreateDataStream(JZZ)I

    move-result p1

    return p1
.end method

.method public disableAudio()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 685
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "{\"rtc.audio.enabled\":%b, \"che.audio.enable.recording.device\":%b}"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableLastmileTest()I
    .locals 2

    const-string v0, "rtc.lastmile_test"

    const/4 v1, 0x0

    .line 620
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public disableVideo()I
    .locals 2

    const/4 v0, 0x0

    .line 647
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    .line 648
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDisableVideo(J)I

    move-result v0

    return v0
.end method

.method public doDestroy()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p0, v0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setExternalVideoSource(ZZZ)V

    .line 189
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->doStopMonitorSystemEvent()V

    .line 191
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDestroy(J)I

    const-wide/16 v0, 0x0

    .line 192
    iput-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    return-void
.end method

.method public enableAudio()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 674
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object v2, v0, v1

    const-string v1, "{\"rtc.audio.enabled\":%b, \"che.audio.enable.recording.device\":%b}"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableAudioQualityIndication(Z)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rtc.audio_quality_indication"

    .line 869
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableAudioVolumeIndication(IIZ)I
    .locals 6

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "{\"interval\":%d,\"smooth\":%d,\"vad\":%d}"

    const-string v4, "che.audio.volume_indication"

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    new-array p3, v2, [Ljava/lang/Object;

    .line 859
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {v3, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    new-array p3, v2, [Ljava/lang/Object;

    .line 861
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {v3, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableDualStreamMode(Z)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 397
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.dual_stream_mode\":%b,\"che.video.enableLowBitRateStream\":%d}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableHighPerfWifiMode(Z)Z
    .locals 3

    .line 413
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string p1, "android.permission.WAKE_LOCK"

    .line 417
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 419
    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return v1

    .line 422
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez p1, :cond_3

    const-string p1, "wifi"

    .line 423
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x3

    const-string v1, "agora.voip.lock"

    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_0

    .line 427
    :cond_2
    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public enableInEarMonitoring(Z)I
    .locals 1

    const-string v0, "che.audio.headset.monitoring"

    .line 839
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableLastmileTest()I
    .locals 2

    const-string v0, "rtc.lastmile_test"

    const/4 v1, 0x1

    .line 615
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public enableLocalAudio(Z)I
    .locals 2

    .line 679
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeEnableLocalAudio(JZ)I

    move-result p1

    return p1
.end method

.method public enableLocalVideo(Z)I
    .locals 3

    .line 653
    iput-boolean p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 654
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.video.capture\":%b,\"che.video.local.capture\":%b,\"che.video.local.render\":%b,\"che.video.local.send\":%b}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableRecap(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "che.audio.recap.interval"

    .line 887
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public enableRemoteVideo(ZI)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1026
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    int-to-long p1, p2

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"enable\":%b, \"uid\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.peer.receive"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableSoundPositionIndication(Z)I
    .locals 1

    const-string v0, "che.audio.enable_sound_position"

    .line 2152
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableTransportQualityIndication(Z)I
    .locals 1

    const-string v0, "rtc.transport_quality_indication"

    .line 875
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableVideo()I
    .locals 2

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    .line 642
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeEnableVideo(J)I

    move-result v0

    return v0
.end method

.method public enableWebSdkInteroperability(Z)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 843
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.video.web_h264_interop_enable\":%b,\"che.video.web_h264_interop_enable\":%b}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public finalize()V
    .locals 5

    .line 2289
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2290
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDestroy(J)I

    :cond_0
    return-void
.end method

.method protected getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "activity"

    .line 1820
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    return-object p1
.end method

.method public getAudioEffectManager()Lio/agora/rtc/IAudioEffectManager;
    .locals 0

    return-object p0
.end method

.method protected getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "audio"

    .line 1814
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    return-object p1
.end method

.method public getAudioMixingCurrentPosition()I
    .locals 4

    .line 1111
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_mixing_file_played_ms"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioMixingDuration()I
    .locals 4

    .line 1107
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_mixing_file_length_ms"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioMixingPlayoutVolume()I
    .locals 4

    .line 1097
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_file_as_playout_volume"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioMixingPublishVolume()I
    .locals 4

    .line 1102
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_file_as_playout_publish_volume"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 1205
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetCallId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraMaxZoomFactor()F
    .locals 4

    .line 992
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.get_max_zoom"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 996
    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0
.end method

.method public getConnectionState()I
    .locals 2

    .line 2284
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetConncetionState(J)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 184
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getEffectsVolume()D
    .locals 5

    .line 2198
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.game_get_effects_volume"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 2067
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetHandle(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1195
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1190
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameters(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProfile()Ljava/lang/String;
    .locals 2

    .line 1176
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetProfile(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;
    .locals 1

    .line 433
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    invoke-direct {v0}, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    .line 435
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    return-object v0
.end method

.method public getUserInfoByUid(ILio/agora/rtc/models/UserInfo;)I
    .locals 2

    .line 779
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetUserInfoByUid(JILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getUserInfoByUserAccount(Ljava/lang/String;Lio/agora/rtc/models/UserInfo;)I
    .locals 2

    .line 774
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetUserInfoByUserAccount(JLjava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected handleEvent(I[BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x44d

    if-eq p1, v0, :cond_11

    const/16 v0, 0x44e

    if-eq p1, v0, :cond_10

    const/16 v0, 0x36c3

    if-eq p1, v0, :cond_f

    const/16 v0, 0x36c4

    if-eq p1, v0, :cond_e

    const-string v0, "che.audio.restart"

    const-string v1, "che.audio.opensl"

    const-string v2, " restart ADM"

    const-string v3, "ADM Error code "

    const-string v4, "2"

    const-string v5, "che.audio.adm.active"

    const-string v6, "RtcEngine"

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    goto/16 :goto_1

    .line 1538
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstLocalVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1565
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1562
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onLocalVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1541
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstRemoteVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1524
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onSpeakersReport([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1518
    :pswitch_5
    check-cast p3, Lio/agora/rtc/IRtcEngineEventHandlerEx;

    invoke-virtual {p3, p2}, Lio/agora/rtc/IRtcEngineEventHandlerEx;->onRecap([B)V

    goto/16 :goto_1

    .line 1472
    :pswitch_6
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;-><init>()V

    .line 1473
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->unmarshall([B)V

    .line 1474
    new-instance p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;

    invoke-direct {p2}, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;-><init>()V

    .line 1476
    iget-short v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->state:S

    iput-short v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->state:S

    .line 1477
    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->rtt:I

    iput v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->rtt:I

    .line 1478
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->uplinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->uplinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    iput v2, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    .line 1479
    iget v2, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    iput v2, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    .line 1480
    iget v1, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    .line 1481
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->downlinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->downlinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    .line 1482
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    .line 1483
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    iput p1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    .line 1485
    invoke-virtual {p3, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onLastmileProbeResult(Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;)V

    goto/16 :goto_1

    .line 1513
    :pswitch_7
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1514
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1515
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserEnableLocalVideo(IZ)V

    goto/16 :goto_1

    .line 1603
    :pswitch_8
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;-><init>()V

    .line 1604
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;->unmarshall([B)V

    .line 1605
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;->soundId:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioEffectFinished(I)V

    goto/16 :goto_1

    .line 1467
    :pswitch_9
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;-><init>()V

    .line 1468
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;->unmarshall([B)V

    .line 1469
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;->quality:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLastmileQuality(I)V

    goto/16 :goto_1

    .line 1508
    :pswitch_a
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1509
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1510
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserEnableVideo(IZ)V

    goto/16 :goto_1

    .line 1503
    :pswitch_b
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1504
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1505
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserMuteVideo(IZ)V

    goto/16 :goto_1

    .line 1498
    :pswitch_c
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1499
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1500
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserMuteAudio(IZ)V

    goto/16 :goto_1

    .line 1488
    :pswitch_d
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;-><init>()V

    .line 1489
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->unmarshall([B)V

    .line 1490
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->elapsed:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserJoined(II)V

    goto/16 :goto_1

    .line 1493
    :pswitch_e
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;-><init>()V

    .line 1494
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->unmarshall([B)V

    .line 1495
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->reason:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserOffline(II)V

    goto/16 :goto_1

    .line 1462
    :pswitch_f
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;-><init>()V

    .line 1463
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->unmarshall([B)V

    .line 1464
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->txQuality:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->rxQuality:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkQuality(III)V

    goto/16 :goto_1

    .line 1453
    :pswitch_10
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1455
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 1456
    :cond_1
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;-><init>()V

    .line 1457
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->unmarshall([B)V

    .line 1458
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V

    .line 1459
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    goto/16 :goto_1

    .line 1367
    :pswitch_11
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;-><init>()V

    .line 1368
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->unmarshall([B)V

    .line 1369
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->url:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->error:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRtmpStreamingStateChanged(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1614
    :pswitch_12
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;-><init>()V

    .line 1615
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;->unmarshall([B)V

    .line 1616
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;->localVideoState:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;->error:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalVideoStateChanged(II)V

    goto/16 :goto_1

    .line 1390
    :pswitch_13
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;-><init>()V

    .line 1391
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;->unmarshall([B)V

    .line 1392
    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;->token:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onTokenPrivilegeWillExpire(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1385
    :pswitch_14
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;-><init>()V

    .line 1386
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->unmarshall([B)V

    .line 1387
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->url:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->status:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamInjectedStatus(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1382
    :pswitch_15
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onTranscodingUpdated()V

    goto/16 :goto_1

    .line 1377
    :pswitch_16
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;-><init>()V

    .line 1378
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;->unmarshall([B)V

    .line 1379
    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;->url:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamUnpublished(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1372
    :pswitch_17
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;-><init>()V

    .line 1373
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;->unmarshall([B)V

    .line 1374
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;->url:Ljava/lang/String;

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;->error:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamPublished(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1362
    :pswitch_18
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;-><init>()V

    .line 1363
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->unmarshall([B)V

    .line 1364
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->oldRole:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->newRole:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onClientRoleChanged(II)V

    goto/16 :goto_1

    .line 1359
    :pswitch_19
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onRequestToken()V

    goto/16 :goto_1

    .line 1428
    :pswitch_1a
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onVideoStopped()V

    goto/16 :goto_1

    .line 1340
    :pswitch_1b
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onMediaEngineStartCallSuccess()V

    goto/16 :goto_1

    .line 1356
    :pswitch_1c
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onCameraReady()V

    goto/16 :goto_1

    .line 1619
    :sswitch_0
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;-><init>()V

    .line 1620
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;->unmarshall([B)V

    .line 1621
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;->error:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalAudioStateChanged(II)V

    goto/16 :goto_1

    .line 1568
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onLocalAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1556
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteAudioStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1611
    :sswitch_3
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onChannelMediaRelayEvent([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1608
    :sswitch_4
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onChannelMediaRelayStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1559
    :sswitch_5
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteVideoStateChangedExt([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1654
    :sswitch_6
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;-><init>()V

    .line 1655
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->unmarshall([B)V

    .line 1656
    new-instance p2, Lio/agora/rtc/models/UserInfo;

    invoke-direct {p2}, Lio/agora/rtc/models/UserInfo;-><init>()V

    .line 1657
    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->uid:I

    iput v0, p2, Lio/agora/rtc/models/UserInfo;->uid:I

    .line 1658
    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->userAccount:Ljava/lang/String;

    iput-object p1, p2, Lio/agora/rtc/models/UserInfo;->userAccount:Ljava/lang/String;

    .line 1659
    invoke-virtual {p3, v0, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserInfoUpdated(ILio/agora/rtc/models/UserInfo;)V

    goto/16 :goto_1

    .line 1649
    :sswitch_7
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;-><init>()V

    .line 1650
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->unmarshall([B)V

    .line 1651
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->uid:I

    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->userAccount:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalUserRegistered(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1624
    :sswitch_8
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;-><init>()V

    .line 1625
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;->unmarshall([B)V

    .line 1626
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;->elapsed:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioDecoded(II)V

    goto/16 :goto_1

    .line 1629
    :sswitch_9
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;-><init>()V

    .line 1630
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;->unmarshall([B)V

    .line 1631
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;->routing:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioRouteChanged(I)V

    goto/16 :goto_1

    .line 1644
    :sswitch_a
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;-><init>()V

    .line 1645
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;->unmarshall([B)V

    .line 1646
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;->type:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkTypeChanged(I)V

    goto/16 :goto_1

    .line 1571
    :sswitch_b
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1550
    :sswitch_c
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onCameraExposureAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1580
    :sswitch_d
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;-><init>()V

    .line 1581
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->unmarshall([B)V

    .line 1582
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->reason:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionStateChanged(II)V

    goto/16 :goto_1

    .line 1634
    :sswitch_e
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;-><init>()V

    .line 1635
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->unmarshall([B)V

    .line 1636
    iget-boolean p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->isAudio:Z

    if-eqz p2, :cond_2

    .line 1637
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->delay:I

    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->lost:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->rxKBitRate:I

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteAudioTransportStats(IIII)V

    goto/16 :goto_1

    .line 1640
    :cond_2
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->delay:I

    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->lost:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->rxKBitRate:I

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteVideoTransportStats(IIII)V

    goto/16 :goto_1

    .line 1596
    :sswitch_f
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1597
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1598
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteSubscribeFallbackToAudioOnly(IZ)V

    goto/16 :goto_1

    .line 1591
    :sswitch_10
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;-><init>()V

    .line 1592
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;->unmarshall([B)V

    .line 1593
    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;->state:Z

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalPublishFallbackToAudioOnly(Z)V

    goto/16 :goto_1

    .line 1527
    :sswitch_11
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;-><init>()V

    .line 1528
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;->unmarshall([B)V

    .line 1529
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;->uid:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onActiveSpeaker(I)V

    goto/16 :goto_1

    .line 1535
    :sswitch_12
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstRemoteAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1532
    :sswitch_13
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstLocalAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1553
    :sswitch_14
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onVideoSizeChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1588
    :sswitch_15
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onStreamMessageError([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1577
    :sswitch_16
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionInterrupted()V

    goto/16 :goto_1

    .line 1585
    :sswitch_17
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onStreamMessage([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1574
    :sswitch_18
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionLost()V

    goto/16 :goto_1

    .line 1544
    :sswitch_19
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstRemoteVideoDecoded([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1447
    :sswitch_1a
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;-><init>()V

    .line 1448
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->unmarshall([B)V

    .line 1449
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V

    .line 1450
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    goto/16 :goto_1

    .line 1347
    :sswitch_1b
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;-><init>()V

    .line 1348
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->unmarshall([B)V

    .line 1349
    iget-boolean p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->firstSuccess:Z

    if-eqz p2, :cond_3

    .line 1350
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->channel:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->elapsed:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onJoinChannelSuccess(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1352
    :cond_3
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->channel:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->elapsed:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRejoinChannelSuccess(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1343
    :sswitch_1c
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$MediaResSetupTime;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$MediaResSetupTime;-><init>()V

    .line 1344
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$MediaResSetupTime;->unmarshall([B)V

    goto/16 :goto_1

    .line 1444
    :sswitch_1d
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onApiCallExecuted([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1397
    :sswitch_1e
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;-><init>()V

    .line 1398
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->unmarshall([B)V

    .line 1399
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    const/16 v0, 0xa

    if-eq p2, v0, :cond_8

    const/16 v0, 0xe

    if-eq p2, v0, :cond_7

    const/16 v0, 0xf

    if-eq p2, v0, :cond_6

    packed-switch p2, :pswitch_data_7

    const/16 v0, 0x2bd

    if-lt p2, v0, :cond_13

    const/16 v1, 0x2c9

    if-gt p2, v1, :cond_13

    if-lt p2, v0, :cond_4

    const/16 v0, 0x2bf

    if-gt p2, v0, :cond_4

    const/16 p1, 0x2ca

    .line 1417
    invoke-virtual {p3, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioMixingStateChanged(II)V

    goto/16 :goto_1

    .line 1418
    :cond_4
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    const/16 p2, 0x2c8

    if-eq p1, p2, :cond_5

    .line 1419
    invoke-virtual {p3, p1, v7}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioMixingStateChanged(II)V

    goto/16 :goto_1

    :cond_5
    const-string p1, "AudioMixing restart"

    .line 1421
    invoke-static {v6, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1412
    :cond_6
    invoke-virtual {p3, v7}, Lio/agora/rtc/IRtcEngineEventHandler;->onMicrophoneEnabled(Z)V

    goto/16 :goto_1

    :cond_7
    const/4 p1, 0x1

    .line 1409
    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onMicrophoneEnabled(Z)V

    goto/16 :goto_1

    .line 1401
    :cond_8
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioMixingFinished()V

    goto/16 :goto_1

    .line 1394
    :goto_0
    :sswitch_1f
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onMediaEngineLoadSuccess()V

    goto/16 :goto_1

    .line 1328
    :pswitch_1d
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PError;-><init>()V

    .line 1329
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PError;->unmarshall([B)V

    .line 1330
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x3fb

    if-eq p2, v8, :cond_9

    const/16 v8, 0x41c

    if-ne p2, v8, :cond_a

    :cond_9
    invoke-virtual {p0, v5}, Lio/agora/rtc/internal/RtcEngineImpl;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0, v1, v7}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    .line 1334
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    .line 1336
    :cond_a
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onWarning(I)V

    goto/16 :goto_1

    .line 1316
    :pswitch_1e
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PError;-><init>()V

    .line 1317
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PError;->unmarshall([B)V

    .line 1318
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x47f

    if-lt p2, v8, :cond_b

    const/16 v8, 0x48c

    if-le p2, v8, :cond_c

    :cond_b
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x3e9

    if-lt p2, v8, :cond_d

    const/16 v8, 0x409

    if-ge p2, v8, :cond_d

    invoke-virtual {p0, v5}, Lio/agora/rtc/internal/RtcEngineImpl;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1319
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    invoke-direct {p0, v1, v7}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    .line 1322
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    .line 1324
    :cond_d
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onError(I)V

    goto :goto_1

    .line 1313
    :pswitch_1f
    invoke-direct {p0, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->sendLogEvent([B)V

    goto :goto_1

    .line 1547
    :cond_e
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onCameraFocusAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto :goto_1

    .line 1521
    :cond_f
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionBanned()V

    goto :goto_1

    .line 1439
    :cond_10
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;-><init>()V

    .line 1440
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->unmarshall([B)V

    .line 1441
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->quality:I

    iget-short v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->delay:S

    iget-short p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->lost:S

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioQuality(IISS)V

    goto :goto_1

    .line 1431
    :cond_11
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;-><init>()V

    .line 1432
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->unmarshall([B)V

    .line 1433
    iget-boolean p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->isAudio:Z

    if-eqz p2, :cond_12

    .line 1434
    check-cast p3, Lio/agora/rtc/IRtcEngineEventHandlerEx;

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->bitrate:I

    iget-short v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->delay:S

    iget-short p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->lost:S

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandlerEx;->onAudioTransportQuality(IISS)V

    goto :goto_1

    .line 1436
    :cond_12
    check-cast p3, Lio/agora/rtc/IRtcEngineEventHandlerEx;

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->bitrate:I

    iget-short v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->delay:S

    iget-short p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->lost:S

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandlerEx;->onVideoTransportQuality(IISS)V

    :cond_13
    :goto_1
    :pswitch_20
    :sswitch_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_1f
        0x450 -> :sswitch_1e
        0x452 -> :sswitch_1d
        0x2711 -> :sswitch_1c
        0x32c9 -> :sswitch_1b
        0x32d2 -> :sswitch_1a
        0x36b7 -> :sswitch_19
        0x36b8 -> :sswitch_18
        0x36b9 -> :sswitch_17
        0x36ba -> :sswitch_16
        0x36bb -> :sswitch_20
        0x36bc -> :sswitch_15
        0x36bd -> :sswitch_14
        0x36be -> :sswitch_13
        0x36bf -> :sswitch_12
        0x36c0 -> :sswitch_11
        0x36c6 -> :sswitch_10
        0x36c7 -> :sswitch_f
        0x36c8 -> :sswitch_e
        0x36cc -> :sswitch_d
        0x36cd -> :sswitch_c
        0x36ce -> :sswitch_b
        0x36cf -> :sswitch_a
        0x36d0 -> :sswitch_9
        0x36d1 -> :sswitch_8
        0x36d2 -> :sswitch_7
        0x36d3 -> :sswitch_6
        0x36d4 -> :sswitch_5
        0x36d5 -> :sswitch_4
        0x36d6 -> :sswitch_3
        0x36d8 -> :sswitch_2
        0x36d9 -> :sswitch_1
        0x36da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3ed
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x454
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x32ce
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x32d5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x36b0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x14
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public isCameraAutoFocusFaceModeSupported()Z
    .locals 4

    .line 981
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.face_focus_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraExposurePositionSupported()Z
    .locals 4

    .line 975
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.exposure_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraFocusSupported()Z
    .locals 4

    .line 969
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.focus_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraTorchSupported()Z
    .locals 4

    .line 963
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.torch_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraZoomSupported()Z
    .locals 4

    .line 957
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.zoom_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneEnabled()Z
    .locals 2

    .line 797
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeIsSpeakerphoneEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isTextureEncodeSupported()Z
    .locals 1

    .line 1904
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11

    .line 497
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 501
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 503
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doCheckPermission(Landroid/content/Context;)I

    .line 505
    iget-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    if-nez v1, :cond_2

    .line 507
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v1, :cond_1

    .line 508
    new-instance v1, Lio/agora/rtc/internal/RtcEngineImpl$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lio/agora/rtc/internal/RtcEngineImpl$1;-><init>(Lio/agora/rtc/internal/RtcEngineImpl;Landroid/content/Context;I)V

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 522
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RtcEngine"

    const-string v2, "Unable to create OrientationEventListener, "

    .line 524
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    :cond_2
    :goto_0
    iget-wide v4, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-direct/range {v3 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeJoinChannel(J[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public joinChannelWithUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 769
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeJoinChannelWithUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public leaveChannel()I
    .locals 2

    .line 581
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->doStopMonitorSystemEvent()V

    .line 582
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeLeaveChannel(J)I

    move-result v0

    return v0
.end method

.method public makeQualityReportUrl(Ljava/lang/String;III)Ljava/lang/String;
    .locals 7

    .line 1200
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeMakeQualityReportUrl(JLjava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public monitorAudioRouteChange(Z)I
    .locals 2

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API call monitorAudioRouteChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public monitorBluetoothHeadsetEvent(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter monitorBluetoothHeadsetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtcEngine"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public monitorHeadsetEvent(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter monitorHeadsetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtcEngine"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public muteAllRemoteAudioStreams(Z)I
    .locals 1

    const-string v0, "rtc.audio.mute_peers"

    .line 710
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public muteAllRemoteVideoStreams(Z)I
    .locals 2

    .line 720
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeMuteAllRemoteVideoStreams(JZ)I

    move-result p1

    return p1
.end method

.method public muteLocalAudioStream(Z)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 700
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.audio.mute_me\":%b, \"che.audio.mute_me\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public muteLocalVideoStream(Z)I
    .locals 2

    .line 705
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeMuteLocalVideoStream(JZ)I

    move-result p1

    return p1
.end method

.method public muteRemoteAudioStream(IZ)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 743
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"rtc.audio.mute_peer\":{\"uid\":%d,\"mute\":%b}}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public muteRemoteVideoStream(IZ)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 748
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"rtc.video.mute_peer\":{\"uid\":%d,\"mute\":%b}}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onEvent(I[B)V
    .locals 2

    .line 1295
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1296
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/IRtcEngineEventHandler;

    if-nez v1, :cond_0

    .line 1299
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1302
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->handleEvent(I[BLio/agora/rtc/IRtcEngineEventHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtcEngine"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public pauseAllEffects()I
    .locals 2

    const-string v0, "che.audio.game_pause_all_effects"

    const/4 v1, 0x1

    .line 2260
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public pauseAudio()I
    .locals 2

    const-string v0, "rtc.audio.paused"

    const/4 v1, 0x1

    .line 690
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public pauseAudioMixing()I
    .locals 2

    const-string v0, "che.audio.pause_file_as_playout"

    const/4 v1, 0x1

    .line 1072
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public pauseEffect(I)I
    .locals 1

    const-string v0, "che.audio.game_pause_effect"

    .line 2255
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public playEffect(ILjava/lang/String;IDDD)I
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 2218
    invoke-virtual/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->playEffect(ILjava/lang/String;IDDDZ)I

    move-result v0

    return v0
.end method

.method public playEffect(ILjava/lang/String;IDDDZ)I
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 2227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "{\"soundId\":%d,\"filePath\":\"%s\",\"loopCount\":%d, \"pitch\":%f,\"pan\":%f,\"gain\":%f, \"send2far\":%d}"

    .line 2225
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_play_effect"

    .line 2224
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public playRecap()I
    .locals 2

    const-string v0, "che.audio.recap.start_play"

    const/4 v1, 0x1

    .line 880
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public preloadEffect(ILjava/lang/String;)I
    .locals 2

    .line 2242
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"soundId\":%d,\"filePath\":\"%s\"}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_preload_effect"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public pullPlaybackAudioFrame([BI)I
    .locals 2

    .line 1138
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativePullAudioFrame(J[BI)I

    move-result p1

    return p1
.end method

.method public pushExternalAudioFrame([BJ)I
    .locals 8

    .line 1154
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioSampleRate:I

    iget v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioChannels:I

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativePushExternalAudioFrameRawData(J[BJII)I

    move-result p1

    return p1
.end method

.method public pushExternalVideoFrame(Lio/agora/rtc/video/AgoraVideoFrame;)Z
    .locals 17

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    const/4 v15, 0x0

    if-eqz v0, :cond_8

    .line 1928
    iget v13, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    const/16 v1, 0xc

    if-ne v13, v1, :cond_0

    goto/16 :goto_1

    .line 1933
    :cond_0
    iget v1, v14, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v0, "pushExternalVideoFrame failed!! Call setExternalVideoSource to enable enable external video source!!"

    .line 1934
    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    return v15

    :cond_1
    const/16 v1, 0xa

    const/16 v16, 0x1

    if-eq v13, v1, :cond_4

    const/16 v1, 0xb

    if-ne v13, v1, :cond_2

    goto :goto_0

    :cond_2
    if-lez v13, :cond_7

    const/16 v1, 0x8

    if-gt v13, v1, :cond_7

    .line 1959
    iget-wide v1, v14, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->buf:[B

    iget v4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iget v5, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iget v6, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropLeft:I

    iget v7, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropTop:I

    iget v8, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropRight:I

    iget v9, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropBottom:I

    iget v10, v0, Lio/agora/rtc/video/AgoraVideoFrame;->rotation:I

    iget-wide v11, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v13}, Lio/agora/rtc/internal/RtcEngineImpl;->deliverFrame(J[BIIIIIIIJI)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v15, 0x1

    :cond_3
    return v15

    .line 1941
    :cond_4
    :goto_0
    iget-object v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext14:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_6

    .line 1942
    invoke-virtual {v14, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateSharedContext(Landroid/opengl/EGLContext;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1943
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    iget-object v2, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext14:Landroid/opengl/EGLContext;

    iget v3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    iget v4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iget v5, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iget-wide v6, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    iget-object v8, v0, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lio/agora/rtc/internal/RtcEngineImpl;->setTextureIdWithMatrix(ILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v15, 0x1

    :cond_5
    return v15

    .line 1949
    :cond_6
    iget-object v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_7

    .line 1950
    invoke-virtual {v14, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateSharedContext(Ljavax/microedition/khronos/egl/EGLContext;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1951
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    iget-object v2, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    iget v3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    iget v4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iget v5, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iget-wide v6, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    iget-object v8, v0, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lio/agora/rtc/internal/RtcEngineImpl;->setTextureIdWithMatrix(ILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    if-nez v0, :cond_7

    const/4 v15, 0x1

    :cond_7
    return v15

    :cond_8
    :goto_1
    const-string v0, "pushExternalVideoFrame failed!! invalid video frame."

    .line 1929
    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    return v15
.end method

.method public rate(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    .line 1210
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRate(JLjava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public registerAudioFrameObserver(Lio/agora/rtc/IAudioFrameObserver;)I
    .locals 2

    .line 1125
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRegisterAudioFrameObserver(JLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public registerLocalUserAccount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRegisterLocalUserAccount(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public registerMediaMetadataObserver(Lio/agora/rtc/IMetadataObserver;I)I
    .locals 2

    .line 2295
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRegisterMediaMetadataObserver(JLjava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public reinitialize(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V

    return-void
.end method

.method public removeHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeInjectStreamUrl(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    .line 2009
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRemoveInjectStreamUrl(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removePublishStreamUrl(Ljava/lang/String;)I
    .locals 2

    .line 1973
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRemovePublishStreamUrl(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removeRemoteVideoTrack(I)I
    .locals 2

    .line 2139
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRemoveVideoReceiveTrack(JI)I

    move-result p1

    return p1
.end method

.method public renewToken(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const-string v0, "rtc.renew_token"

    .line 755
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public resumeAllEffects()I
    .locals 2

    const-string v0, "che.audio.game_resume_all_effects"

    const/4 v1, 0x1

    .line 2270
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resumeAudio()I
    .locals 2

    const-string v0, "rtc.audio.paused"

    const/4 v1, 0x0

    .line 695
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resumeAudioMixing()I
    .locals 2

    const-string v0, "che.audio.pause_file_as_playout"

    const/4 v1, 0x0

    .line 1076
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resumeEffect(I)I
    .locals 1

    const-string v0, "che.audio.game_resume_effect"

    .line 2265
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public sendStreamMessage(I[B)I
    .locals 2

    .line 1843
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSendStreamMessage(JI[B)I

    move-result p1

    return p1
.end method

.method public setApiCallMode(I)I
    .locals 2

    .line 2279
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetApiCallMode(JI)I

    move-result p1

    return p1
.end method

.method public setAppType(I)I
    .locals 2

    .line 1181
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetAppType(JI)I

    move-result p1

    return p1
.end method

.method public setAudioMixingPosition(I)I
    .locals 1

    const-string v0, "che.audio.mixing.file.position"

    .line 1115
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setAudioProfile(II)I
    .locals 2

    .line 917
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetAudioProfile(JII)I

    move-result p1

    return p1
.end method

.method public setBeautyEffectOptions(ZLio/agora/rtc/video/BeautyOptions;)I
    .locals 8

    if-nez p2, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, -0x2

    return p1

    .line 734
    :cond_0
    new-instance p2, Lio/agora/rtc/video/BeautyOptions;

    invoke-direct {p2}, Lio/agora/rtc/video/BeautyOptions;-><init>()V

    .line 737
    :cond_1
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget v4, p2, Lio/agora/rtc/video/BeautyOptions;->lighteningContrastLevel:I

    iget v5, p2, Lio/agora/rtc/video/BeautyOptions;->lighteningLevel:F

    iget v6, p2, Lio/agora/rtc/video/BeautyOptions;->smoothnessLevel:F

    iget v7, p2, Lio/agora/rtc/video/BeautyOptions;->rednessLevel:F

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetBeautyEffectOptions(JZIFFF)I

    move-result p1

    return p1
.end method

.method public setCameraAutoFocusFaceModeEnabled(Z)I
    .locals 1

    const-string v0, "che.video.camera.face_detection"

    .line 1017
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setCameraCapturerConfiguration(Lio/agora/rtc/video/CameraCapturerConfiguration;)I
    .locals 2

    .line 1245
    iget-object v0, p1, Lio/agora/rtc/video/CameraCapturerConfiguration;->preference:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;

    invoke-virtual {v0}, Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;->getValue()I

    move-result v0

    const-string v1, "che.video.camera_capture_mode"

    invoke-direct {p0, v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    iget-object p1, p1, Lio/agora/rtc/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->switchCamera(Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setCameraExposurePosition(FF)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1007
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"x\":%f,\"y\":%f,\"preview\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.camera.exposure"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCameraFocusPositionInPreview(FF)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1002
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"x\":%f,\"y\":%f,\"preview\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.camera.focus"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCameraTorchOn(Z)I
    .locals 1

    const-string v0, "che.video.camera.flash"

    .line 1012
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setCameraZoomFactor(F)I
    .locals 2

    float-to-double v0, p1

    const-string p1, "che.video.camera.zoom"

    .line 987
    invoke-direct {p0, p1, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;D)I

    move-result p1

    return p1
.end method

.method public setChannelProfile(I)I
    .locals 2

    .line 1220
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetChannelProfile(JI)I

    move-result p1

    return p1
.end method

.method public setClientRole(I)I
    .locals 1

    .line 1225
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 1228
    :cond_0
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, -0x2

    return p1

    .line 1232
    :cond_1
    iput p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mClientRole:I

    const-string v0, "rtc.client_role"

    .line 1237
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_2
    const/16 p1, -0x9

    return p1
.end method

.method public setDefaultAudioRoutetoSpeakerphone(Z)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 785
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "API call to setDefaultAudioRoutetoSpeakerphone :%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;)V

    .line 786
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetDefaultAudioRoutetoSpeakerphone(JZ)I

    move-result p1

    return p1
.end method

.method public setDefaultMuteAllRemoteAudioStreams(Z)I
    .locals 1

    const-string v0, "rtc.audio.set_default_mute_peers"

    .line 715
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setDefaultMuteAllRemoteVideoStreams(Z)I
    .locals 1

    const-string v0, "rtc.video.set_default_mute_peers"

    .line 725
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setEffectsVolume(D)I
    .locals 1

    const-string v0, "che.audio.game_set_effects_volume"

    .line 2206
    invoke-direct {p0, v0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;D)I

    move-result p1

    return p1
.end method

.method public setEnableSpeakerphone(Z)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 791
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "API call to setEnableSpeakerphone to %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;)V

    .line 792
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEnableSpeakerphone(JZ)I

    move-result p1

    return p1
.end method

.method public setEncryptionMode(Ljava/lang/String;)I
    .locals 1

    const-string v0, "rtc.encryption.mode"

    .line 1278
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setEncryptionSecret(Ljava/lang/String;)I
    .locals 2

    .line 1285
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEncryptionSecret(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setExternalAudioSink(ZII)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "{\"che.audio.external_render\":%b,\"che.audio.external_render.pull\":%b,\"che.audio.set_render_raw_audio_format\":{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d}}"

    invoke-static {p1, v4}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    .line 1133
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "{\"che.audio.external_render\":%b,\"che.audio.external_render\":%b,\"che.audio.external_render.pull\":%b}"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setExternalAudioSource(ZII)I
    .locals 6

    .line 1144
    iput p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioSampleRate:I

    .line 1145
    iput p3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioChannels:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1147
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "{\"che.audio.external_capture\":%b,\"che.audio.external_capture.push\":%b,\"che.audio.set_capture_raw_audio_format\":{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d}}"

    invoke-static {p1, v4}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    .line 1149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "{\"che.audio.external_capture\":%b,\"che.audio.external_capture\":%b,\"che.audio.external_capture.push\":%b}"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setExternalVideoSource(ZZZ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 1911
    iput v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    goto :goto_0

    .line 1914
    :cond_0
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    :goto_0
    if-eqz p2, :cond_2

    const-string p2, "che.video.enable_external_texture_input"

    if-eqz p1, :cond_1

    .line 1918
    invoke-direct {p0, p2, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1920
    invoke-direct {p0, p2, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    const-string p2, "setExternalVideoSource: on Android, texture mode cannot be disabled once enabled."

    .line 1921
    invoke-static {p2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;)V

    .line 1924
    :cond_2
    :goto_1
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->setExtVideoSource(JII)I

    return-void
.end method

.method public setHighQualityAudioParameters(ZZZ)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 834
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"fullband\":%b,\"stereo\":%b,\"fullBitrate\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.codec.hq"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setInEarMonitoringVolume(I)I
    .locals 1

    const-string v0, "che.audio.headset.monitoring.parameter"

    .line 2193
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLiveTranscoding(Lio/agora/rtc/live/LiveTranscoding;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    .line 1982
    :cond_0
    invoke-virtual {p1}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1983
    invoke-virtual {p1}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;

    .line 1984
    iget v2, v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->width:I

    if-lez v2, :cond_1

    iget v1, v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->height:I

    if-lez v1, :cond_1

    goto :goto_0

    .line 1985
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "transcoding user\'s width and height must be >0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1989
    :cond_2
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;-><init>()V

    .line 1990
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshall(Lio/agora/rtc/live/LiveTranscoding;)[B

    move-result-object p1

    .line 1991
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetLiveTranscoding(J[B)I

    move-result p1

    return p1
.end method

.method public setLocalPublishFallbackOption(I)I
    .locals 1

    const-string v0, "rtc.local_publish_fallback_option"

    .line 1268
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLocalRenderMode(I)I
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setRemoteRenderMode(II)I

    move-result p1

    return p1
.end method

.method public setLocalVideoMirrorMode(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const-string p1, "disableMirror"

    goto :goto_0

    :cond_1
    const-string p1, "forceMirror"

    goto :goto_0

    :cond_2
    const-string p1, "default"

    :goto_0
    const-string v0, "che.video.localViewMirrorSetting"

    .line 312
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLocalVideoRenderer(Lio/agora/rtc/mediaio/IVideoSink;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2117
    :cond_0
    instance-of v0, p1, Lio/agora/rtc/mediaio/AgoraDefaultRender;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 2122
    :goto_0
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddLocalVideoRender(JLio/agora/rtc/mediaio/IVideoSink;I)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceChanger(I)I
    .locals 1

    const-string v0, "che.audio.morph.voice_changer"

    .line 2183
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceEqualization(II)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"index\":%d,\"gain\":%d}"

    .line 2169
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.morph.equalization"

    .line 2167
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLocalVoicePitch(D)I
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    const-string p2, "che.audio.morph.pitch_shift"

    .line 2162
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceReverb(II)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"key\":%d,\"value\":%d}"

    .line 2177
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.morph.reverb"

    .line 2175
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceReverbPreset(I)I
    .locals 1

    const-string v0, "che.audio.morph.reverb_preset"

    .line 2188
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLogFile(Ljava/lang/String;)I
    .locals 1

    const-string v0, "rtc.log_file"

    .line 1159
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLogFileSize(I)I
    .locals 1

    const-string v0, "rtc.log_size"

    .line 1167
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLogFilter(I)I
    .locals 1

    and-int/lit16 p1, p1, 0x80f

    const-string v0, "rtc.log_filter"

    .line 1163
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setMixedAudioFrameParameters(II)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 829
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"sampleRate\":%d,\"samplesPerCall\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.set_mixed_raw_audio_format"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 2

    .line 1186
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPlaybackAudioFrameParameters(IIII)I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 824
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d,\"samplesPerCall\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.set_render_raw_audio_format"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPreferHeadset(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProfile(Ljava/lang/String;Z)I
    .locals 2

    .line 1172
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetProfile(JLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setRecordingAudioFrameParameters(IIII)I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 819
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d,\"samplesPerCall\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.set_capture_raw_audio_format"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setRemoteDefaultVideoStreamType(I)I
    .locals 1

    const-string v0, "rtc.video.set_remote_default_video_stream_type"

    .line 1263
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setRemoteRenderMode(II)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 293
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"uid\":%d,\"mode\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.render_mode"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setRemoteSubscribeFallbackOption(I)I
    .locals 1

    const-string v0, "rtc.remote_subscribe_fallback_option"

    .line 1273
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setRemoteUserPriority(II)I
    .locals 2

    .line 1258
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetRemoteUserPriority(JII)I

    move-result p1

    return p1
.end method

.method public setRemoteVideoRenderer(ILio/agora/rtc/mediaio/IVideoSink;)I
    .locals 7

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 2130
    :cond_0
    instance-of v0, p2, Lio/agora/rtc/mediaio/AgoraDefaultRender;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v6, 0x2

    .line 2135
    :goto_0
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddRemoteVideoRender(JILio/agora/rtc/mediaio/IVideoSink;I)I

    move-result p1

    return p1
.end method

.method public setRemoteVideoStreamType(II)I
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1253
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"rtc.video.set_remote_video_stream\":{\"uid\":%d,\"stream\":%d},\"che.video.setstream\":{\"uid\":%d,\"stream\":%d}}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setRemoteVoicePosition(IDD)I
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 2157
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"uid\":%d,\"pan\":%f,\"gain\":%f}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_place_sound_position"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setTextureId(ILandroid/opengl/EGLContext;IIJ)I
    .locals 12

    move-object v11, p0

    .line 1875
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    const/16 v5, 0xb

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setTextureId(ILjavax/microedition/khronos/egl/EGLContext;IIJ)I
    .locals 12

    move-object v11, p0

    .line 1869
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    const/16 v5, 0xa

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setTextureIdWithMatrix(ILandroid/opengl/EGLContext;IIIJ[F)I
    .locals 12

    move-object v11, p0

    move-object/from16 v10, p8

    if-nez v10, :cond_0

    .line 1893
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    return v0

    .line 1897
    :cond_0
    array-length v0, v10

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    .line 1900
    :cond_1
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setTextureIdWithMatrix(ILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I
    .locals 12

    move-object v11, p0

    move-object/from16 v10, p8

    if-nez v10, :cond_0

    .line 1881
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    return v0

    .line 1885
    :cond_0
    array-length v0, v10

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    .line 1888
    :cond_1
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setVideoEncoderConfiguration(Lio/agora/rtc/video/VideoEncoderConfiguration;)I
    .locals 11

    .line 905
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v0, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    iget v3, v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->width:I

    iget v4, v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->height:I

    iget v5, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    iget v6, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    iget v7, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    iget v8, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    iget-object v0, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 908
    invoke-virtual {v0}, Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;->getValue()I

    move-result v9

    iget-object p1, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    invoke-virtual {p1}, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->getValue()I

    move-result v10

    move-object v0, p0

    .line 905
    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetVideoEncoderConfiguration(JIIIIIIII)I

    move-result p1

    return p1
.end method

.method public setVideoProfile(IIII)I
    .locals 7

    .line 900
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetVideoProfileEx(JIIII)I

    move-result p1

    return p1
.end method

.method public setVideoProfile(IZ)I
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 895
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "{\"rtc.video.profile\":[%d,%b]}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setVideoQualityParameters(Z)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 847
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.video.prefer_frame_rate\":%b,\"che.video.prefer_frame_rate\":%b}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setVideoSource(Lio/agora/rtc/mediaio/IVideoSource;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2104
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    goto :goto_0

    .line 2105
    :cond_0
    instance-of v0, p1, Lio/agora/rtc/mediaio/AgoraDefaultSource;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2106
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 2108
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    .line 2110
    :goto_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    invoke-direct {p0, v0, v1, p1, v2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddVideoCapturer(JLio/agora/rtc/mediaio/IVideoSource;I)I

    move-result p1

    return p1
.end method

.method public setVolumeOfEffect(ID)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"soundId\":%d,\"gain\":%f}"

    .line 2211
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_adjust_effect_volume"

    .line 2210
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setupLocalVideo(Lio/agora/rtc/video/VideoCanvas;)I
    .locals 4

    const-string v0, "setupLocalVideo"

    .line 269
    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkIfInUIThread(Ljava/lang/String;)Z

    .line 270
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 275
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    .line 277
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v0, p1, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/SurfaceView;

    iget p1, p1, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    invoke-direct {p0, v2, v3, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetupVideoLocal(JLandroid/view/SurfaceView;I)I

    goto :goto_0

    .line 279
    :cond_1
    iput-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    .line 280
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 p1, 0x0

    invoke-direct {p0, v2, v3, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetupVideoLocal(JLandroid/view/SurfaceView;I)I

    :goto_0
    return v1
.end method

.method public setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)I
    .locals 7

    const-string v0, "setupRemoteVideo"

    .line 259
    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkIfInUIThread(Ljava/lang/String;)Z

    if-eqz p1, :cond_0

    .line 261
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v4, p1, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/SurfaceView;

    iget v5, p1, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    iget v6, p1, Lio/agora/rtc/video/VideoCanvas;->uid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetupVideoRemote(JLandroid/view/SurfaceView;II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public startAudioMixing(Ljava/lang/String;ZZI)I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1063
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"filePath\":\"%s\", \"loopback\":%b, \"replace\":%b, \"cycle\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.start_file_as_playout"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startAudioRecording(Ljava/lang/String;I)I
    .locals 1

    const/16 v0, 0x7d00

    .line 1044
    invoke-virtual {p0, p1, v0, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->startAudioRecording(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public startAudioRecording(Ljava/lang/String;II)I
    .locals 2

    .line 1049
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 1053
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "{\"filePath\":\"%s\", \"sampleRate\":%d, \"quality\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.start_recording"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
    .locals 4

    const/4 v0, -0x2

    if-eqz p1, :cond_4

    .line 2015
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2016
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getSrcChannelMediaInfo()Lio/agora/rtc/video/ChannelMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2017
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 2021
    :cond_0
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2022
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v3, v3, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v2, v2, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v0

    .line 2026
    :cond_3
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;-><init>()V

    .line 2027
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;->marshall(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)[B

    move-result-object p1

    .line 2028
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartChannelMediaRelay(J[B)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public startDumpVideoReceiveTrack(I)I
    .locals 2

    .line 2057
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartDumpVideoReceiveTrack(JI)I

    move-result p1

    return p1
.end method

.method public startEchoTest()I
    .locals 3

    .line 587
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, -0x7

    return v0

    .line 591
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 593
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartEchoTest(J[B)I

    move-result v0

    return v0
.end method

.method public startEchoTest(I)I
    .locals 3

    .line 598
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 602
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 604
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartEchoTestWithInterval(J[BI)I

    move-result p1

    return p1
.end method

.method public startLastmileProbeTest(Lio/agora/rtc/internal/LastmileProbeConfig;)I
    .locals 8

    .line 625
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 629
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 631
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v3, 0x0

    iget-boolean v4, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->probeUplink:Z

    iget-boolean v5, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->probeDownlink:Z

    iget v6, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->expectedUplinkBitrate:I

    iget v7, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->expectedDownlinkBitrate:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartLastmileProbeTest(J[BZZII)I

    move-result p1

    return p1
.end method

.method public startPreview()I
    .locals 2

    .line 660
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x4

    return v0

    .line 663
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartPreview(J)I

    move-result v0

    return v0
.end method

.method public stopAllEffects()I
    .locals 2

    const-string v0, "che.audio.game_stop_all_effects"

    const/4 v1, 0x1

    .line 2237
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopAllRemoteVideo()I
    .locals 2

    const-string v0, "che.video.peer.stop_all_renders"

    const/4 v1, 0x1

    .line 1039
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopAudioMixing()I
    .locals 2

    const-string v0, "che.audio.stop_file_as_playout"

    const/4 v1, 0x1

    .line 1067
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopAudioRecording()I
    .locals 2

    const-string v0, "che.audio.stop_recording"

    const/4 v1, 0x1

    .line 1058
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopChannelMediaRelay()I
    .locals 2

    .line 2033
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopChannelMediaRelay(J)I

    move-result v0

    return v0
.end method

.method public stopDumpVideoReceiveTrack()I
    .locals 2

    .line 2062
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopDumpVideoReceiveTrack(J)I

    move-result v0

    return v0
.end method

.method public stopEchoTest()I
    .locals 2

    .line 610
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopEchoTest(J)I

    move-result v0

    return v0
.end method

.method public stopEffect(I)I
    .locals 1

    const-string v0, "che.audio.game_stop_effect"

    .line 2232
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public stopLastmileProbeTest()I
    .locals 2

    .line 636
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopLastmileProbeTest(J)I

    move-result v0

    return v0
.end method

.method public stopPreview()I
    .locals 2

    const-string v0, "rtc.video.preview"

    const/4 v1, 0x0

    .line 669
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopRemoteVideo(I)I
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-string p1, "che.video.peer.stop_video"

    .line 1031
    invoke-direct {p0, p1, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public switchCamera()I
    .locals 2

    .line 929
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 944
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSwitchCamera(J)I

    move-result v0

    return v0
.end method

.method public switchChannel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 533
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSwitchChannel(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public unloadEffect(I)I
    .locals 1

    const-string v0, "che.audio.game_unload_effect"

    .line 2250
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public updateChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
    .locals 4

    const/4 v0, -0x2

    if-eqz p1, :cond_4

    .line 2039
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2040
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getSrcChannelMediaInfo()Lio/agora/rtc/video/ChannelMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2041
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 2045
    :cond_0
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2046
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v3, v3, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v2, v2, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v0

    .line 2050
    :cond_3
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;-><init>()V

    .line 2051
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;->marshall(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)[B

    move-result-object p1

    .line 2052
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeUpdateChannelMediaRelay(J[B)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public declared-synchronized updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V
    .locals 5

    monitor-enter p0

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 441
    monitor-exit p0

    return-void

    .line 442
    :cond_0
    :try_start_1
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalDuration:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->totalDuration:I

    .line 443
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalTxBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txBytes:I

    .line 444
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalRxBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxBytes:I

    .line 446
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txAudioBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txAudioBytes:I

    .line 447
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txVideoBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txVideoBytes:I

    .line 448
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxAudioBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxAudioBytes:I

    .line 449
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxVideoBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxVideoBytes:I

    .line 451
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txKBitRate:I

    .line 452
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxKBitRate:I

    .line 453
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txAudioKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txAudioKBitRate:I

    .line 454
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxAudioKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxAudioKBitRate:I

    .line 456
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txVideoKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txVideoKBitRate:I

    .line 457
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxVideoKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxVideoKBitRate:I

    .line 458
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->lastmileDelay:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->lastmileDelay:I

    .line 459
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txPacketLossRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txPacketLossRate:I

    .line 460
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxPacketLossRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxPacketLossRate:I

    .line 461
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->users:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->users:I

    .line 462
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->cpuTotalUsage:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_2
    iput-wide v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->cpuTotalUsage:D

    .line 463
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->cpuAppUsage:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_3
    iput-wide v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->cpuAppUsage:D
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateSharedContext(Landroid/opengl/EGLContext;)I
    .locals 2

    .line 1857
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14Context(JLandroid/opengl/EGLContext;)I

    move-result p1

    return p1
.end method

.method public updateSharedContext(Ljavax/microedition/khronos/egl/EGLContext;)I
    .locals 2

    .line 1853
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10Context(JLjavax/microedition/khronos/egl/EGLContext;)I

    move-result p1

    return p1
.end method

.method public useExternalAudioDevice()I
    .locals 1

    const-string v0, "{\"che.audio.audioSampleRate\":32000, \"che.audio.external_device\":true}"

    .line 1119
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
