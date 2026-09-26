.class public Lx9/o;
.super Lx9/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/h<",
        "Lx9/e;",
        "Lx9/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final playlistCollector:Lba/e;

.field private final streamCollector:Loa/m;

.field private final userCollector:Ly9/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lx9/h;-><init>(I)V

    .line 4
    .line 5
    new-instance v0, Loa/m;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Loa/m;-><init>(I)V

    .line 9
    .line 10
    iput-object v0, p0, Lx9/o;->streamCollector:Loa/m;

    .line 11
    .line 12
    new-instance v0, Ly9/c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Ly9/c;-><init>(I)V

    .line 16
    .line 17
    iput-object v0, p0, Lx9/o;->userCollector:Ly9/c;

    .line 18
    .line 19
    new-instance v0, Lba/e;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Lba/e;-><init>(I)V

    .line 23
    .line 24
    iput-object v0, p0, Lx9/o;->playlistCollector:Lba/e;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lx9/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lx9/o;->h(Lx9/f;)Lx9/e;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Lx9/h;->e()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    iget-object v1, p0, Lx9/o;->streamCollector:Loa/m;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lx9/h;->e()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    iget-object v1, p0, Lx9/o;->userCollector:Ly9/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lx9/h;->e()Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    iget-object v1, p0, Lx9/o;->playlistCollector:Lba/e;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lx9/h;->e()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public h(Lx9/f;)Lx9/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Loa/l;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lx9/o;->streamCollector:Loa/m;

    .line 7
    .line 8
    check-cast p1, Loa/l;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Loa/m;->i(Loa/l;)Loa/j;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Ly9/b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lx9/o;->userCollector:Ly9/c;

    .line 20
    .line 21
    check-cast p1, Ly9/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ly9/c;->h(Ly9/b;)Ly9/a;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    instance-of v0, p1, Lba/d;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lx9/o;->playlistCollector:Lba/e;

    .line 33
    .line 34
    check-cast p1, Lba/d;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lba/e;->h(Lba/d;)Lba/b;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "Invalid extractor type: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0
.end method
