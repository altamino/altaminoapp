.class Lcom/narvii/location/LocationService$1;
.super Ljava/lang/Object;
.source "LocationService.java"

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

    .line 225
    iput-object p1, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    iget-object v2, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    iget-object v2, v2, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v2, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    iget-object v3, v2, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v2, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    iget-object v2, v2, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 235
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/location/LocationService$Task;

    .line 237
    iget-wide v5, v4, Lcom/narvii/location/LocationService$Task;->minTime:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    iget-wide v5, v4, Lcom/narvii/location/LocationService$Task;->maxTime:J

    cmp-long v7, v5, v0

    if-gez v7, :cond_0

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v3, v3, 0x1

    .line 242
    iget-object v4, v4, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 243
    invoke-interface {v4, v5}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService.checkpoint, timeouts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    iget-object v1, v0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    iget-object v0, v0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/narvii/location/LocationService$1;->this$0:Lcom/narvii/location/LocationService;

    invoke-static {v0}, Lcom/narvii/location/LocationService;->access$000(Lcom/narvii/location/LocationService;)V

    :cond_4
    return-void
.end method
