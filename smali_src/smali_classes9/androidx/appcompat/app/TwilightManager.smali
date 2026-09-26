.class Landroidx/appcompat/app/TwilightManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final SUNRISE:I = 0x6

.field private static final SUNSET:I = 0x16

.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Landroidx/appcompat/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/appcompat/app/TwilightManager$TwilightState;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 15
    return-void
.end method

.method static a(Landroid/content/Context;)Landroidx/appcompat/app/TwilightManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance v0, Landroidx/appcompat/app/TwilightManager;

    .line 11
    .line 12
    const-string v1, "location"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/location/LocationManager;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 22
    .line 23
    sput-object v0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    .line 24
    .line 25
    :cond_0
    sget-object p0, Landroidx/appcompat/app/TwilightManager;->sInstance:Landroidx/appcompat/app/TwilightManager;

    .line 26
    return-object p0
.end method

.method private b()Landroid/location/Location;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "network"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroidx/appcompat/app/TwilightManager;->c(Ljava/lang/String;)Landroid/location/Location;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    .line 21
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Landroidx/core/content/PermissionChecker;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string v1, "gps"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Landroidx/appcompat/app/TwilightManager;->c(Ljava/lang/String;)Landroid/location/Location;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    :cond_1
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 43
    move-result-wide v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    .line 47
    move-result-wide v4

    .line 48
    .line 49
    cmp-long v2, v2, v4

    .line 50
    .line 51
    if-lez v2, :cond_2

    .line 52
    move-object v0, v1

    .line 53
    :cond_2
    return-object v0

    .line 54
    .line 55
    :cond_3
    if-eqz v1, :cond_4

    .line 56
    move-object v0, v1

    .line 57
    :cond_4
    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    .line 18
    const-string v0, "TwilightManager"

    .line 19
    .line 20
    const-string v1, "Failed to get last known location"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method private e()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 3
    .line 4
    iget-wide v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private f(Landroid/location/Location;)V
    .locals 22
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v9

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/appcompat/app/TwilightCalculator;->b()Landroidx/appcompat/app/TwilightCalculator;

    .line 12
    move-result-object v11

    .line 13
    .line 14
    .line 15
    const-wide/32 v12, 0x5265c00

    .line 16
    .line 17
    sub-long v3, v9, v12

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    .line 21
    move-result-wide v5

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    .line 25
    move-result-wide v7

    .line 26
    move-object v2, v11

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/app/TwilightCalculator;->a(JDD)V

    .line 30
    .line 31
    iget-wide v14, v11, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    .line 35
    move-result-wide v5

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    .line 39
    move-result-wide v7

    .line 40
    move-wide v3, v9

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/app/TwilightCalculator;->a(JDD)V

    .line 44
    .line 45
    iget v2, v11, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 46
    const/4 v3, 0x1

    .line 47
    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    :goto_0
    move v7, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :goto_1
    iget-wide v5, v11, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 55
    .line 56
    iget-wide v3, v11, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 57
    add-long/2addr v12, v9

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    .line 61
    move-result-wide v16

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    .line 65
    move-result-wide v18

    .line 66
    move-object v2, v11

    .line 67
    .line 68
    move-wide/from16 v20, v14

    .line 69
    move-wide v14, v3

    .line 70
    move-wide v3, v12

    .line 71
    move-wide v12, v5

    .line 72
    .line 73
    move-wide/from16 v5, v16

    .line 74
    move v0, v7

    .line 75
    .line 76
    move-wide/from16 v7, v18

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/app/TwilightCalculator;->a(JDD)V

    .line 80
    .line 81
    iget-wide v5, v11, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 82
    .line 83
    const-wide/16 v2, -0x1

    .line 84
    .line 85
    cmp-long v4, v12, v2

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    cmp-long v2, v14, v2

    .line 90
    .line 91
    if-nez v2, :cond_1

    .line 92
    goto :goto_3

    .line 93
    .line 94
    :cond_1
    cmp-long v2, v9, v14

    .line 95
    .line 96
    if-lez v2, :cond_2

    .line 97
    move-wide v2, v5

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_2
    cmp-long v2, v9, v12

    .line 101
    .line 102
    if-lez v2, :cond_3

    .line 103
    move-wide v2, v14

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move-wide v2, v12

    .line 106
    .line 107
    .line 108
    :goto_2
    const-wide/32 v7, 0xea60

    .line 109
    add-long/2addr v2, v7

    .line 110
    goto :goto_4

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_3
    const-wide/32 v2, 0x2932e00

    .line 114
    add-long/2addr v2, v9

    .line 115
    .line 116
    :goto_4
    iput-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 117
    .line 118
    move-wide/from16 v7, v20

    .line 119
    .line 120
    iput-wide v7, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 121
    .line 122
    iput-wide v12, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 123
    .line 124
    iput-wide v14, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->todaySunset:J

    .line 125
    .line 126
    iput-wide v5, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 127
    .line 128
    iput-wide v2, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 129
    return-void
.end method


# virtual methods
.method d()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->e()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/TwilightManager;->b()Landroid/location/Location;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Landroidx/appcompat/app/TwilightManager;->f(Landroid/location/Location;)V

    .line 21
    .line 22
    iget-boolean v0, v0, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 23
    return v0

    .line 24
    .line 25
    :cond_1
    const-string v0, "TwilightManager"

    .line 26
    .line 27
    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const/16 v1, 0xb

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x6

    .line 42
    .line 43
    if-lt v0, v1, :cond_3

    .line 44
    .line 45
    const/16 v1, 0x16

    .line 46
    .line 47
    if-lt v0, v1, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0
.end method
