.class final Lcom/google/common/collect/q0;
.super Lcom/google/common/collect/t0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t0<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/q0;

.field private static final serialVersionUID:J


# instance fields
.field private transient nullsFirst:Lcom/google/common/collect/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t0<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private transient nullsLast:Lcom/google/common/collect/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t0<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/q0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/common/collect/q0;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/common/collect/q0;->INSTANCE:Lcom/google/common/collect/q0;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/t0;-><init>()V

    .line 4
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/q0;->INSTANCE:Lcom/google/common/collect/q0;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Comparable;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Comparable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/q0;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public f()Lcom/google/common/collect/t0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/t0<",
            "TS;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/collect/a1;->INSTANCE:Lcom/google/common/collect/a1;

    .line 3
    return-object v0
.end method

.method public g(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural()"

    return-object v0
.end method
