.class Lcom/google/common/collect/m$d;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/m;


# direct methods
.method constructor <init>(Lcom/google/common/collect/m;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/m;->clear()V

    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/m;->A()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    .line 19
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/google/common/collect/m;->l(Lcom/google/common/collect/m;Ljava/lang/Object;)I

    .line 34
    move-result v0

    .line 35
    const/4 v2, -0x1

    .line 36
    .line 37
    if-eq v0, v2, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v0}, Lcom/google/common/collect/m;->m(Lcom/google/common/collect/m;I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    const/4 v1, 0x1

    .line 55
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/m;->C()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/m;->A()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    .line 19
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    check-cast p1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/common/collect/m;->N()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/common/collect/m;->n(Lcom/google/common/collect/m;)I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/common/collect/m;->o(Lcom/google/common/collect/m;)Ljava/lang/Object;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/common/collect/m;->p(Lcom/google/common/collect/m;)[I

    .line 59
    move-result-object v6

    .line 60
    .line 61
    iget-object p1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/common/collect/m;->f(Lcom/google/common/collect/m;)[Ljava/lang/Object;

    .line 65
    move-result-object v7

    .line 66
    .line 67
    iget-object p1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/google/common/collect/m;->g(Lcom/google/common/collect/m;)[Ljava/lang/Object;

    .line 71
    move-result-object v8

    .line 72
    move v4, v0

    .line 73
    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/n;->f(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 76
    move-result p1

    .line 77
    const/4 v2, -0x1

    .line 78
    .line 79
    if-ne p1, v2, :cond_2

    .line 80
    return v1

    .line 81
    .line 82
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/m;->M(II)V

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/google/common/collect/m;->h(Lcom/google/common/collect/m;)I

    .line 91
    .line 92
    iget-object p1, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/common/collect/m;->G()V

    .line 96
    const/4 p1, 0x1

    .line 97
    return p1

    .line 98
    :cond_3
    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$d;->this$0:Lcom/google/common/collect/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/m;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
