.class public Lcom/narvii/services/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# instance fields
.field private final context:Lcom/narvii/app/NVContext;

.field private final providers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/services/ServiceProvider<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 25
    iput-object p1, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public declared-synchronized addService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/services/ServiceManager;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/services/ServiceProvider<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/services/ServiceManager;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    if-lez v0, :cond_0

    instance-of p2, p2, Lcom/narvii/services/AutostartServiceProvider;

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized create()V
    .locals 3

    monitor-enter p0

    .line 29
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 30
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 33
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/services/AutostartServiceProvider;

    if-eqz v2, :cond_1

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    .line 99
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 100
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service manager jump from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 104
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 107
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/services/ServiceProvider;

    .line 108
    iget-object v4, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3, v4, v2}, Lcom/narvii/services/ServiceProvider;->destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 137
    monitor-exit p0

    return-object v0

    .line 139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/ServiceProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 141
    monitor-exit p0

    return-object v1

    .line 143
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v2}, Lcom/narvii/services/ServiceProvider;->create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 145
    monitor-exit p0

    return-object v1

    .line 147
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 148
    iget-object v1, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v1, v2}, Lcom/narvii/services/ServiceProvider;->start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 150
    :cond_3
    iget v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_4

    .line 151
    iget-object v1, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v1, v2}, Lcom/narvii/services/ServiceProvider;->resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasService(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 4

    monitor-enter p0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 72
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 74
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 78
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized peekService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeService(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v1, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/ServiceProvider;

    if-eqz v1, :cond_2

    .line 162
    iget v2, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3, v0}, Lcom/narvii/services/ServiceProvider;->pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3, v0}, Lcom/narvii/services/ServiceProvider;->stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    :cond_1
    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 170
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v2, v0}, Lcom/narvii/services/ServiceProvider;->destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restart()V
    .locals 4

    monitor-enter p0

    .line 187
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->pause()V

    :cond_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->stop()V

    :cond_1
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->destroy()V

    :cond_2
    if-lt v0, v3, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->create()V

    :cond_3
    if-lt v0, v2, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->start()V

    :cond_4
    if-lt v0, v1, :cond_5

    .line 204
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 4

    monitor-enter p0

    .line 56
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 59
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service manager jump from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 65
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 41
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service manager jump from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/services/ServiceManager;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 45
    :cond_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 46
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 50
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    .line 84
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 85
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service manager jump from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/services/ServiceManager;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 88
    :cond_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 89
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 93
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
