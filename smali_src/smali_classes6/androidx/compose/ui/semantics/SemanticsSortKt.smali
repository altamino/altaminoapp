.class public final Landroidx/compose/ui/semantics/SemanticsSortKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsSort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsSort.kt\nandroidx/compose/ui/semantics/SemanticsSortKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n32#2,6:196\n126#2,3:202\n32#2,4:205\n129#2,2:209\n37#2:211\n131#2:212\n32#2,6:213\n32#2,6:219\n1#3:225\n*S KotlinDebug\n*F\n+ 1 SemanticsSort.kt\nandroidx/compose/ui/semantics/SemanticsSortKt\n*L\n50#1:196,6\n53#1:202,3\n53#1:205,4\n53#1:209,2\n53#1:211\n53#1:212\n55#1:213,6\n178#1:219,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;
    .locals 3
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "predicate"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    return-object p0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S()Ljava/util/List;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    :goto_0
    if-ge v1, v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    .line 43
    invoke-static {v2, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->a(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    return-object v2

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "list"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S()Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    move v4, v3

    .line 33
    .line 34
    :goto_0
    if-ge v4, v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 44
    move-result v6

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    new-instance v6, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v6, p0, v5}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsSortKt;->d(Ljava/util/List;)Ljava/util/List;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 67
    move-result v1

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 74
    move-result v1

    .line 75
    move v2, v3

    .line 76
    .line 77
    :goto_1
    if-ge v2, v1, :cond_3

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    check-cast v4, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/NodeLocationHolder;->c()Landroidx/compose/ui/node/LayoutNode;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 97
    move-result p0

    .line 98
    .line 99
    :goto_2
    if-ge v3, p0, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_3

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-static {v1, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->b(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 119
    .line 120
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    return-object p1
.end method

.method public static synthetic c(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->b(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static final d(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->a(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 8
    move-object v0, p0

    .line 9
    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/t;->B(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :catch_0
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 21
    .line 22
    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Location:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->a(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 26
    .line 27
    check-cast p0, Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/collections/t;->B(Ljava/util/List;)V

    .line 35
    :goto_0
    return-object v0
.end method

.method public static final e(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->i(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 27
    move-result-object v0

    .line 28
    :cond_2
    return-object v0
.end method
