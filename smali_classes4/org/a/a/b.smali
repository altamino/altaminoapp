.class public final Lorg/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/b$a;
    }
.end annotation


# instance fields
.field private a:Lorg/a/a/b;

.field private b:Lorg/a/a/b;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/a/a/b;->d:Ljava/util/List;

    .line 17
    invoke-static {p1}, Lorg/a/a/b;->a(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b;->c:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/d;

    .line 23
    invoke-interface {v2}, Lorg/a/a/d;->b()I

    move-result v3

    iget v4, p0, Lorg/a/a/b;->c:I

    if-ge v3, v4, :cond_0

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v2}, Lorg/a/a/d;->a()I

    move-result v3

    iget v4, p0, Lorg/a/a/b;->c:I

    if-le v3, v4, :cond_1

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, p0, Lorg/a/a/b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 33
    new-instance p1, Lorg/a/a/b;

    invoke-direct {p1, v0}, Lorg/a/a/b;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lorg/a/a/b;->a:Lorg/a/a/b;

    .line 35
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 36
    new-instance p1, Lorg/a/a/b;

    invoke-direct {p1, v1}, Lorg/a/a/b;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lorg/a/a/b;->b:Lorg/a/a/b;

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;)I"
        }
    .end annotation

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/a/a/d;

    .line 44
    invoke-interface {v3}, Lorg/a/a/d;->a()I

    move-result v4

    .line 45
    invoke-interface {v3}, Lorg/a/a/d;->b()I

    move-result v3

    if-eq v1, v0, :cond_1

    if-ge v4, v1, :cond_2

    :cond_1
    move v1, v4

    :cond_2
    if-eq v2, v0, :cond_3

    if-le v3, v2, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    add-int/2addr v1, v2

    .line 53
    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private static a(Lorg/a/a/b;Lorg/a/a/d;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/a/b;",
            "Lorg/a/a/d;",
            ")",
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lorg/a/a/b;->a(Lorg/a/a/d;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/a/a/d;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/a/d;",
            "I)",
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v1, p0, Lorg/a/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/d;

    .line 101
    sget-object v3, Lorg/a/a/b$1;->a:[I

    const/4 v4, 0x1

    add-int/lit8 v5, p2, -0x1

    aget v3, v3, v5

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v2}, Lorg/a/a/d;->b()I

    move-result v3

    invoke-interface {p1}, Lorg/a/a/d;->a()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {v2}, Lorg/a/a/d;->a()I

    move-result v3

    invoke-interface {p1}, Lorg/a/a/d;->b()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/a/d;",
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;",
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/d;

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/d;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/a/d;",
            ")",
            "Ljava/util/List<",
            "Lorg/a/a/d;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget v1, p0, Lorg/a/a/b;->c:I

    invoke-interface {p1}, Lorg/a/a/d;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 61
    iget-object v1, p0, Lorg/a/a/b;->b:Lorg/a/a/b;

    invoke-static {v1, p1}, Lorg/a/a/b;->a(Lorg/a/a/b;Lorg/a/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V

    .line 1093
    sget v1, Lorg/a/a/b$a;->b:I

    invoke-direct {p0, p1, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;I)Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-static {p1, v0, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 63
    :cond_0
    iget v1, p0, Lorg/a/a/b;->c:I

    invoke-interface {p1}, Lorg/a/a/d;->b()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Lorg/a/a/b;->a:Lorg/a/a/b;

    invoke-static {v1, p1}, Lorg/a/a/b;->a(Lorg/a/a/b;Lorg/a/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V

    .line 2089
    sget v1, Lorg/a/a/b$a;->a:I

    invoke-direct {p0, p1, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;I)Ljava/util/List;

    move-result-object v1

    .line 66
    invoke-static {p1, v0, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lorg/a/a/b;->d:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V

    .line 70
    iget-object v1, p0, Lorg/a/a/b;->a:Lorg/a/a/b;

    invoke-static {v1, p1}, Lorg/a/a/b;->a(Lorg/a/a/b;Lorg/a/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V

    .line 71
    iget-object v1, p0, Lorg/a/a/b;->b:Lorg/a/a/b;

    invoke-static {v1, p1}, Lorg/a/a/b;->a(Lorg/a/a/b;Lorg/a/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/a/a/b;->a(Lorg/a/a/d;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-object v0
.end method
