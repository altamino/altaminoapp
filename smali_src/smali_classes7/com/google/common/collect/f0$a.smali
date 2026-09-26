.class public final Lcom/google/common/collect/f0$a;
.super Lcom/google/common/collect/d0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d0$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/d0$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Ljava/util/Comparator;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/common/collect/f0$a;->comparator:Ljava/util/Comparator;

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/y$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$a;->m(Ljava/lang/Object;)Lcom/google/common/collect/f0$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Lcom/google/common/collect/y$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$a;->m(Ljava/lang/Object;)Lcom/google/common/collect/f0$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$a;->m(Ljava/lang/Object;)Lcom/google/common/collect/f0$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic i([Ljava/lang/Object;)Lcom/google/common/collect/d0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$a;->n([Ljava/lang/Object;)Lcom/google/common/collect/f0$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0$a;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/f0$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic l()Lcom/google/common/collect/d0;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/f0$a;->p()Lcom/google/common/collect/f0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m(Ljava/lang/Object;)Lcom/google/common/collect/f0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/f0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/common/collect/d0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 4
    return-object p0
.end method

.method public varargs n([Ljava/lang/Object;)Lcom/google/common/collect/f0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/f0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/common/collect/d0$a;->i([Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 4
    return-object p0
.end method

.method public o(Ljava/lang/Iterable;)Lcom/google/common/collect/f0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/f0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/common/collect/d0$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$a;

    .line 4
    return-object p0
.end method

.method public p()Lcom/google/common/collect/f0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/common/collect/f0$a;->comparator:Ljava/util/Comparator;

    .line 5
    .line 6
    iget v2, p0, Lcom/google/common/collect/y$a;->size:I

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lcom/google/common/collect/f0;->E(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/f0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iput v1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/google/common/collect/y$a;->forceCopy:Z

    .line 20
    return-object v0
.end method
