.class Lcom/narvii/widget/MoodView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/MoodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inited:Z

.field px:F

.field py:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/widget/MoodView$2;->inited:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/MoodView$2;->px:F

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/widget/MoodView$2;->py:F

    .line 12
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
    const/4 v2, 0x1

    .line 7
    .line 8
    aget p1, p1, v2

    .line 9
    .line 10
    iget-boolean v3, p0, Lcom/narvii/widget/MoodView$2;->inited:Z

    .line 11
    .line 12
    if-eqz v3, :cond_4

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/widget/MoodView$2;->px:F

    .line 15
    .line 16
    sub-float v2, v1, v2

    .line 17
    .line 18
    iget v3, p0, Lcom/narvii/widget/MoodView$2;->py:F

    .line 19
    .line 20
    sub-float v3, p1, v3

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/widget/MoodView$2;->px:F

    .line 23
    .line 24
    iput p1, p0, Lcom/narvii/widget/MoodView$2;->py:F

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 32
    move-result v1

    .line 33
    add-float/2addr p1, v1

    .line 34
    .line 35
    .line 36
    const v1, 0x3f570a3d    # 0.84f

    .line 37
    .line 38
    cmpg-float p1, p1, v1

    .line 39
    .line 40
    if-gez p1, :cond_0

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lcom/narvii/widget/MoodView;->c()Ljava/util/HashSet;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    check-cast v1, Lcom/narvii/widget/MoodView;

    .line 68
    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_1
    const v4, 0x3dcccccd    # 0.1f

    .line 77
    .line 78
    mul-float v5, v2, v4

    .line 79
    mul-float/2addr v4, v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5, v4}, Lcom/narvii/widget/MoodView;->shakeSensor(FF)V

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_2
    if-nez v0, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/narvii/widget/MoodView;->d()Landroid/hardware/SensorManager;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 95
    :cond_3
    return-void

    .line 96
    .line 97
    :cond_4
    iput v1, p0, Lcom/narvii/widget/MoodView$2;->px:F

    .line 98
    .line 99
    iput p1, p0, Lcom/narvii/widget/MoodView$2;->py:F

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/narvii/widget/MoodView$2;->inited:Z

    .line 102
    return-void
.end method
