.class Lcom/narvii/util/ws/WsService$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ws/WsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$7;->this$0:Lcom/narvii/util/ws/WsService;

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
    iget-object v2, p0, Lcom/narvii/util/ws/WsService$7;->this$0:Lcom/narvii/util/ws/WsService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v4

    .line 18
    .line 19
    const-wide/16 v5, 0x3a98

    .line 20
    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    check-cast v4, Lcom/narvii/util/ws/WsRequest;

    .line 28
    .line 29
    iget-wide v7, v4, Lcom/narvii/util/ws/WsRequest;->startTime:J

    .line 30
    add-long/2addr v7, v5

    .line 31
    .line 32
    cmp-long v5, v0, v7

    .line 33
    .line 34
    if-ltz v5, :cond_0

    .line 35
    .line 36
    iget-object v5, v4, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_3
    iget-object v2, p0, Lcom/narvii/util/ws/WsService$7;->this$0:Lcom/narvii/util/ws/WsService;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_7

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    check-cast v4, Lcom/narvii/util/ws/WsRequest;

    .line 73
    .line 74
    iget-wide v7, v4, Lcom/narvii/util/ws/WsRequest;->startTime:J

    .line 75
    add-long/2addr v7, v5

    .line 76
    .line 77
    cmp-long v7, v0, v7

    .line 78
    .line 79
    if-ltz v7, :cond_4

    .line 80
    .line 81
    iget-object v7, v4, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 82
    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    if-nez v3, :cond_5

    .line 86
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_7
    if-eqz v3, :cond_8

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    check-cast v1, Lcom/narvii/util/ws/WsRequest;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 118
    .line 119
    sget-object v2, Lcom/narvii/util/ws/WsError;->TIMEOUT:Lcom/narvii/util/ws/WsError;

    .line 120
    .line 121
    .line 122
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 123
    goto :goto_2

    .line 124
    :cond_8
    return-void
.end method
