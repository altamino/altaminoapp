.class Lcom/google/common/collect/n0$b;
.super Lcom/google/common/collect/n0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n0;->d(Ljava/util/Comparator;)Lcom/google/common/collect/n0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n0$e<",
        "TK0;>;"
    }
.end annotation


# instance fields
.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/collect/n0$b;->val$comparator:Ljava/util/Comparator;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/n0$e;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
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
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/common/collect/n0$b;->val$comparator:Ljava/util/Comparator;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 8
    return-object v0
.end method
