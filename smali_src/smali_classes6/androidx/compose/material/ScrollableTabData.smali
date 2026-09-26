.class final Landroidx/compose/material/ScrollableTabData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final coroutineScope:Lkotlinx/coroutines/o0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollState:Landroidx/compose/foundation/ScrollState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedTab:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/o0;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/ScrollState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "scrollState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "coroutineScope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/material/ScrollableTabData;->coroutineScope:Lkotlinx/coroutines/o0;

    .line 18
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/material/ScrollableTabData;)Landroidx/compose/foundation/ScrollState;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 3
    return-object p0
.end method

.method private final b(Landroidx/compose/material/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/TabPosition;",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    check-cast p4, Landroidx/compose/material/TabPosition;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4}, Landroidx/compose/material/TabPosition;->b()F

    .line 10
    move-result p4

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 14
    move-result p4

    .line 15
    add-int/2addr p4, p3

    .line 16
    .line 17
    iget-object p3, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroidx/compose/foundation/ScrollState;->j()I

    .line 21
    move-result p3

    .line 22
    .line 23
    sub-int p3, p4, p3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/material/TabPosition;->a()F

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 31
    move-result v0

    .line 32
    .line 33
    div-int/lit8 v1, p3, 0x2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/material/TabPosition;->c()F

    .line 37
    move-result p1

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 41
    move-result p1

    .line 42
    .line 43
    div-int/lit8 p1, p1, 0x2

    .line 44
    sub-int/2addr v1, p1

    .line 45
    sub-int/2addr v0, v1

    .line 46
    sub-int/2addr p4, p3

    .line 47
    const/4 p1, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static {p4, p1}, Lj8/m;->e(II)I

    .line 51
    move-result p2

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1, p2}, Lj8/m;->n(III)I

    .line 55
    move-result p1

    .line 56
    return p1
.end method


# virtual methods
.method public final c(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V
    .locals 6
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "density"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "tabPositions"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/material/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eq v0, p4, :cond_1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/material/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    invoke-static {p3, p4}, Lkotlin/collections/t;->m0(Ljava/util/List;I)Ljava/lang/Object;

    .line 31
    move-result-object p4

    .line 32
    .line 33
    check-cast p4, Landroidx/compose/material/TabPosition;

    .line 34
    .line 35
    if-eqz p4, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p4, p1, p2, p3}, Landroidx/compose/material/ScrollableTabData;->b(Landroidx/compose/material/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I

    .line 39
    move-result p1

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroidx/compose/foundation/ScrollState;->k()I

    .line 45
    move-result p2

    .line 46
    .line 47
    if-eq p2, p1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/compose/material/ScrollableTabData;->coroutineScope:Lkotlinx/coroutines/o0;

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    new-instance v3, Landroidx/compose/material/ScrollableTabData$onLaidOut$1$1;

    .line 54
    const/4 p2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, p0, p1, p2}, Landroidx/compose/material/ScrollableTabData$onLaidOut$1$1;-><init>(Landroidx/compose/material/ScrollableTabData;ILkotlin/coroutines/d;)V

    .line 58
    const/4 v4, 0x3

    .line 59
    const/4 v5, 0x0

    .line 60
    .line 61
    .line 62
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 63
    :cond_1
    return-void
.end method
