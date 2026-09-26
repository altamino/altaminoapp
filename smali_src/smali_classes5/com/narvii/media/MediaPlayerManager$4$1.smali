.class Lcom/narvii/media/MediaPlayerManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPlayerManager$4;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaPlayerManager$4;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager$4;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->val$url:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->resetSpeakMode()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, p1, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->f(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 34
    move-result v1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v2, v1, v3}, Lcom/narvii/media/MediaStatusChangeListener;->onProgressChange(Ljava/lang/String;II)V

    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->c(Lcom/narvii/media/MediaPlayerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->val$url:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->c(Lcom/narvii/media/MediaPlayerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->val$url:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    :cond_1
    if-eqz p1, :cond_2

    .line 81
    .line 82
    sget-object v1, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v1}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 90
    const/4 v1, 0x0

    .line 91
    .line 92
    iput-object v1, p1, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v1, p1, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    iget-boolean v1, p1, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->b(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 120
    .line 121
    iget-object v1, p1, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 127
    .line 128
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 131
    .line 132
    iput-boolean v0, p1, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 133
    .line 134
    :cond_3
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4$1;->this$1:Lcom/narvii/media/MediaPlayerManager$4;

    .line 146
    .line 147
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->e(Lcom/narvii/media/MediaPlayerManager;)V

    .line 151
    return-void
.end method
