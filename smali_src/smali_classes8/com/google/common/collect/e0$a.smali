.class public final Lcom/google/common/collect/e0$a;
.super Lcom/google/common/collect/c0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c0$c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/c0$c;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$c;->builderMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/common/collect/c0$c;->keyComparator:Ljava/util/Comparator;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/common/collect/t0;->a(Ljava/util/Comparator;)Lcom/google/common/collect/t0;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/common/collect/t0;->d()Lcom/google/common/collect/t0;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/common/collect/t0;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/a0;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/c0$c;->valueComparator:Ljava/util/Comparator;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/google/common/collect/e0;->v(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/e0;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
