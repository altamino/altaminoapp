.class public Lcom/narvii/services/ServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized addService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/services/ServiceManager;->hasService(Ljava/lang/String;)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v1, "service "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p1, " already exists"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_1
    monitor-exit p0

    .line 60
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

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/services/ServiceManager;->hasService(Ljava/lang/String;)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    instance-of p2, p2, Lcom/narvii/services/AutostartServiceProvider;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v1, "service "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p1, " already exists"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_1
    monitor-exit p0

    .line 58
    throw p1
.end method

.method public declared-synchronized create()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    instance-of v2, v2, Lcom/narvii/services/AutostartServiceProvider;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v1, "service manager jump from "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, " to 0"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 42
    .line 43
    iput v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    check-cast v3, Lcom/narvii/services/ServiceProvider;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v4, v2}, Lcom/narvii/services/ServiceProvider;->destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 87
    .line 88
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_2
    monitor-exit p0

    .line 96
    throw v0
.end method

.method public declared-synchronized getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/services/ServiceProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    monitor-exit p0

    .line 24
    return-object v1

    .line 25
    .line 26
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2}, Lcom/narvii/services/ServiceProvider;->create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;

    .line 30
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    monitor-exit p0

    .line 34
    return-object v1

    .line 35
    .line 36
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 37
    const/4 v3, 0x1

    .line 38
    .line 39
    if-le v1, v3, :cond_3

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1, v2}, Lcom/narvii/services/ServiceProvider;->start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_3
    :goto_0
    iget v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 50
    const/4 v3, 0x2

    .line 51
    .line 52
    if-le v1, v3, :cond_4

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1, v2}, Lcom/narvii/services/ServiceProvider;->resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    return-object v2

    .line 65
    :goto_1
    monitor-exit p0

    .line 66
    throw p1
.end method

.method public declared-synchronized hasService(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    return p1

    .line 26
    :goto_2
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x2

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit p0

    .line 60
    throw v0
.end method

.method public declared-synchronized peekService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized removeService(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget v2, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 22
    const/4 v3, 0x3

    .line 23
    .line 24
    if-lt v2, v3, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v3, v0}, Lcom/narvii/services/ServiceProvider;->pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 v3, 0x2

    .line 34
    .line 35
    if-lt v2, v3, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v3, v0}, Lcom/narvii/services/ServiceProvider;->stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 41
    :cond_1
    const/4 v3, 0x1

    .line 42
    .line 43
    if-lt v2, v3, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v2, v0}, Lcom/narvii/services/ServiceProvider;->destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit p0

    .line 62
    throw p1
.end method

.method public declared-synchronized restart()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 4
    const/4 v1, 0x3

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    const/4 v2, 0x2

    .line 14
    .line 15
    if-lt v0, v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->stop()V

    .line 19
    :cond_1
    const/4 v3, 0x1

    .line 20
    .line 21
    if-lt v0, v3, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 25
    .line 26
    :cond_2
    if-lt v0, v3, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->create()V

    .line 30
    .line 31
    :cond_3
    if-lt v0, v2, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->start()V

    .line 35
    .line 36
    :cond_4
    if-lt v0, v1, :cond_5

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/services/ServiceManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_5
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit p0

    .line 43
    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x3

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit p0

    .line 60
    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x2

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    .line 13
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v2, "service manager jump from "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, " to 2"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_1
    :goto_0
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_2
    monitor-exit p0

    .line 91
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/services/ServiceManager;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    .line 11
    if-le v0, v2, :cond_1

    .line 12
    .line 13
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v2, "service manager jump from "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, " to 1"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_1
    :goto_0
    iput v1, p0, Lcom/narvii/services/ServiceManager;->status:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/services/ServiceManager;->services:Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->providers:Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/services/ServiceProvider;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/services/ServiceManager;->context:Lcom/narvii/app/NVContext;

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, v3, v2}, Lcom/narvii/services/ServiceProvider;->stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_2
    monitor-exit p0

    .line 91
    throw v0
.end method
