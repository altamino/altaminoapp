.class Lcom/google/common/collect/i0$a;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i0;->j(Ljava/util/Iterator;Lcom/google/common/base/p;)Lcom/google/common/collect/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$retainIfTrue:Lcom/google/common/base/p;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/p;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/collect/i0$a;->val$unfiltered:Ljava/util/Iterator;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/common/collect/i0$a;->val$retainIfTrue:Lcom/google/common/base/p;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/i0$a;->val$unfiltered:Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/collect/i0$a;->val$unfiltered:Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/collect/i0$a;->val$retainIfTrue:Lcom/google/common/base/p;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Lcom/google/common/base/p;->apply(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    return-object v0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/b;->b()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
