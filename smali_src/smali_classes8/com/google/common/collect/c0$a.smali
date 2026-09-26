.class Lcom/google/common/collect/c0$a;
.super Lcom/google/common/collect/l1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c0;->p()Lcom/google/common/collect/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final asMapItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;+",
            "Lcom/google/common/collect/y<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/c0;

.field valueItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/collect/c0$a;->this$0:Lcom/google/common/collect/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/l1;-><init>()V

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/common/collect/c0;->map:Lcom/google/common/collect/b0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/common/collect/b0;->j()Lcom/google/common/collect/d0;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/common/collect/d0;->m()Lcom/google/common/collect/l1;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/common/collect/c0$a;->asMapItr:Ljava/util/Iterator;

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/common/collect/c0$a;->currentKey:Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/i0;->g()Lcom/google/common/collect/l1;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/common/collect/c0$a;->valueItr:Ljava/util/Iterator;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->valueItr:Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->asMapItr:Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/common/collect/c0$a;->currentKey:Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/google/common/collect/y;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/common/collect/y;->m()Lcom/google/common/collect/l1;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/common/collect/c0$a;->valueItr:Ljava/util/Iterator;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->currentKey:Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/common/collect/c0$a;->valueItr:Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/google/common/collect/l0;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->valueItr:Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->asMapItr:Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/c0$a;->a()Ljava/util/Map$Entry;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
