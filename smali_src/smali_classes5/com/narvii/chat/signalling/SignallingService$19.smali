.class Lcom/narvii/chat/signalling/SignallingService$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/signalling/SignallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/signalling/SignallingService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v4

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    check-cast v4, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 30
    .line 31
    iget-wide v5, v4, Lcom/narvii/chat/signalling/SignallingChannel;->lostConnectionTime:J

    .line 32
    .line 33
    const-wide/16 v7, 0x0

    .line 34
    .line 35
    cmp-long v7, v5, v7

    .line 36
    .line 37
    if-nez v7, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    const-wide/32 v7, 0x493e0

    .line 42
    add-long/2addr v5, v7

    .line 43
    .line 44
    cmp-long v5, v5, v0

    .line 45
    .line 46
    if-gez v5, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v3, "unjoin thread channel due to connection lost timeout: "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    .line 97
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 100
    .line 101
    new-instance v3, Lcom/narvii/chat/signalling/SignallingService$19$1;

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/signalling/SignallingService$19$1;-><init>(Lcom/narvii/chat/signalling/SignallingService$19;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    return-void
.end method
