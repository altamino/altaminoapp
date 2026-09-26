.class public final Lcom/google/common/base/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/s$b;,
        Lcom/google/common/base/s$c;
    }
.end annotation


# instance fields
.field private final limit:I

.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/common/base/s$c;

.field private final trimmer:Lcom/google/common/base/d;


# direct methods
.method private constructor <init>(Lcom/google/common/base/s$c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/base/d;->f()Lcom/google/common/base/d;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/common/base/s;-><init>(Lcom/google/common/base/s$c;ZLcom/google/common/base/d;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/s$c;ZLcom/google/common/base/d;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/s;->strategy:Lcom/google/common/base/s$c;

    iput-boolean p2, p0, Lcom/google/common/base/s;->omitEmptyStrings:Z

    iput-object p3, p0, Lcom/google/common/base/s;->trimmer:Lcom/google/common/base/d;

    iput p4, p0, Lcom/google/common/base/s;->limit:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/base/s;)Lcom/google/common/base/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/common/base/s;->trimmer:Lcom/google/common/base/d;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/common/base/s;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/common/base/s;->omitEmptyStrings:Z

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/common/base/s;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/common/base/s;->limit:I

    .line 3
    return p0
.end method

.method public static d(C)Lcom/google/common/base/s;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/d;->d(C)Lcom/google/common/base/d;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/common/base/s;->e(Lcom/google/common/base/d;)Lcom/google/common/base/s;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static e(Lcom/google/common/base/d;)Lcom/google/common/base/s;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v0, Lcom/google/common/base/s;

    .line 6
    .line 7
    new-instance v1, Lcom/google/common/base/s$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/google/common/base/s$a;-><init>(Lcom/google/common/base/d;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/common/base/s;-><init>(Lcom/google/common/base/s$c;)V

    .line 14
    return-object v0
.end method

.method private g(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/base/s;->strategy:Lcom/google/common/base/s$c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lcom/google/common/base/s$c;->a(Lcom/google/common/base/s;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method


# virtual methods
.method public f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/common/base/s;->g(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
