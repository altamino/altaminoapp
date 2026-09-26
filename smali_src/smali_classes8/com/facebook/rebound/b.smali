.class public Lcom/facebook/rebound/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActiveSprings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/rebound/e;",
            ">;"
        }
    .end annotation
.end field

.field private mIdle:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/rebound/j;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpringLooper:Lcom/facebook/rebound/h;

.field private final mSpringRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/rebound/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/h;)V
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
    iput-object v0, p0, Lcom/facebook/rebound/b;->mSpringRegistry:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/facebook/rebound/b;->mActiveSprings:Ljava/util/Set;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/facebook/rebound/b;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/facebook/rebound/b;->mIdle:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Lcom/facebook/rebound/b;->mSpringLooper:Lcom/facebook/rebound/h;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lcom/facebook/rebound/h;->a(Lcom/facebook/rebound/b;)V

    .line 35
    return-void

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v0, "springLooper is required"

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/b;->mSpringRegistry:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/facebook/rebound/e;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/facebook/rebound/b;->mActiveSprings:Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/facebook/rebound/b;->d()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/facebook/rebound/b;->mIdle:Z

    .line 25
    .line 26
    iget-object p1, p0, Lcom/facebook/rebound/b;->mSpringLooper:Lcom/facebook/rebound/h;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/facebook/rebound/h;->b()V

    .line 30
    :cond_0
    return-void

    .line 31
    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "springId "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p1, " does not reference a registered spring"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v0
.end method

.method b(D)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/b;->mActiveSprings:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/facebook/rebound/e;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/facebook/rebound/e;->t()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 30
    .line 31
    div-double v2, p1, v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/e;->b(D)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/facebook/rebound/b;->mActiveSprings:Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public c()Lcom/facebook/rebound/e;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/facebook/rebound/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/facebook/rebound/e;-><init>(Lcom/facebook/rebound/b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/facebook/rebound/b;->f(Lcom/facebook/rebound/e;)V

    .line 9
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/rebound/b;->mIdle:Z

    return v0
.end method

.method public e(D)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/b;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/facebook/rebound/j;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p0}, Lcom/facebook/rebound/j;->b(Lcom/facebook/rebound/b;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/rebound/b;->b(D)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/facebook/rebound/b;->mActiveSprings:Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/facebook/rebound/b;->mIdle:Z

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/facebook/rebound/b;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    check-cast p2, Lcom/facebook/rebound/j;

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, p0}, Lcom/facebook/rebound/j;->a(Lcom/facebook/rebound/b;)V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    iget-boolean p1, p0, Lcom/facebook/rebound/b;->mIdle:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/facebook/rebound/b;->mSpringLooper:Lcom/facebook/rebound/h;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/facebook/rebound/h;->c()V

    .line 68
    :cond_3
    return-void
.end method

.method f(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/rebound/b;->mSpringRegistry:Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->e()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/rebound/b;->mSpringRegistry:Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->e()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "spring is already registered"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "spring is required"

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method
