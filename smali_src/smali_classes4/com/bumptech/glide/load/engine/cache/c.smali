.class final Lcom/bumptech/glide/load/engine/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/c$b;,
        Lcom/bumptech/glide/load/engine/cache/c$a;
    }
.end annotation


# instance fields
.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/engine/cache/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final writeLockPool:Lcom/bumptech/glide/load/engine/cache/c$b;


# direct methods
.method constructor <init>()V
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
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/c;->locks:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/c$b;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/c$b;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/c;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/c$b;

    .line 18
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/c;->locks:Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/bumptech/glide/load/engine/cache/c$a;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/c;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/c$b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/c$b;->a()Lcom/bumptech/glide/load/engine/cache/c$a;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/c;->locks:Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    :goto_0
    iget p1, v0, Lcom/bumptech/glide/load/engine/cache/c$a;->interestedThreads:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, v0, Lcom/bumptech/glide/load/engine/cache/c$a;->interestedThreads:I

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/cache/c$a;->lock:Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/c;->locks:Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/bumptech/glide/load/engine/cache/c$a;

    .line 14
    .line 15
    iget v1, v0, Lcom/bumptech/glide/load/engine/cache/c$a;->interestedThreads:I

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-lt v1, v2, :cond_2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    .line 21
    iput v1, v0, Lcom/bumptech/glide/load/engine/cache/c$a;->interestedThreads:I

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/c;->locks:Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/bumptech/glide/load/engine/cache/c$a;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/c;->writeLockPool:Lcom/bumptech/glide/load/engine/cache/c$b;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/c$b;->b(Lcom/bumptech/glide/load/engine/cache/c$a;)V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v4, "Removed the wrong lock, expected to remove: "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v0, ", but actually removed: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, ", safeKey: "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v2

    .line 85
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/cache/c$a;->lock:Ljava/util/concurrent/locks/Lock;

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 91
    return-void

    .line 92
    .line 93
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v3, "Cannot release a lock that is not held, safeKey: "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p1, ", interestedThreads: "

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    iget p1, v0, Lcom/bumptech/glide/load/engine/cache/c$a;->interestedThreads:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v1

    .line 125
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p1
.end method
