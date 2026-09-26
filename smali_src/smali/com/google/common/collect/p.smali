.class public abstract Lcom/google/common/collect/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/p$b;
    }
.end annotation


# static fields
.field private static final ACTIVE:Lcom/google/common/collect/p;

.field private static final GREATER:Lcom/google/common/collect/p;

.field private static final LESS:Lcom/google/common/collect/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/p$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/common/collect/p$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/common/collect/p;->ACTIVE:Lcom/google/common/collect/p;

    .line 8
    .line 9
    new-instance v0, Lcom/google/common/collect/p$b;

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/common/collect/p$b;-><init>(I)V

    .line 14
    .line 15
    sput-object v0, Lcom/google/common/collect/p;->LESS:Lcom/google/common/collect/p;

    .line 16
    .line 17
    new-instance v0, Lcom/google/common/collect/p$b;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/google/common/collect/p$b;-><init>(I)V

    .line 22
    .line 23
    sput-object v0, Lcom/google/common/collect/p;->GREATER:Lcom/google/common/collect/p;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->LESS:Lcom/google/common/collect/p;

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->GREATER:Lcom/google/common/collect/p;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->ACTIVE:Lcom/google/common/collect/p;

    return-object v0
.end method

.method public static j()Lcom/google/common/collect/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->ACTIVE:Lcom/google/common/collect/p;

    return-object v0
.end method


# virtual methods
.method public abstract d(II)Lcom/google/common/collect/p;
.end method

.method public abstract e(JJ)Lcom/google/common/collect/p;
.end method

.method public abstract f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;
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
.end method

.method public abstract g(ZZ)Lcom/google/common/collect/p;
.end method

.method public abstract h(ZZ)Lcom/google/common/collect/p;
.end method

.method public abstract i()I
.end method
