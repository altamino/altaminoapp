.class public Lcom/squareup/seismic/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/seismic/a$c;,
        Lcom/squareup/seismic/a$b;,
        Lcom/squareup/seismic/a$d;,
        Lcom/squareup/seismic/a$a;
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

.field private final listener:Lcom/squareup/seismic/a$a;

.field private final queue:Lcom/squareup/seismic/a$d;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/squareup/seismic/a$a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    iput v0, p0, Lcom/squareup/seismic/a;->accelerationThreshold:I

    .line 8
    .line 9
    new-instance v0, Lcom/squareup/seismic/a$d;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/squareup/seismic/a$d;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/squareup/seismic/a;->queue:Lcom/squareup/seismic/a$d;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/squareup/seismic/a;->listener:Lcom/squareup/seismic/a$a;

    .line 17
    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)Z
    .locals 7

    .line 1
    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    aget v1, p1, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    aget v3, p1, v2

    .line 9
    const/4 v4, 0x2

    .line 10
    .line 11
    aget p1, p1, v4

    .line 12
    mul-float/2addr v1, v1

    .line 13
    mul-float/2addr v3, v3

    .line 14
    add-float/2addr v1, v3

    .line 15
    mul-float/2addr p1, p1

    .line 16
    add-float/2addr v1, p1

    .line 17
    float-to-double v3, v1

    .line 18
    .line 19
    iget p1, p0, Lcom/squareup/seismic/a;->accelerationThreshold:I

    .line 20
    mul-int/2addr p1, p1

    .line 21
    int-to-double v5, p1

    .line 22
    .line 23
    cmpl-double p1, v3, v5

    .line 24
    .line 25
    if-lez p1, :cond_0

    .line 26
    move v0, v2

    .line 27
    :cond_0
    return v0
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/squareup/seismic/a;->accelerationThreshold:I

    return-void
.end method

.method public c(Landroid/hardware/SensorManager;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/squareup/seismic/a;->accelerometer:Landroid/hardware/Sensor;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/squareup/seismic/a;->accelerometer:Landroid/hardware/Sensor;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/squareup/seismic/a;->sensorManager:Landroid/hardware/SensorManager;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/squareup/seismic/a;->accelerometer:Landroid/hardware/Sensor;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v1, v2

    .line 27
    :goto_0
    return v1
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/squareup/seismic/a;->accelerometer:Landroid/hardware/Sensor;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/squareup/seismic/a;->sensorManager:Landroid/hardware/SensorManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/squareup/seismic/a;->sensorManager:Landroid/hardware/SensorManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/squareup/seismic/a;->accelerometer:Landroid/hardware/Sensor;

    .line 15
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/squareup/seismic/a;->a(Landroid/hardware/SensorEvent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 7
    .line 8
    iget-object p1, p0, Lcom/squareup/seismic/a;->queue:Lcom/squareup/seismic/a$d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v2, v0}, Lcom/squareup/seismic/a$d;->a(JZ)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/squareup/seismic/a;->queue:Lcom/squareup/seismic/a$d;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/squareup/seismic/a$d;->c()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/squareup/seismic/a;->queue:Lcom/squareup/seismic/a$d;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/squareup/seismic/a$d;->b()V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/squareup/seismic/a;->listener:Lcom/squareup/seismic/a$a;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/squareup/seismic/a$a;->hearShake()V

    .line 30
    :cond_0
    return-void
.end method
