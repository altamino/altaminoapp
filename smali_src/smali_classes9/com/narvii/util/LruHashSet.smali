.class public Lcom/narvii/util/LruHashSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PRESENT:Ljava/lang/Object;


# instance fields
.field lruCache:Lcom/narvii/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/LruHashSet;->PRESENT:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/LruHashSet$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/narvii/util/LruHashSet$1;-><init>(Lcom/narvii/util/LruHashSet;I)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    .line 11
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/LruHashSet;->PRESENT:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/LruCache;->evictAll()V

    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method protected onKeyEvicted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/util/LruHashSet;->PRESENT:Ljava/lang/Object;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public snapShot()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/LruCache;->snapshot()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
