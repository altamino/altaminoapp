.class public final Landroidx/compose/ui/node/MeasureAndLayoutDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/MeasureAndLayoutDelegate$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeasureAndLayoutDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasureAndLayoutDelegate.kt\nandroidx/compose/ui/node/MeasureAndLayoutDelegate\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 DepthSortedSet.kt\nandroidx/compose/ui/node/DepthSortedSet\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,363:1\n236#1,8:368\n245#1,2:387\n244#1,6:389\n236#1,14:395\n1182#2:364\n1161#2,2:365\n100#3:367\n100#3:376\n91#3,10:377\n728#4,2:409\n460#4,11:411\n460#4,11:428\n32#5,6:422\n*S KotlinDebug\n*F\n+ 1 MeasureAndLayoutDelegate.kt\nandroidx/compose/ui/node/MeasureAndLayoutDelegate\n*L\n205#1:368,8\n205#1:387,2\n205#1:389,6\n222#1:395,14\n62#1:364\n62#1:365,2\n47#1:367\n206#1:376\n207#1:377,10\n252#1:409,2\n256#1:411,11\n315#1:428,11\n287#1:422,6\n*E\n"
.end annotation


# instance fields
.field private final consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private duringMeasureLayout:Z

.field private measureIteration:J

.field private final onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final postponedMeasureRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final root:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rootConstraints:Landroidx/compose/ui/unit/Constraints;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "root"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/node/DepthSortedSet;

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/node/Owner;->Companion:Landroidx/compose/ui/node/Owner$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/node/Owner$Companion;->a()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2}, Landroidx/compose/ui/node/DepthSortedSet;-><init>(Z)V

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 24
    .line 25
    new-instance v2, Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;-><init>()V

    .line 29
    .line 30
    iput-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 31
    .line 32
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 33
    .line 34
    const/16 v3, 0x10

    .line 35
    .line 36
    new-array v3, v3, [Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 41
    .line 42
    iput-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 43
    .line 44
    const-wide/16 v2, 0x1

    .line 45
    .line 46
    iput-wide v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureIteration:J

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    iput-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/ui/node/Owner$Companion;->a()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    new-instance v1, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p1, v0, v2}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/DepthSortedSet;Ljava/util/List;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    .line 68
    :goto_0
    iput-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 69
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->o(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final c()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    :cond_0
    aget-object v3, v0, v2

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 18
    .line 19
    .line 20
    invoke-interface {v3}, Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;->j()V

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    if-lt v2, v1, :cond_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 30
    return-void
.end method

.method public static synthetic e(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d(Z)V

    .line 9
    return-void
.end method

.method private final f(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->b1(Landroidx/compose/ui/unit/Constraints;)Z

    .line 7
    move-result p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, p2, v0}, Landroidx/compose/ui/node/LayoutNode;->c1(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;ILjava/lang/Object;)Z

    .line 13
    move-result p2

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v1, v5, v4, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->s(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 42
    .line 43
    if-ne p1, v2, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v1, v5, v4, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->q(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z

    .line 47
    :cond_2
    :goto_1
    return p2
.end method

.method private final h(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->e()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private final o(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->e()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 33
    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v2

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->f(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 45
    move-result v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v0, v1

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f0()Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 62
    .line 63
    if-ne p1, v3, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1, v1}, Landroidx/compose/ui/node/LayoutNode;->Z0(II)V

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f1()V

    .line 71
    .line 72
    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->c(Landroidx/compose/ui/node/LayoutNode;)V

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->a()V

    .line 83
    .line 84
    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 85
    .line 86
    check-cast p1, Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    xor-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 100
    move-result v3

    .line 101
    move v4, v1

    .line 102
    .line 103
    :goto_3
    if-ge v4, v3, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 113
    move-result v6

    .line 114
    .line 115
    if-eqz v6, :cond_5

    .line 116
    const/4 v6, 0x2

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v5, v1, v6, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->s(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z

    .line 120
    .line 121
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 122
    goto :goto_3

    .line 123
    .line 124
    :cond_6
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 128
    :cond_7
    move v1, v0

    .line 129
    :cond_8
    return v1
.end method

.method public static synthetic q(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->p(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic s(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->r(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final d(Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/OnPositionedDispatcher;->d(Landroidx/compose/ui/node/LayoutNode;)V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->a()V

    .line 15
    return-void
.end method

.method public final g(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 17
    .line 18
    if-eqz v0, :cond_7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 34
    move-result v1

    .line 35
    .line 36
    if-lez v1, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    :cond_1
    aget-object v3, v0, v2

    .line 44
    .line 45
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 49
    move-result v4

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    iget-object v4, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/DepthSortedSet;->f(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->o(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 66
    move-result v4

    .line 67
    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->g(Landroidx/compose/ui/node/LayoutNode;)V

    .line 72
    .line 73
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    if-lt v2, v1, :cond_1

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->f(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->o(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 93
    :cond_5
    return-void

    .line 94
    .line 95
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v0, "Failed requirement."

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 106
    .line 107
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    const-string v0, "Check failed."

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public final j()J
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureIteration:J

    .line 7
    return-wide v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v1, "measureIteration should be only used during the measure/layout pass"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public final k(Le8/a;)Z
    .locals 7
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-string v1, "Failed requirement."

    .line 9
    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_7

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 21
    const/4 v2, 0x1

    .line 22
    xor-int/2addr v0, v2

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    .line 37
    move-result v0

    .line 38
    xor-int/2addr v0, v2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 43
    move v3, v1

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->d()Z

    .line 47
    move-result v4

    .line 48
    xor-int/2addr v4, v2

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->e()Landroidx/compose/ui/node/LayoutNode;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v4}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;)Z

    .line 58
    move-result v5

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;)Landroidx/compose/ui/node/LayoutNode;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    if-ne v4, v6, :cond_0

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    move v3, v2

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_1
    if-eqz p1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v3, v1

    .line 78
    .line 79
    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->a()V

    .line 87
    :cond_4
    move v1, v3

    .line 88
    goto :goto_3

    .line 89
    .line 90
    :goto_2
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 91
    throw p1

    .line 92
    .line 93
    .line 94
    :cond_5
    :goto_3
    invoke-direct {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c()V

    .line 95
    return v1

    .line 96
    .line 97
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p1

    .line 106
    .line 107
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p1

    .line 116
    .line 117
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p1
.end method

.method public final l(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 3
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    .line 15
    const-string v2, "Failed requirement."

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->K0()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 36
    xor-int/2addr v0, v1

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/DepthSortedSet;->f(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->b(J)Landroidx/compose/ui/unit/Constraints;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->f(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f0()Z

    .line 61
    move-result p2

    .line 62
    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 67
    move-result p2

    .line 68
    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f1()V

    .line 73
    .line 74
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->c(Landroidx/compose/ui/node/LayoutNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->a()V

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :goto_1
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 93
    throw p1

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_2
    invoke-direct {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c()V

    .line 97
    return-void

    .line 98
    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1

    .line 108
    .line 109
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p1

    .line 118
    .line 119
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p1

    .line 128
    .line 129
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    move-result-object p2

    .line 134
    .line 135
    .line 136
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p1
.end method

.method public final m(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "node"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->f(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 11
    return-void
.end method

.method public final n(Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public final p(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 16
    .line 17
    aget v0, v1, v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-eq v0, v2, :cond_6

    .line 22
    const/4 v3, 0x2

    .line 23
    .line 24
    if-eq v0, v3, :cond_6

    .line 25
    const/4 v3, 0x3

    .line 26
    .line 27
    if-ne v0, v3, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f0()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 44
    .line 45
    if-eqz p1, :cond_7

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->a()V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M0()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 56
    move-result p2

    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->f0()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-ne v0, v2, :cond_2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_2
    if-eqz p2, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 77
    move-result p2

    .line 78
    .line 79
    if-ne p2, v2, :cond_3

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->a(Landroidx/compose/ui/node/LayoutNode;)V

    .line 86
    .line 87
    :cond_4
    :goto_0
    iget-boolean p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 88
    .line 89
    if-nez p1, :cond_7

    .line 90
    move v1, v2

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_5
    new-instance p1, Lw7/s;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 97
    throw p1

    .line 98
    .line 99
    :cond_6
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->a()V

    .line 105
    :cond_7
    :goto_1
    return v1
.end method

.method public final r(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v0

    .line 16
    .line 17
    aget v0, v1, v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    const/4 v3, 0x2

    .line 23
    .line 24
    if-eq v0, v3, :cond_6

    .line 25
    const/4 v3, 0x3

    .line 26
    .line 27
    if-ne v0, v3, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    :cond_0
    :goto_0
    move v1, v2

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N0()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 44
    move-result p2

    .line 45
    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 50
    move-result p2

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 62
    move-result p2

    .line 63
    .line 64
    if-ne p2, v1, :cond_3

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->a(Landroidx/compose/ui/node/LayoutNode;)V

    .line 71
    .line 72
    :cond_4
    :goto_1
    iget-boolean p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 73
    .line 74
    if-nez p1, :cond_0

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_5
    new-instance p1, Lw7/s;

    .line 78
    .line 79
    .line 80
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 81
    throw p1

    .line 82
    .line 83
    :cond_6
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 89
    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->a()V

    .line 94
    goto :goto_0

    .line 95
    :goto_2
    return v1
.end method

.method public final t(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(JJ)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 18
    .line 19
    xor-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->b(J)Landroidx/compose/ui/unit/Constraints;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N0()V

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/DepthSortedSet;->a(Landroidx/compose/ui/node/LayoutNode;)V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "Failed requirement."

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    :cond_2
    :goto_1
    return-void
.end method
