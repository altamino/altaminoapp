.class public abstract Lcom/google/common/collect/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/n0$d;,
        Lcom/google/common/collect/n0$e;,
        Lcom/google/common/collect/n0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_KEYS:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/n0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/n0;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/n0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n0$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/collect/n0;->b(I)Lcom/google/common/collect/n0$e;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static b(I)Lcom/google/common/collect/n0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/n0$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "expectedKeys"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/common/collect/k;->b(ILjava/lang/String;)I

    .line 6
    .line 7
    new-instance v0, Lcom/google/common/collect/n0$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/common/collect/n0$a;-><init>(I)V

    .line 11
    return-object v0
.end method

.method public static c()Lcom/google/common/collect/n0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n0$e<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/t0;->c()Lcom/google/common/collect/t0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/collect/n0;->d(Ljava/util/Comparator;)Lcom/google/common/collect/n0$e;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static d(Ljava/util/Comparator;)Lcom/google/common/collect/n0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/google/common/collect/n0$e<",
            "TK0;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v0, Lcom/google/common/collect/n0$b;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/common/collect/n0$b;-><init>(Ljava/util/Comparator;)V

    .line 9
    return-object v0
.end method
