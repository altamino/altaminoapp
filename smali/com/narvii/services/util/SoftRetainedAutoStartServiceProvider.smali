.class public abstract Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider;
.super Ljava/lang/Object;
.source "SoftRetainedAutoStartServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider;->cache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")TT;"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider;->createNew(Lcom/narvii/app/NVContext;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    iget-object p1, p0, Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider;->cache:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public abstract createNew(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")TT;"
        }
    .end annotation
.end method
