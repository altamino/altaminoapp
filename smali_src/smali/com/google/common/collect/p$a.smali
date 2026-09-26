.class Lcom/google/common/collect/p$a;
.super Lcom/google/common/collect/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/p;-><init>(Lcom/google/common/collect/p$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public d(II)Lcom/google/common/collect/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/common/primitives/e;->e(II)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p$a;->k(I)Lcom/google/common/collect/p;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public e(JJ)Lcom/google/common/collect/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/g;->a(JJ)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p$a;->k(I)Lcom/google/common/collect/p;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/p;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p$a;->k(I)Lcom/google/common/collect/p;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(ZZ)Lcom/google/common/collect/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/common/primitives/a;->a(ZZ)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p$a;->k(I)Lcom/google/common/collect/p;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(ZZ)Lcom/google/common/collect/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/google/common/primitives/a;->a(ZZ)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p$a;->k(I)Lcom/google/common/collect/p;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public i()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method k(I)Lcom/google/common/collect/p;
    .locals 0

    .line 1
    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/p;->a()Lcom/google/common/collect/p;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    if-lez p1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/common/collect/p;->b()Lcom/google/common/collect/p;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {}, Lcom/google/common/collect/p;->c()Lcom/google/common/collect/p;

    .line 18
    move-result-object p1

    .line 19
    :goto_0
    return-object p1
.end method
