.class Lcom/mixpanel/android/mpmetrics/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.SysInfo"

.field private static sInstance:Lcom/mixpanel/android/mpmetrics/l;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mAppVersionCode:Ljava/lang/Integer;

.field private final mAppVersionName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHasNFC:Ljava/lang/Boolean;

.field private final mHasTelephony:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/mixpanel/android/mpmetrics/l;->sInstanceLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    .line 2
    const-string v0, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.SysInfo"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    :try_start_1
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 28
    .line 29
    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-object v6, v4

    .line 34
    .line 35
    :catch_1
    const-string v5, "System information constructed with a context that apparently doesn\'t exist."

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v5}, Lcom/mixpanel/android/util/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    move-object v5, v4

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 43
    move-result-object v7

    .line 44
    .line 45
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 46
    .line 47
    iput-object v6, p0, Lcom/mixpanel/android/mpmetrics/l;->mAppVersionName:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v5, p0, Lcom/mixpanel/android/mpmetrics/l;->mAppVersionCode:Ljava/lang/Integer;

    .line 50
    .line 51
    if-nez v8, :cond_1

    .line 52
    .line 53
    iget-object p1, v7, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    const-string p1, "Misc"

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    :goto_1
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l;->mAppName:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move-result-object p1

    .line 74
    const/4 v5, 0x1

    .line 75
    .line 76
    :try_start_2
    const-string v6, "hasSystemFeature"

    .line 77
    .line 78
    new-array v7, v5, [Ljava/lang/Class;

    .line 79
    .line 80
    const-class v8, Ljava/lang/String;

    .line 81
    .line 82
    aput-object v8, v7, v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    goto :goto_2

    .line 88
    :catch_2
    move-object p1, v4

    .line 89
    .line 90
    :goto_2
    if-eqz p1, :cond_2

    .line 91
    .line 92
    :try_start_3
    new-array v6, v5, [Ljava/lang/Object;

    .line 93
    .line 94
    const-string v7, "android.hardware.nfc"

    .line 95
    .line 96
    aput-object v7, v6, v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    check-cast v6, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 103
    .line 104
    :try_start_4
    new-array v5, v5, [Ljava/lang/Object;

    .line 105
    .line 106
    const-string v7, "android.hardware.telephony"

    .line 107
    .line 108
    aput-object v7, v5, v3

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    check-cast p1, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    .line 115
    :goto_3
    move-object v4, v6

    .line 116
    goto :goto_7

    .line 117
    :catch_3
    move-object v6, v4

    .line 118
    goto :goto_4

    .line 119
    :catch_4
    move-object v6, v4

    .line 120
    goto :goto_6

    .line 121
    .line 122
    .line 123
    :catch_5
    :goto_4
    invoke-static {v1, v0}, Lcom/mixpanel/android/util/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_5
    move-object p1, v4

    .line 125
    goto :goto_3

    .line 126
    .line 127
    .line 128
    :catch_6
    :goto_6
    invoke-static {v1, v0}, Lcom/mixpanel/android/util/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    goto :goto_5

    .line 130
    :cond_2
    move-object p1, v4

    .line 131
    .line 132
    :goto_7
    iput-object v4, p0, Lcom/mixpanel/android/mpmetrics/l;->mHasNFC:Ljava/lang/Boolean;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l;->mHasTelephony:Ljava/lang/Boolean;

    .line 135
    .line 136
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 137
    .line 138
    .line 139
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    .line 141
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    const-string/jumbo v1, "window"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    check-cast v0, Landroid/view/WindowManager;

    .line 153
    .line 154
    .line 155
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    return-void
.end method

.method static f(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/l;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/l;->sInstanceLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/mixpanel/android/mpmetrics/l;->sInstance:Lcom/mixpanel/android/mpmetrics/l;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    new-instance v1, Lcom/mixpanel/android/mpmetrics/l;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/l;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    sput-object v1, Lcom/mixpanel/android/mpmetrics/l;->sInstance:Lcom/mixpanel/android/mpmetrics/l;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    sget-object p0, Lcom/mixpanel/android/mpmetrics/l;->sInstance:Lcom/mixpanel/android/mpmetrics/l;

    .line 25
    return-object p0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mAppVersionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "android.hardware.bluetooth_le"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "ble"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "android.hardware.bluetooth"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v0, "classic"

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const-string v0, "none"

    .line 37
    :goto_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "phone"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public e()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mHasNFC:Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mHasTelephony:Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    const-string v2, "android.permission.BLUETOOTH"

    .line 10
    .line 11
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :cond_0
    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v1, "connectivity"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    if-ne v1, v2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    return-object v0
.end method
