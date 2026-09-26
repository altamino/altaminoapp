.class public Lcom/narvii/util/ScreenRotateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;
    }
.end annotation


# static fields
.field public static final ROTATION_THRESHOLD:I = 0xf


# instance fields
.field context:Landroid/content/Context;

.field private isMonitorEnabled:Z

.field private listener:Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;

.field private mHandler:Landroid/os/Handler;

.field orientationInfo:I

.field requestOrientationListener:Lcom/narvii/util/RequestOrientationListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sm:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/util/RequestOrientationListener;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/util/ScreenRotateHelper$1;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/ScreenRotateHelper$1;-><init>(Lcom/narvii/util/ScreenRotateHelper;Landroid/os/Looper;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/ScreenRotateHelper;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper;->context:Landroid/content/Context;

    .line 20
    .line 21
    const-string v0, "sensor"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroid/hardware/SensorManager;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper;->sm:Landroid/hardware/SensorManager;

    .line 30
    .line 31
    const/16 v0, 0x9

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper;->sensor:Landroid/hardware/Sensor;

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/util/ScreenRotateHelper;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0, v0}, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;-><init>(Lcom/narvii/util/ScreenRotateHelper;Landroid/os/Handler;)V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper;->listener:Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/narvii/util/ScreenRotateHelper;->requestOrientationListener:Lcom/narvii/util/RequestOrientationListener;

    .line 49
    const/4 p1, 0x1

    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/narvii/util/ScreenRotateHelper;->isMonitorEnabled:Z

    .line 52
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/ScreenRotateHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/util/ScreenRotateHelper;->isMonitorEnabled:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/ScreenRotateHelper;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/ScreenRotateHelper;->getOrientationInfo(I)I

    move-result p0

    return p0
.end method

.method private getOrientationInfo(I)I
    .locals 1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_0

    const/16 v0, 0x69

    if-ge p1, v0, :cond_0

    const/16 p1, 0x8

    return p1

    :cond_0
    const/16 v0, 0xa5

    if-le p1, v0, :cond_1

    const/16 v0, 0xc3

    if-ge p1, v0, :cond_1

    const/16 p1, 0x9

    return p1

    :cond_1
    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    const/16 v0, 0x11d

    if-ge p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/16 v0, 0x159

    if-le p1, v0, :cond_3

    const/16 v0, 0x168

    if-le p1, v0, :cond_4

    :cond_3
    if-ltz p1, :cond_5

    const/16 v0, 0xf

    if-ge p1, v0, :cond_5

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    const/16 p1, 0xe

    return p1
.end method


# virtual methods
.method public setMonitorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/ScreenRotateHelper;->isMonitorEnabled:Z

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ScreenRotateHelper;->sm:Landroid/hardware/SensorManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper;->listener:Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/util/ScreenRotateHelper;->sensor:Landroid/hardware/Sensor;

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 11
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ScreenRotateHelper;->sm:Landroid/hardware/SensorManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper;->listener:Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/util/ScreenRotateHelper;->orientationInfo:I

    .line 11
    return-void
.end method
