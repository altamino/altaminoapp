.class public Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ScreenRotateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrientationSensorListener"
.end annotation


# static fields
.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field private rotateHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/narvii/util/ScreenRotateHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/util/ScreenRotateHelper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->rotateHandler:Landroid/os/Handler;

    .line 8
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    aget v1, p1, v0

    .line 6
    neg-float v1, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    aget v2, p1, v2

    .line 10
    neg-float v2, v2

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    aget p1, p1, v3

    .line 14
    neg-float p1, p1

    .line 15
    .line 16
    mul-float v3, v1, v1

    .line 17
    .line 18
    mul-float v4, v2, v2

    .line 19
    add-float/2addr v3, v4

    .line 20
    .line 21
    const/high16 v4, 0x40800000    # 4.0f

    .line 22
    mul-float/2addr v3, v4

    .line 23
    mul-float/2addr p1, p1

    .line 24
    .line 25
    cmpl-float p1, v3, p1

    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    neg-float p1, v2

    .line 29
    float-to-double v2, p1

    .line 30
    float-to-double v4, v1

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 34
    move-result-wide v1

    .line 35
    double-to-float p1, v1

    .line 36
    .line 37
    .line 38
    const v1, 0x42652ee1

    .line 39
    mul-float/2addr p1, v1

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 43
    move-result p1

    .line 44
    .line 45
    rsub-int/lit8 p1, p1, 0x5a

    .line 46
    .line 47
    :goto_0
    const/16 v1, 0x168

    .line 48
    .line 49
    if-lt p1, v1, :cond_0

    .line 50
    .line 51
    add-int/lit16 p1, p1, -0x168

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    :goto_1
    if-gez p1, :cond_2

    .line 55
    .line 56
    add-int/lit16 p1, p1, 0x168

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 p1, -0x1

    .line 59
    .line 60
    :cond_2
    if-gez p1, :cond_3

    .line 61
    return-void

    .line 62
    .line 63
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/narvii/util/ScreenRotateHelper;->context:Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-string v2, "accelerometer_rotation"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 75
    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    :cond_4
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->rotateHandler:Landroid/os/Handler;

    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    const/16 v2, 0x378

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 96
    :cond_5
    return-void
.end method
