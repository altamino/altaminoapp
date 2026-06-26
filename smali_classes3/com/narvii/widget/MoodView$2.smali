.class final Lcom/narvii/widget/MoodView$2;
.super Ljava/lang/Object;
.source "MoodView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/MoodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field inited:Z

.field px:F

.field py:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/narvii/widget/MoodView$2;->inited:Z

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/narvii/widget/MoodView$2;->px:F

    iput v0, p0, Lcom/narvii/widget/MoodView$2;->py:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 65
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    .line 67
    iget-boolean v3, p0, Lcom/narvii/widget/MoodView$2;->inited:Z

    if-eqz v3, :cond_4

    .line 68
    iget v2, p0, Lcom/narvii/widget/MoodView$2;->px:F

    sub-float v2, v1, v2

    .line 69
    iget v3, p0, Lcom/narvii/widget/MoodView$2;->py:F

    sub-float v3, p1, v3

    .line 70
    iput v1, p0, Lcom/narvii/widget/MoodView$2;->px:F

    .line 71
    iput p1, p0, Lcom/narvii/widget/MoodView$2;->py:F

    .line 72
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr p1, v1

    const v1, 0x3f570a3d    # 0.84f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/narvii/widget/MoodView;->access$000()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 85
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/MoodView;

    if-nez v1, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const v4, 0x3dcccccd    # 0.1f

    mul-float v5, v2, v4

    mul-float v4, v4, v3

    .line 89
    invoke-virtual {v1, v5, v4}, Lcom/narvii/widget/MoodView;->shakeSensor(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 94
    invoke-static {}, Lcom/narvii/widget/MoodView;->access$100()Landroid/hardware/SensorManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3
    return-void

    .line 76
    :cond_4
    iput v1, p0, Lcom/narvii/widget/MoodView$2;->px:F

    .line 77
    iput p1, p0, Lcom/narvii/widget/MoodView$2;->py:F

    .line 78
    iput-boolean v2, p0, Lcom/narvii/widget/MoodView$2;->inited:Z

    return-void
.end method
