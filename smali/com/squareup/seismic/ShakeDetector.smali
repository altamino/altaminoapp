.class public Lcom/squareup/seismic/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/seismic/ShakeDetector$SamplePool;,
        Lcom/squareup/seismic/ShakeDetector$Sample;,
        Lcom/squareup/seismic/ShakeDetector$SampleQueue;,
        Lcom/squareup/seismic/ShakeDetector$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCELERATION_THRESHOLD:I = 0xd

.field public static final SENSITIVITY_HARD:I = 0xf

.field public static final SENSITIVITY_LIGHT:I = 0xb

.field public static final SENSITIVITY_MEDIUM:I = 0xd


# instance fields
.field private accelerationThreshold:I

.field private accelerometer:Landroid/hardware/Sensor;

.field private final listener:Lcom/squareup/seismic/ShakeDetector$Listener;

.field private final queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/squareup/seismic/ShakeDetector$Listener;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    .line 31
    iput v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerationThreshold:I

    .line 39
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;-><init>()V

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    .line 46
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->listener:Lcom/squareup/seismic/ShakeDetector$Listener;

    return-void
.end method

.method private isAccelerating(Landroid/hardware/SensorEvent;)Z
    .locals 7

    .line 96
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    .line 97
    aget v3, p1, v2

    const/4 v4, 0x2

    .line 98
    aget p1, p1, v4

    mul-float v1, v1, v1

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    float-to-double v3, v1

    .line 104
    iget p1, p0, Lcom/squareup/seismic/ShakeDetector;->accelerationThreshold:I

    mul-int p1, p1, p1

    int-to-double v5, p1

    cmpl-double p1, v3, v5

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 85
    invoke-direct {p0, p1}, Lcom/squareup/seismic/ShakeDetector;->isAccelerating(Landroid/hardware/SensorEvent;)Z

    move-result v0

    .line 86
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 87
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {p1, v1, v2, v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->add(JZ)V

    .line 88
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {p1}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->isShaking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {p1}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->clear()V

    .line 90
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->listener:Lcom/squareup/seismic/ShakeDetector$Listener;

    invoke-interface {p1}, Lcom/squareup/seismic/ShakeDetector$Listener;->hearShake()V

    :cond_0
    return-void
.end method

.method public setSensitivity(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/squareup/seismic/ShakeDetector;->accelerationThreshold:I

    return-void
.end method

.method public start(Landroid/hardware/SensorManager;)Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    .line 64
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 65
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 66
    invoke-virtual {p1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public stop()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 80
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method
