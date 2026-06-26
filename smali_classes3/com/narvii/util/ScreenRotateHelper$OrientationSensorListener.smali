.class public Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;
.super Ljava/lang/Object;
.source "ScreenRotateHelper.java"

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

    .line 103
    iput-object p1, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->rotateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 111
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 113
    aget v1, p1, v0

    neg-float v1, v1

    const/4 v2, 0x1

    .line 114
    aget v2, p1, v2

    neg-float v2, v2

    const/4 v3, 0x2

    .line 115
    aget p1, p1, v3

    neg-float p1, p1

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v3, v3, v4

    mul-float p1, p1, p1

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_1

    const p1, 0x42652ee1

    neg-float v2, v2

    float-to-double v2, v2

    float-to-double v4, v1

    .line 120
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p1

    .line 121
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x5a

    :goto_0
    const/16 v1, 0x168

    if-lt p1, v1, :cond_0

    add-int/lit16 p1, p1, -0x168

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :cond_2
    if-gez p1, :cond_3

    return-void

    .line 136
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->this$0:Lcom/narvii/util/ScreenRotateHelper;

    iget-object v1, v1, Lcom/narvii/util/ScreenRotateHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    return-void

    :catch_0
    move-exception v1

    .line 141
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/narvii/util/ScreenRotateHelper$OrientationSensorListener;->rotateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    const/16 v2, 0x378

    .line 146
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
