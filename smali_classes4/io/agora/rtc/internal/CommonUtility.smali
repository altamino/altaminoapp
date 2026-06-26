.class Lio/agora/rtc/internal/CommonUtility;
.super Ljava/lang/Object;
.source "CommonUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;,
        Lio/agora/rtc/internal/CommonUtility$MobileType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtility"

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

.field private mMobileType:I

.field private mOrientationObserver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

.field private mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 70
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 71
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    const/16 v0, 0xff

    .line 78
    iput v0, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    .line 118
    iput-wide p2, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    .line 121
    :try_start_0
    new-instance p2, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-direct {p2, p0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object p2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    const-string p2, "phone"

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 123
    iget-object p2, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    const/16 p3, 0x120

    invoke-virtual {p1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    sget-object p2, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string p3, "Unable to create PhoneStateListener, "

    invoke-static {p2, p3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->monitorConnectionEvent(Z)V

    .line 129
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->monitorPowerChange(Z)V

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/internal/CommonUtility;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/agora/rtc/internal/CommonUtility;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/agora/rtc/internal/CommonUtility;JZII)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p5}, Lio/agora/rtc/internal/CommonUtility;->nativeAudioRoutingPhoneChanged(JZII)V

    return-void
.end method

.method public static canGetDefaultContext()Z
    .locals 2

    .line 327
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

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

.method private static checkAccessNetworkState(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 674
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static checkAccessWifiState(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 759
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static checkImei(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 381
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->checkImeiSame(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 383
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 387
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static checkImeiSame(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const/16 v0, 0x30

    const/4 v1, 0x0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 394
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_0
    const/4 v2, 0x1

    .line 396
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    .line 397
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 398
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_1

    .line 400
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    .line 407
    :catchall_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private doGetNetworkInfo(Landroid/content/Context;)Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 681
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;-><init>()V

    .line 682
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->checkAccessNetworkState(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_1

    .line 683
    iput-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 684
    iput-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 685
    iput v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 686
    iput v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    return-object v0

    .line 689
    :cond_1
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->getLocalHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 691
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp4:Ljava/lang/String;

    .line 693
    :cond_2
    invoke-static {p1}, Lio/agora/rtc/internal/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 694
    invoke-static {v1}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/net/NetworkInfo;)I

    move-result v4

    iput v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkType:I

    if-eqz v1, :cond_3

    .line 696
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    iput v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    .line 698
    :cond_3
    invoke-static {}, Lio/agora/rtc/internal/Connectivity;->getDnsList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->dnsList:Ljava/util/ArrayList;

    .line 699
    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    .line 700
    invoke-static {p1}, Lio/agora/rtc/internal/CommonUtility;->checkAccessWifiState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 701
    iput-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 702
    iput-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 703
    iput v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 704
    iput v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    return-object v0

    :cond_4
    const-string v1, "wifi"

    .line 707
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 711
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 713
    iget v1, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 715
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp4:Ljava/lang/String;

    .line 717
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 719
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_0

    .line 721
    :cond_6
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    .line 722
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 723
    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    iput v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 724
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_a

    .line 726
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    const/16 v1, 0x1388

    if-lt p1, v1, :cond_7

    const/16 p1, 0x65

    .line 728
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    goto :goto_1

    :cond_7
    const/16 v1, 0x960

    if-lt p1, v1, :cond_a

    const/16 p1, 0x64

    .line 730
    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    goto :goto_1

    .line 733
    :cond_8
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    if-eqz v1, :cond_9

    .line 734
    invoke-virtual {v1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getRssi()I

    move-result p1

    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 735
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getLevel()I

    move-result p1

    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 736
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->getAsuLevel()I

    move-result p1

    iput p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I

    goto :goto_1

    :cond_9
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 737
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 738
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/CommonUtility;->getSignalStrength(Landroid/content/Context;Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;)Z

    :cond_a
    :goto_1
    return-object v0
.end method

.method private static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 502
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static getAppStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 949
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 954
    :cond_0
    sget-object p0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v0, "read external storage is not granted"

    invoke-static {p0, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "audio"

    .line 661
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    return-object p1
.end method

.method public static getContextInfo(Landroid/content/Context;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 338
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;-><init>()V

    .line 339
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    .line 340
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getDeviceInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    .line 341
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getSystemInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    .line 342
    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->getAppStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    .line 345
    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->imei:Ljava/lang/String;

    .line 346
    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->getWiFiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->macAddress:Ljava/lang/String;

    .line 347
    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    .line 349
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v1, ""

    if-eqz p0, :cond_1

    .line 350
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->device:Ljava/lang/String;

    .line 352
    :cond_1
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 353
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->deviceInfo:Ljava/lang/String;

    .line 355
    :cond_2
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 356
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->systemInfo:Ljava/lang/String;

    .line 358
    :cond_3
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 359
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->configDir:Ljava/lang/String;

    .line 361
    :cond_4
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 362
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->dataDir:Ljava/lang/String;

    .line 364
    :cond_5
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 365
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->pluginDir:Ljava/lang/String;

    .line 367
    :cond_6
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->imei:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 368
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->imei:Ljava/lang/String;

    .line 370
    :cond_7
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->macAddress:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 371
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->macAddress:Ljava/lang/String;

    .line 373
    :cond_8
    iget-object p0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 374
    iput-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->androidID:Ljava/lang/String;

    .line 376
    :cond_9
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PAndroidContextInfo;->marshall()[B

    move-result-object p0

    return-object p0
.end method

.method private static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 414
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 415
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    .line 416
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/rtc/internal/CommonUtility;->checkImei(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v1, "phone1"

    .line 425
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 426
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 427
    invoke-static {p0}, Lio/agora/rtc/internal/CommonUtility;->checkImei(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :catchall_0
    nop

    :goto_1
    if-nez v0, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static getLocalHost()Ljava/lang/String;
    .locals 4

    .line 541
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 542
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

    .line 543
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 546
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 547
    invoke-static {v2}, Lio/agora/rtc/internal/CommonUtility;->inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 548
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

.method public static getLocalHostList()[Ljava/lang/String;
    .locals 5

    .line 513
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 516
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 519
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 520
    invoke-static {v3}, Lio/agora/rtc/internal/CommonUtility;->inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 522
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 525
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 526
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 529
    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    :catch_0
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRandomUUID()Ljava/lang/String;
    .locals 3

    .line 558
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignalStrength(Landroid/content/Context;Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_c

    .line 778
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "phone"

    .line 783
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 784
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 785
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 787
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x1

    .line 791
    :try_start_0
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    if-eq v3, v1, :cond_3

    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    if-nez v3, :cond_4

    .line 792
    :cond_3
    move-object v3, p1

    check-cast v3, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 794
    iput v0, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 795
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v4

    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 796
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v4

    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 797
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v3

    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 802
    :catch_0
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 806
    :cond_4
    :try_start_1
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    if-eq v3, v1, :cond_5

    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    if-ne v3, v2, :cond_6

    .line 807
    :cond_5
    move-object v3, p1

    check-cast v3, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 809
    iput v2, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 810
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v4

    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 811
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v4

    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 812
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result v3

    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    .line 817
    :catch_1
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 821
    :cond_6
    :try_start_2
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    const/4 v4, 0x2

    if-eq v3, v1, :cond_7

    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    if-ne v3, v4, :cond_9

    .line 822
    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v3, v5, :cond_8

    return v0

    .line 825
    :cond_8
    move-object v3, p1

    check-cast v3, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 827
    iput v4, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 828
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v4

    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 829
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v4

    iput v4, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 830
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v3

    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v2

    .line 835
    :catch_2
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 838
    :cond_9
    :try_start_3
    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    const/4 v4, 0x3

    if-eq v3, v1, :cond_a

    iget v3, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    if-ne v3, v4, :cond_b

    .line 839
    :cond_a
    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 841
    iput v4, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    .line 842
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v3

    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    .line 843
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v3

    iput v3, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    .line 844
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result p1

    iput p1, p2, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return v2

    .line 849
    :catch_3
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    :cond_b
    :goto_0
    return v0

    .line 779
    :cond_c
    :goto_1
    iput v1, p0, Lio/agora/rtc/internal/CommonUtility;->mMobileType:I

    return v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "android.os.SystemProperties"

    .line 666
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 667
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getWiFiMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "00:00:00:00:00:00"

    const-string v2, "^([0-9A-F]{2}:){5}([0-9A-F]{2})$"

    .line 444
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    .line 447
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v5, 0x17

    if-lt v4, v5, :cond_8

    .line 449
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 450
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 453
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 454
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "wlan0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 459
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_3

    aget-byte v8, v1, v6

    const-string v9, "%02X:"

    new-array v7, v7, [Ljava/lang/Object;

    .line 461
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 463
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 464
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 466
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0

    :catchall_0
    nop

    :cond_6
    if-eqz v3, :cond_7

    .line 470
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    move-object v0, v3

    :cond_7
    return-object v0

    :cond_8
    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    .line 472
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "wifi"

    .line 475
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 477
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 478
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 480
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_a

    .line 482
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 483
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_a

    goto :goto_3

    :catchall_1
    nop

    goto :goto_4

    :catchall_2
    :cond_9
    :goto_3
    move-object p0, v3

    :cond_a
    :goto_4
    if-nez p0, :cond_b

    return-object v0

    :cond_b
    return-object p0
.end method

.method private static inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1

    .line 745
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 747
    check-cast p0, Ljava/net/Inet4Address;

    .line 748
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 749
    :cond_0
    instance-of p0, p0, Ljava/net/Inet6Address;

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 770
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSimulatorProperty()Z
    .locals 10

    const-string v0, "android"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "ro.hardware"

    .line 570
    invoke-static {v4}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 574
    :catch_0
    sget-object v4, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v5, "get property hardware fail."

    invoke-static {v4, v5}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    .line 576
    :goto_0
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hardware = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", suspectCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v5, "os.arch"

    .line 578
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 579
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v8, "i686"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 581
    sget-object v6, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 584
    :catch_1
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v6, "get property arch fail."

    invoke-static {v5, v6}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_3
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-le v5, v6, :cond_b

    .line 587
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ttvm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    add-int/lit8 v4, v4, 0xa

    goto :goto_3

    .line 589
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "nox"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    :try_start_2
    const-string v1, "ro.build.flavor"

    .line 592
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v5, "vbox"

    .line 593
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "sdk_gphone"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 595
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildFlavor = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 598
    :catch_2
    sget-object v1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v5, "get property buildFlavor fail."

    invoke-static {v1, v5}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    :try_start_3
    const-string v1, "ro.product.board"

    .line 601
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 602
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "goldfish"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 604
    sget-object v5, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "productBoard = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 607
    :catch_3
    sget-object v1, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v5, "get property productBoard fail."

    invoke-static {v1, v5}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    :try_start_4
    const-string v1, "ro.board.platform"

    .line 610
    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 611
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 613
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boardPlatform = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 616
    :catch_4
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "get property boardPlatform fail."

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    if-lez v4, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method

.method private native nativeAudioRoutingPhoneChanged(JZII)V
.end method

.method private native nativeNotifyNetworkChange(J[B)I
.end method

.method private regiseterBroadcaster(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 625
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/CommonUtility$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/CommonUtility$1;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    .line 648
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 649
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterBroadcaster(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 654
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mOrientationObserver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 133
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 134
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "phone"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 136
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPhoneStateListener:Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;

    .line 141
    :cond_0
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/CommonUtility;->monitorConnectionEvent(Z)V

    .line 142
    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/CommonUtility;->monitorPowerChange(Z)V

    return-void
.end method

.method public getAndroidVersion()I
    .locals 1

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBatteryLifePercent()I
    .locals 1

    .line 168
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    return v0

    :cond_0
    const/16 v0, 0xff

    return v0
.end method

.method public getFrontCameraIndex()I
    .locals 1

    .line 250
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->selectFrontCamera()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()[B
    .locals 2

    .line 157
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility;->doGetNetworkInfo(Landroid/content/Context;)Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->marshall()[B

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getNetworkType()I
    .locals 3

    .line 146
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->checkAccessNetworkState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v0}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 254
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public isSimulator()I
    .locals 10

    const-string v0, "unknown"

    const-string v1, ""

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 263
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_0

    .line 265
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v2, :cond_1

    .line 269
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 271
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v6, :cond_2

    .line 273
    :try_start_2
    sget-object v6, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serial = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", suspectCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v6, 0x1

    goto :goto_2

    :catch_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :catch_1
    move-object v5, v1

    :catch_2
    const/4 v6, 0x0

    .line 276
    :goto_1
    sget-object v7, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v8, "get serial info fail."

    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_2
    :try_start_3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 280
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "netease"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 282
    :cond_3
    sget-object v7, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "manufacturer = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 284
    :catch_3
    sget-object v7, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v8, "get manufacturer info fail."

    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_3
    invoke-direct {p0}, Lio/agora/rtc/internal/CommonUtility;->isSimulatorProperty()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 288
    :cond_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "welldo"

    if-le v7, v2, :cond_7

    const-string v0, "nokia"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Nokia_N1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "N1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return v3

    :cond_6
    if-lez v6, :cond_9

    .line 295
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return v4

    .line 300
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-lez v6, :cond_9

    .line 301
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    return v4

    :cond_9
    return v3
.end method

.method public isSpeakerphoneEnabled(Landroid/content/Context;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 320
    :cond_0
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/CommonUtility;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p1

    return p1
.end method

.method public monitorConnectionEvent(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-nez p1, :cond_2

    .line 185
    :try_start_0
    new-instance p1, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    invoke-direct {p1, p0}, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    .line 186
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 187
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create ConnectionChangeBroadcastReceiver, "

    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mConnectionBroadcastReceiver:Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;

    :cond_2
    :goto_0
    return-void
.end method

.method public monitorPowerChange(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    if-nez p1, :cond_2

    .line 211
    :try_start_0
    new-instance p1, Lio/agora/rtc/internal/PowerConnectionReceiver;

    invoke-direct {p1, p0}, Lio/agora/rtc/internal/PowerConnectionReceiver;-><init>(Lio/agora/rtc/internal/CommonUtility;)V

    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    .line 212
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 213
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    sget-object v0, Lio/agora/rtc/internal/CommonUtility;->TAG:Ljava/lang/String;

    const-string v1, "Unable to create PowerConnectionReceiver, "

    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 224
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility;->mPowerConnectionReceiver:Lio/agora/rtc/internal/PowerConnectionReceiver;

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyNetworkChange()V
    .locals 3

    .line 236
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    invoke-virtual {p0}, Lio/agora/rtc/internal/CommonUtility;->getNetworkInfo()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtc/internal/CommonUtility;->nativeNotifyNetworkChange(J[B)I

    return-void
.end method

.method public onPhoneStateChanged(ZII)V
    .locals 6

    .line 176
    iget-wide v1, p0, Lio/agora/rtc/internal/CommonUtility;->mBridgeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 178
    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/CommonUtility;->nativeAudioRoutingPhoneChanged(JZII)V

    return-void
.end method

.method public onPowerChange(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iput p1, p0, Lio/agora/rtc/internal/CommonUtility;->batteryPercentage:I

    return-void
.end method
