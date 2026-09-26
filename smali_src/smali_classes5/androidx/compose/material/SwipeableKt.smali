.class public final Landroidx/compose/material/SwipeableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,890:1\n25#2:891\n25#2:898\n1057#3,6:892\n1057#3,6:899\n135#4:905\n764#5:906\n855#5,2:907\n764#5:909\n855#5,2:910\n286#5,2:912\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableKt\n*L\n502#1:891\n509#1:898\n502#1:892,6\n509#1:899,6\n574#1:905\n739#1:906\n739#1:907,2\n740#1:909\n740#1:910,2\n797#1:912,2\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(FFLjava/util/Set;Le8/p;FF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SwipeableKt;->c(FFLjava/util/Set;Le8/p;FF)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/material/SwipeableKt;->e(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(FFLjava/util/Set;Le8/p;FF)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/Set<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/p<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p2}, Landroidx/compose/material/SwipeableKt;->d(FLjava/util/Set;)Ljava/util/List;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-eq v0, v2, :cond_5

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Number;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    check-cast p2, Ljava/lang/Number;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 34
    move-result p2

    .line 35
    .line 36
    cmpg-float p1, p1, p0

    .line 37
    .line 38
    if-gtz p1, :cond_1

    .line 39
    .line 40
    cmpl-float p1, p4, p5

    .line 41
    .line 42
    if-ltz p1, :cond_0

    .line 43
    return p2

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    move-result-object p4

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p1, p4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Ljava/lang/Number;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 61
    move-result p1

    .line 62
    .line 63
    cmpg-float p0, p0, p1

    .line 64
    .line 65
    if-gez p0, :cond_3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    neg-float p1, p5

    .line 68
    .line 69
    cmpg-float p1, p4, p1

    .line 70
    .line 71
    if-gtz p1, :cond_2

    .line 72
    return v0

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object p4

    .line 81
    .line 82
    .line 83
    invoke-interface {p3, p1, p4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    check-cast p1, Ljava/lang/Number;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 90
    move-result p1

    .line 91
    .line 92
    cmpl-float p0, p0, p1

    .line 93
    .line 94
    if-lez p0, :cond_4

    .line 95
    :cond_3
    move p1, p2

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    :goto_0
    move p1, v0

    .line 98
    goto :goto_1

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    check-cast p0, Ljava/lang/Number;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 108
    move-result p1

    .line 109
    :cond_6
    :goto_1
    return p1
.end method

.method private static final d(FLjava/util/Set;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Set<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    move-object v5, v2

    .line 26
    .line 27
    check-cast v5, Ljava/lang/Number;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 31
    move-result v5

    .line 32
    float-to-double v5, v5

    .line 33
    float-to-double v7, p0

    .line 34
    add-double/2addr v7, v3

    .line 35
    .line 36
    cmpg-double v3, v5, v7

    .line 37
    .line 38
    if-gtz v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {v0}, Lkotlin/collections/t;->y0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    move-object v5, v2

    .line 67
    .line 68
    check-cast v5, Ljava/lang/Number;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 72
    move-result v5

    .line 73
    float-to-double v5, v5

    .line 74
    float-to-double v7, p0

    .line 75
    sub-double/2addr v7, v3

    .line 76
    .line 77
    cmpl-double v5, v5, v7

    .line 78
    .line 79
    if-ltz v5, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {v1}, Lkotlin/collections/t;->A0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Lkotlin/collections/t;->q(Ljava/lang/Object;)Ljava/util/List;

    .line 93
    move-result-object p0

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_4
    if-nez p0, :cond_5

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    move-result-object p0

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-static {v0, p0}, Lkotlin/jvm/internal/t;->d(Ljava/lang/Float;Ljava/lang/Float;)Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    move-result-object p0

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    const/4 p1, 0x2

    .line 114
    .line 115
    new-array p1, p1, [Ljava/lang/Float;

    .line 116
    const/4 v1, 0x0

    .line 117
    .line 118
    aput-object v0, p1, v1

    .line 119
    const/4 v0, 0x1

    .line 120
    .line 121
    aput-object p0, p1, v0

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 125
    move-result-object p0

    .line 126
    :goto_2
    return-object p0
.end method

.method private static final e(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    .line 22
    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v0, v1

    .line 35
    .line 36
    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    move-object v1, p0

    .line 44
    .line 45
    check-cast v1, Ljava/lang/Float;

    .line 46
    :cond_2
    return-object v1
.end method

.method public static final f(Landroidx/compose/material/SwipeableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0    # Landroidx/compose/material/SwipeableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
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
    new-instance v0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;-><init>(Landroidx/compose/material/SwipeableState;)V

    .line 11
    return-object v0
.end method

.method public static final g(Ljava/lang/Object;Le8/l;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/SwipeableState;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le8/l<",
            "-TT;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "onValueChange"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x44ed1106

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    and-int/lit8 p5, p5, 0x4

    .line 19
    .line 20
    if-eqz p5, :cond_0

    .line 21
    .line 22
    sget-object p2, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/compose/material/SwipeableDefaults;->a()Landroidx/compose/animation/core/SpringSpec;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    :cond_0
    const p5, -0x1d58f75c

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    if-ne v0, v2, :cond_1

    .line 45
    .line 46
    new-instance v0, Landroidx/compose/material/SwipeableState;

    .line 47
    .line 48
    sget-object v2, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1;->INSTANCE:Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0, p2, v2}, Landroidx/compose/material/SwipeableState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/l;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 58
    .line 59
    check-cast v0, Landroidx/compose/material/SwipeableState;

    .line 60
    .line 61
    .line 62
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 70
    move-result-object p5

    .line 71
    const/4 v1, 0x0

    .line 72
    .line 73
    if-ne p2, p5, :cond_2

    .line 74
    .line 75
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    const/4 p5, 0x2

    .line 77
    .line 78
    .line 79
    invoke-static {p2, v1, p5, v1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 87
    .line 88
    check-cast p2, Landroidx/compose/runtime/MutableState;

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 92
    move-result-object p5

    .line 93
    .line 94
    new-instance v2, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$1;

    .line 95
    .line 96
    .line 97
    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$1;-><init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Lkotlin/coroutines/d;)V

    .line 98
    .line 99
    and-int/lit8 v1, p4, 0x8

    .line 100
    .line 101
    and-int/lit8 p4, p4, 0xe

    .line 102
    or-int/2addr p4, v1

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p5, v2, p3, p4}, Landroidx/compose/runtime/EffectsKt;->e(Ljava/lang/Object;Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 109
    move-result-object p4

    .line 110
    .line 111
    new-instance p5, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$2;

    .line 112
    .line 113
    .line 114
    invoke-direct {p5, p0, v0, p1, p2}, Landroidx/compose/material/SwipeableKt$rememberSwipeableStateFor$2;-><init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Le8/l;Landroidx/compose/runtime/MutableState;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p4, p5, p3, v1}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 121
    return-object v0
.end method

.method public static final h(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;F)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/SwipeableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/material/ResistanceConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "ZZ",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Le8/p<",
            "-TT;-TT;+",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;",
            "Landroidx/compose/material/ResistanceConfig;",
            "F)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "$this$swipeable"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "state"

    .line 10
    .line 11
    move-object/from16 v12, p1

    .line 12
    .line 13
    .line 14
    invoke-static {v12, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v1, "anchors"

    .line 17
    .line 18
    move-object/from16 v13, p2

    .line 19
    .line 20
    .line 21
    invoke-static {v13, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v1, "orientation"

    .line 24
    .line 25
    move-object/from16 v14, p3

    .line 26
    .line 27
    .line 28
    invoke-static {v14, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    const-string v1, "thresholds"

    .line 31
    .line 32
    move-object/from16 v15, p7

    .line 33
    .line 34
    .line 35
    invoke-static {v15, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;

    .line 44
    move-object v2, v1

    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    move-object/from16 v4, p2

    .line 49
    .line 50
    move-object/from16 v5, p3

    .line 51
    .line 52
    move/from16 v6, p4

    .line 53
    .line 54
    move/from16 v7, p5

    .line 55
    .line 56
    move-object/from16 v8, p6

    .line 57
    .line 58
    move-object/from16 v9, p7

    .line 59
    .line 60
    move-object/from16 v10, p8

    .line 61
    .line 62
    move/from16 v11, p9

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;F)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    :goto_0
    new-instance v11, Landroidx/compose/material/SwipeableKt$swipeable$3;

    .line 73
    move-object v2, v11

    .line 74
    .line 75
    move-object/from16 v3, p2

    .line 76
    .line 77
    move-object/from16 v4, p1

    .line 78
    .line 79
    move-object/from16 v5, p3

    .line 80
    .line 81
    move/from16 v6, p4

    .line 82
    .line 83
    move-object/from16 v7, p6

    .line 84
    .line 85
    move/from16 v8, p5

    .line 86
    .line 87
    move-object/from16 v9, p8

    .line 88
    .line 89
    move-object/from16 v10, p7

    .line 90
    move-object v12, v11

    .line 91
    .line 92
    move/from16 v11, p9

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material/SwipeableKt$swipeable$3;-><init>(Ljava/util/Map;Landroidx/compose/material/SwipeableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLandroidx/compose/material/ResistanceConfig;Le8/p;F)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method

.method public static synthetic i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 16

    .line 1
    .line 2
    move/from16 v0, p10

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 8
    move v6, v1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    move/from16 v6, p4

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    const/4 v1, 0x0

    .line 17
    move v7, v1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    move/from16 v7, p5

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    const/4 v1, 0x0

    .line 26
    move-object v8, v1

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_2
    move-object/from16 v8, p6

    .line 30
    .line 31
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    sget-object v1, Landroidx/compose/material/SwipeableKt$swipeable$1;->INSTANCE:Landroidx/compose/material/SwipeableKt$swipeable$1;

    .line 36
    move-object v9, v1

    .line 37
    goto :goto_3

    .line 38
    .line 39
    :cond_3
    move-object/from16 v9, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    sget-object v10, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 46
    .line 47
    .line 48
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 49
    move-result-object v11

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x6

    .line 53
    const/4 v15, 0x0

    .line 54
    .line 55
    .line 56
    invoke-static/range {v10 .. v15}, Landroidx/compose/material/SwipeableDefaults;->d(Landroidx/compose/material/SwipeableDefaults;Ljava/util/Set;FFILjava/lang/Object;)Landroidx/compose/material/ResistanceConfig;

    .line 57
    move-result-object v1

    .line 58
    move-object v10, v1

    .line 59
    goto :goto_4

    .line 60
    .line 61
    :cond_4
    move-object/from16 v10, p8

    .line 62
    .line 63
    :goto_4
    and-int/lit16 v0, v0, 0x100

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/material/SwipeableDefaults;->b()F

    .line 71
    move-result v0

    .line 72
    move v11, v0

    .line 73
    goto :goto_5

    .line 74
    .line 75
    :cond_5
    move/from16 v11, p9

    .line 76
    .line 77
    :goto_5
    move-object/from16 v2, p0

    .line 78
    .line 79
    move-object/from16 v3, p1

    .line 80
    .line 81
    move-object/from16 v4, p2

    .line 82
    .line 83
    move-object/from16 v5, p3

    .line 84
    .line 85
    .line 86
    invoke-static/range {v2 .. v11}, Landroidx/compose/material/SwipeableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;F)Landroidx/compose/ui/Modifier;

    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method
