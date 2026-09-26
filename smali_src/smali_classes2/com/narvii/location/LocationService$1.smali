.class Lcom/narvii/location/LocationService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/location/LocationService;


# direct methods
.method constructor <init>(Lcom/narvii/location/LocationService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    check-cast v4, Lcom/narvii/location/LocationService$Task;

    .line 42
    .line 43
    iget-wide v5, v4, Lcom/narvii/location/LocationService$Task;->minTime:J

    .line 44
    .line 45
    cmp-long v5, v5, v0

    .line 46
    .line 47
    if-lez v5, :cond_1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-wide v5, v4, Lcom/narvii/location/LocationService$Task;->maxTime:J

    .line 51
    .line 52
    cmp-long v5, v5, v0

    .line 53
    .line 54
    if-gez v5, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    iget-object v4, v4, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    .line 62
    .line 63
    if-eqz v4, :cond_0

    .line 64
    const/4 v5, 0x0

    .line 65
    .line 66
    .line 67
    invoke-interface {v4, v5}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    if-lez v3, :cond_3

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v1, "LocationService.checkpoint, timeouts="

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    .line 93
    .line 94
    iget-object v1, v0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    :cond_3
    iget-object v0, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lcom/narvii/location/LocationService;->a(Lcom/narvii/location/LocationService;)V

    .line 115
    :cond_4
    return-void
.end method
