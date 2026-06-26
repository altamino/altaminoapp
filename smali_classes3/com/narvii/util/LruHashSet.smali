.class public Lcom/narvii/util/LruHashSet;
.super Ljava/lang/Object;
.source "LruHashSet.java"


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

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/narvii/util/LruHashSet;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/narvii/util/LruHashSet$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/util/LruHashSet$1;-><init>(Lcom/narvii/util/LruHashSet;I)V

    iput-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

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

    .line 29
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    sget-object v1, Lcom/narvii/util/LruHashSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    invoke-virtual {v0}, Lcom/narvii/util/LruCache;->evictAll()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/narvii/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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

    .line 33
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/util/LruHashSet;->PRESENT:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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

    .line 41
    iget-object v0, p0, Lcom/narvii/util/LruHashSet;->lruCache:Lcom/narvii/util/LruCache;

    invoke-virtual {v0}, Lcom/narvii/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
