.class public Landroidx/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDestroyed:Z

.field private mID:J

.field mRS:Landroidx/renderscript/RenderScript;


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Landroidx/renderscript/RenderScript;->validate()V

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    .line 14
    return-void
.end method

.method private helpDestroy()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->isAlive()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    iget-wide v2, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroidx/renderscript/RenderScript;->nObjDestroy(J)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    iput-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 52
    :cond_2
    return-void

    .line 53
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw v0
.end method


# virtual methods
.method checkValid()V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Invalid object."

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/renderscript/BaseObj;->helpDestroy()V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 11
    .line 12
    const-string v1, "Object already destroyed."

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    return v1

    .line 20
    .line 21
    :cond_2
    check-cast p1, Landroidx/renderscript/BaseObj;

    .line 22
    .line 23
    iget-wide v2, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 24
    .line 25
    iget-wide v4, p1, Landroidx/renderscript/BaseObj;->mID:J

    .line 26
    .line 27
    cmp-long p1, v2, v4

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    move v0, v1

    .line 32
    :goto_0
    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/renderscript/BaseObj;->helpDestroy()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method getID(Landroidx/renderscript/RenderScript;)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/renderscript/BaseObj;->mDestroyed:Z

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 22
    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "using object with mismatched context."

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    return-wide v0

    .line 35
    .line 36
    :cond_2
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    .line 37
    .line 38
    const-string v0, "Internal error: Object id 0."

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    .line 44
    :cond_3
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "using a destroyed object."

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1
.end method

.method getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    const-wide/32 v2, 0xfffffff

    and-long/2addr v2, v0

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method setID(J)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/renderscript/BaseObj;->mID:J

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    .line 14
    .line 15
    const-string p2, "Internal Error, reset of object ID."

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1
.end method
