.class Lcom/google/common/collect/n0$a;
.super Lcom/google/common/collect/n0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0;->b(I)Lcom/google/common/collect/n0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n0$e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$expectedKeys:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/common/collect/n0$a;->val$expectedKeys:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/n0$e;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/common/collect/n0$a;->val$expectedKeys:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/collect/u0;->c(I)Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
