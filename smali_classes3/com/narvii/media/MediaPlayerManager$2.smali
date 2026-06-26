.class Lcom/narvii/media/MediaPlayerManager$2;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPlayerManager;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 70
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 71
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode(Z)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode(Z)V

    :goto_0
    return-void
.end method
