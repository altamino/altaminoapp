.class public final Landroidx/compose/ui/semantics/SemanticsNodeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n+ 2 SemanticsEntity.kt\nandroidx/compose/ui/semantics/SemanticsEntity\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,457:1\n415#1,5:458\n415#1,5:476\n76#2,13:463\n76#2,13:481\n76#2,13:494\n460#3,11:507\n*S KotlinDebug\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n*L\n402#1:458,5\n405#1:476,5\n402#1:463,13\n405#1:481,13\n419#1:494,13\n425#1:507,11\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->f(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->k(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->l(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final e(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    const v0, 0x77359400

    .line 8
    add-int/2addr p0, v0

    .line 9
    return p0
.end method

.method private static final f(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;
    .locals 1
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    :goto_0
    if-eqz p0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    return-object p0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method private static final g(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y0()Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :cond_0
    aget-object v2, p0, v1

    .line 18
    .line 19
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {v2, p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->g(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 33
    .line 34
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    if-lt v1, v0, :cond_0

    .line 37
    :cond_2
    return-object p1
.end method

.method static synthetic h(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
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
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->g(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final i(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;
    .locals 3
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->r0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->n([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v1}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    :goto_1
    if-eqz v1, :cond_4

    .line 60
    .line 61
    :goto_2
    if-eqz p0, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Landroidx/compose/ui/semantics/SemanticsModifier;->Q0()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->p()Z

    .line 75
    move-result v2

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    move-object v0, p0

    .line 79
    goto :goto_3

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 86
    goto :goto_2

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    sget-object v2, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v2}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 106
    move-result-object p0

    .line 107
    .line 108
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move-object p0, v0

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    :goto_3
    return-object v0
.end method

.method public static final j(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;
    .locals 3
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->r0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/compose/ui/node/EntityList;->n([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    sget-object v1, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v1}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    :goto_1
    if-eqz v1, :cond_3

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    move-object v0, p0

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->s1()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    sget-object v2, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroidx/compose/ui/node/EntityList$Companion;->f()I

    .line 79
    move-result v2

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v2}, Landroidx/compose/ui/node/EntityList;->p([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move-object p0, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_2
    return-object v0
.end method

.method private static final k(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->s()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/ui/semantics/Role;

    .line 17
    return-object p0
.end method

.method private static final l(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    const v0, 0x3b9aca00

    .line 8
    add-int/2addr p0, v0

    .line 9
    return p0
.end method
