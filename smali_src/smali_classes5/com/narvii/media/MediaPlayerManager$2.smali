.class Lcom/narvii/media/MediaPlayerManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    aget p1, p1, v0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->sensor:Landroid/hardware/Sensor;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    .line 13
    move-result v1

    .line 14
    .line 15
    cmpl-float p1, p1, v1

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode(Z)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$2;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode(Z)V

    .line 30
    :goto_0
    return-void
.end method
