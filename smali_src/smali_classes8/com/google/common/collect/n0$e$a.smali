.class Lcom/google/common/collect/n0$e$a;
.super Lcom/google/common/collect/n0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0$e;->b(I)Lcom/google/common/collect/n0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n0$d<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/n0$e;

.field final synthetic val$expectedValuesPerKey:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/n0$e;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/collect/n0$e$a;->this$0:Lcom/google/common/collect/n0$e;

    .line 3
    .line 4
    iput p2, p0, Lcom/google/common/collect/n0$e$a;->val$expectedValuesPerKey:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/n0$d;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/collect/j0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/j0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n0$e$a;->this$0:Lcom/google/common/collect/n0$e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/n0$e;->c()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/collect/n0$c;

    .line 9
    .line 10
    iget v2, p0, Lcom/google/common/collect/n0$e$a;->val$expectedValuesPerKey:I

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/google/common/collect/n0$c;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/google/common/collect/o0;->b(Ljava/util/Map;Lcom/google/common/base/u;)Lcom/google/common/collect/j0;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
