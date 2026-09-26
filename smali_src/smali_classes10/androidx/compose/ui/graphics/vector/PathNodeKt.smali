.class public final Landroidx/compose/ui/graphics/vector/PathNodeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,333:1\n283#1:334\n284#1,9:338\n283#1:348\n284#1,9:352\n283#1:362\n284#1,9:366\n283#1:376\n284#1,9:380\n283#1:390\n284#1,9:394\n283#1:404\n284#1,9:408\n283#1:418\n284#1,9:422\n283#1:432\n284#1,9:436\n283#1:446\n284#1,9:450\n283#1:460\n284#1,9:464\n283#1:474\n284#1,9:478\n283#1:488\n284#1,9:492\n283#1:502\n284#1,9:506\n283#1:516\n284#1,9:520\n283#1:530\n284#1,9:534\n283#1:544\n284#1,9:548\n283#1:558\n284#1,9:562\n283#1:572\n284#1,9:576\n1547#2:335\n1618#2,2:336\n1620#2:347\n1547#2:349\n1618#2,2:350\n1620#2:361\n1547#2:363\n1618#2,2:364\n1620#2:375\n1547#2:377\n1618#2,2:378\n1620#2:389\n1547#2:391\n1618#2,2:392\n1620#2:403\n1547#2:405\n1618#2,2:406\n1620#2:417\n1547#2:419\n1618#2,2:420\n1620#2:431\n1547#2:433\n1618#2,2:434\n1620#2:445\n1547#2:447\n1618#2,2:448\n1620#2:459\n1547#2:461\n1618#2,2:462\n1620#2:473\n1547#2:475\n1618#2,2:476\n1620#2:487\n1547#2:489\n1618#2,2:490\n1620#2:501\n1547#2:503\n1618#2,2:504\n1620#2:515\n1547#2:517\n1618#2,2:518\n1620#2:529\n1547#2:531\n1618#2,2:532\n1620#2:543\n1547#2:545\n1618#2,2:546\n1620#2:557\n1547#2:559\n1618#2,2:560\n1620#2:571\n1547#2:573\n1618#2,2:574\n1620#2:585\n1547#2:586\n1618#2,3:587\n*S KotlinDebug\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n153#1:334\n153#1:338,9\n157#1:348\n157#1:352,9\n161#1:362\n161#1:366,9\n165#1:376\n165#1:380,9\n169#1:390\n169#1:394,9\n173#1:404\n173#1:408,9\n177#1:418\n177#1:422,9\n181#1:432\n181#1:436,9\n185#1:446\n185#1:450,9\n196#1:460\n196#1:464,9\n207#1:474\n207#1:478,9\n216#1:488\n216#1:492,9\n225#1:502\n225#1:506,9\n234#1:516\n234#1:520,9\n243#1:530\n243#1:534,9\n247#1:544\n247#1:548,9\n251#1:558\n251#1:562,9\n263#1:572\n263#1:576,9\n153#1:335\n153#1:336,2\n153#1:347\n157#1:349\n157#1:350,2\n157#1:361\n161#1:363\n161#1:364,2\n161#1:375\n165#1:377\n165#1:378,2\n165#1:389\n169#1:391\n169#1:392,2\n169#1:403\n173#1:405\n173#1:406,2\n173#1:417\n177#1:419\n177#1:420,2\n177#1:431\n181#1:433\n181#1:434,2\n181#1:445\n185#1:447\n185#1:448,2\n185#1:459\n196#1:461\n196#1:462,2\n196#1:473\n207#1:475\n207#1:476,2\n207#1:487\n216#1:489\n216#1:490,2\n216#1:501\n225#1:503\n225#1:504,2\n225#1:515\n234#1:517\n234#1:518,2\n234#1:529\n243#1:531\n243#1:532,2\n243#1:543\n247#1:545\n247#1:546,2\n247#1:557\n251#1:559\n251#1:560,2\n251#1:571\n263#1:573\n263#1:574,2\n263#1:585\n283#1:586\n283#1:587,3\n*E\n"
.end annotation


# static fields
.field private static final ArcToKey:C = 'A'

.field private static final CloseKey:C = 'Z'

.field private static final CurveToKey:C = 'C'

.field private static final HorizontalToKey:C = 'H'

.field private static final LineToKey:C = 'L'

.field private static final MoveToKey:C = 'M'

.field private static final NUM_ARC_TO_ARGS:I = 0x7

.field private static final NUM_CURVE_TO_ARGS:I = 0x6

.field private static final NUM_HORIZONTAL_TO_ARGS:I = 0x1

.field private static final NUM_LINE_TO_ARGS:I = 0x2

.field private static final NUM_MOVE_TO_ARGS:I = 0x2

.field private static final NUM_QUAD_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_CURVE_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_QUAD_TO_ARGS:I = 0x2

.field private static final NUM_VERTICAL_TO_ARGS:I = 0x1

.field private static final QuadToKey:C = 'Q'

.field private static final ReflectiveCurveToKey:C = 'S'

.field private static final ReflectiveQuadToKey:C = 'T'

.field private static final RelativeArcToKey:C = 'a'

.field private static final RelativeCloseKey:C = 'z'

.field private static final RelativeCurveToKey:C = 'c'

.field private static final RelativeHorizontalToKey:C = 'h'

.field private static final RelativeLineToKey:C = 'l'

.field private static final RelativeMoveToKey:C = 'm'

.field private static final RelativeQuadToKey:C = 'q'

.field private static final RelativeReflectiveCurveToKey:C = 's'

.field private static final RelativeReflectiveQuadToKey:C = 't'

.field private static final RelativeVerticalToKey:C = 'v'

.field private static final VerticalToKey:C = 'V'


# direct methods
.method public static final a(C[F)Ljava/util/List;
    .locals 27
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[F)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "args"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 1
    :goto_0
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2b

    :cond_1
    const/16 v2, 0x6d

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v2, :cond_5

    .line 2
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v3}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 5
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 6
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    aget v8, v4, v6

    aget v9, v4, v5

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 7
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_2

    if-lez v3, :cond_2

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_2

    :cond_2
    if-lez v3, :cond_3

    .line 8
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 9
    :cond_3
    :goto_2
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto/16 :goto_2b

    :cond_5
    const/16 v2, 0x4d

    if-ne v0, v2, :cond_8

    .line 10
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v3}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 13
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 14
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    aget v8, v4, v6

    aget v9, v4, v5

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    if-lez v3, :cond_6

    .line 15
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_4

    .line 16
    :cond_6
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_7

    if-lez v3, :cond_7

    .line 17
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 18
    :cond_7
    :goto_4
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const/16 v2, 0x6c

    if-ne v0, v2, :cond_b

    .line 19
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v3}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 22
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 23
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v8, v4, v6

    aget v9, v4, v5

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 24
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_9

    if-lez v3, :cond_9

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_6

    .line 25
    :cond_9
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_a

    if-lez v3, :cond_a

    .line 26
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 27
    :cond_a
    :goto_6
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    const/16 v2, 0x4c

    if-ne v0, v2, :cond_e

    .line 28
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v3}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 31
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 32
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v8, v4, v6

    aget v9, v4, v5

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 33
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_c

    if-lez v3, :cond_c

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_8

    .line 34
    :cond_c
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_d

    if-lez v3, :cond_d

    .line 35
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 36
    :cond_d
    :goto_8
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const/16 v2, 0x68

    if-ne v0, v2, :cond_11

    .line 37
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v5}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 40
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 41
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v8, v4, v6

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    .line 42
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_f

    if-lez v3, :cond_f

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_a

    .line 43
    :cond_f
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_10

    if-lez v3, :cond_10

    .line 44
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 45
    :cond_10
    :goto_a
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    const/16 v2, 0x48

    if-ne v0, v2, :cond_14

    .line 46
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v5}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 49
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 50
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v8, v4, v6

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    .line 51
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_12

    if-lez v3, :cond_12

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_c

    .line 52
    :cond_12
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_13

    if-lez v3, :cond_13

    .line 53
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 54
    :cond_13
    :goto_c
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    const/16 v2, 0x76

    if-ne v0, v2, :cond_17

    .line 55
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v5}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 58
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 59
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v8, v4, v6

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    .line 60
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_15

    if-lez v3, :cond_15

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_e

    .line 61
    :cond_15
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_16

    if-lez v3, :cond_16

    .line 62
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 63
    :cond_16
    :goto_e
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    const/16 v2, 0x56

    if-ne v0, v2, :cond_1a

    .line 64
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v5}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 67
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 68
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v8, v4, v6

    invoke-direct {v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    .line 69
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_18

    if-lez v3, :cond_18

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_10

    .line 70
    :cond_18
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_19

    if-lez v3, :cond_19

    .line 71
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 72
    :cond_19
    :goto_10
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    const/16 v2, 0x63

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-ne v0, v2, :cond_1d

    .line 73
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v8

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v8}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v8, v4, 0x6

    .line 76
    invoke-static {v1, v4, v8}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v8

    .line 77
    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 78
    aget v12, v8, v6

    .line 79
    aget v13, v8, v5

    .line 80
    aget v14, v8, v3

    .line 81
    aget v16, v8, v10

    .line 82
    aget v17, v8, v9

    .line 83
    aget v18, v8, v7

    move-object v11, v15

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    .line 84
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    .line 85
    instance-of v11, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_1b

    if-lez v4, :cond_1b

    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v8, v6

    aget v7, v8, v5

    invoke-direct {v15, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_12

    .line 86
    :cond_1b
    instance-of v11, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_1c

    if-lez v4, :cond_1c

    .line 87
    new-instance v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v8, v6

    aget v7, v8, v5

    invoke-direct {v15, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    goto :goto_12

    :cond_1c
    move-object v15, v7

    .line 88
    :goto_12
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x5

    goto :goto_11

    :cond_1d
    const/16 v2, 0x43

    if-ne v0, v2, :cond_20

    .line 89
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v8

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v8}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v7, v4, 0x6

    .line 92
    invoke-static {v1, v4, v7}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v7

    .line 93
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 94
    aget v12, v7, v6

    .line 95
    aget v13, v7, v5

    .line 96
    aget v14, v7, v3

    .line 97
    aget v15, v7, v10

    .line 98
    aget v16, v7, v9

    const/4 v11, 0x5

    .line 99
    aget v17, v7, v11

    move-object v11, v8

    .line 100
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    .line 101
    instance-of v11, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_1e

    if-lez v4, :cond_1e

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_14

    .line 102
    :cond_1e
    instance-of v11, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_1f

    if-lez v4, :cond_1f

    .line 103
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 104
    :cond_1f
    :goto_14
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_20
    const/16 v2, 0x73

    if-ne v0, v2, :cond_23

    .line 105
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v9

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v9}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    .line 108
    invoke-static {v1, v4, v7}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v7

    .line 109
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 110
    aget v9, v7, v6

    .line 111
    aget v11, v7, v5

    .line 112
    aget v12, v7, v3

    .line 113
    aget v13, v7, v10

    .line 114
    invoke-direct {v8, v9, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 115
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v9, :cond_21

    if-lez v4, :cond_21

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_16

    .line 116
    :cond_21
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v9, :cond_22

    if-lez v4, :cond_22

    .line 117
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 118
    :cond_22
    :goto_16
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_23
    const/16 v2, 0x53

    if-ne v0, v2, :cond_26

    .line 119
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v9

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v9}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    .line 122
    invoke-static {v1, v4, v7}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v7

    .line 123
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 124
    aget v9, v7, v6

    .line 125
    aget v11, v7, v5

    .line 126
    aget v12, v7, v3

    .line 127
    aget v13, v7, v10

    .line 128
    invoke-direct {v8, v9, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    .line 129
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v9, :cond_24

    if-lez v4, :cond_24

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_18

    .line 130
    :cond_24
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v9, :cond_25

    if-lez v4, :cond_25

    .line 131
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 132
    :cond_25
    :goto_18
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_26
    const/16 v2, 0x71

    if-ne v0, v2, :cond_29

    .line 133
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v9

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v9}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    .line 136
    invoke-static {v1, v4, v7}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v7

    .line 137
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 138
    aget v9, v7, v6

    .line 139
    aget v11, v7, v5

    .line 140
    aget v12, v7, v3

    .line 141
    aget v13, v7, v10

    .line 142
    invoke-direct {v8, v9, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    .line 143
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v9, :cond_27

    if-lez v4, :cond_27

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_1a

    .line 144
    :cond_27
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v9, :cond_28

    if-lez v4, :cond_28

    .line 145
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 146
    :cond_28
    :goto_1a
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_29
    const/16 v2, 0x51

    if-ne v0, v2, :cond_2c

    .line 147
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v9

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v9}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v7, v4, 0x4

    .line 150
    invoke-static {v1, v4, v7}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v7

    .line 151
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 152
    aget v9, v7, v6

    .line 153
    aget v11, v7, v5

    .line 154
    aget v12, v7, v3

    .line 155
    aget v13, v7, v10

    .line 156
    invoke-direct {v8, v9, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    .line 157
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v9, :cond_2a

    if-lez v4, :cond_2a

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_1c

    .line 158
    :cond_2a
    instance-of v9, v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v9, :cond_2b

    if-lez v4, :cond_2b

    .line 159
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v8, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 160
    :cond_2b
    :goto_1c
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2c
    const/16 v2, 0x74

    if-ne v0, v2, :cond_2f

    .line 161
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v3}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 164
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 165
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v8, v4, v6

    aget v9, v4, v5

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    .line 166
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_2d

    if-lez v3, :cond_2d

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_1e

    .line 167
    :cond_2d
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_2e

    if-lez v3, :cond_2e

    .line 168
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 169
    :cond_2e
    :goto_1e
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2f
    const/16 v2, 0x54

    if-ne v0, v2, :cond_32

    .line 170
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v3}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/m0;

    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    .line 173
    invoke-static {v1, v3, v4}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v4

    .line 174
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v8, v4, v6

    aget v9, v4, v5

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    .line 175
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_30

    if-lez v3, :cond_30

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_20

    .line 176
    :cond_30
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_31

    if-lez v3, :cond_31

    .line 177
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v3, v4, v6

    aget v4, v4, v5

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 178
    :cond_31
    :goto_20
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_32
    const/16 v2, 0x61

    const/4 v7, 0x7

    const/4 v11, 0x0

    if-ne v0, v2, :cond_37

    .line 179
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v7

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v7}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v7, v4, 0x7

    .line 182
    invoke-static {v1, v4, v7}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v7

    .line 183
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 184
    aget v20, v7, v6

    .line 185
    aget v21, v7, v5

    .line 186
    aget v22, v7, v3

    .line 187
    aget v13, v7, v10

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_33

    move/from16 v23, v5

    goto :goto_22

    :cond_33
    move/from16 v23, v6

    .line 188
    :goto_22
    aget v13, v7, v9

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_34

    move/from16 v24, v5

    :goto_23
    const/4 v13, 0x5

    goto :goto_24

    :cond_34
    move/from16 v24, v6

    goto :goto_23

    .line 189
    :goto_24
    aget v25, v7, v13

    .line 190
    aget v26, v7, v8

    move-object/from16 v19, v12

    .line 191
    invoke-direct/range {v19 .. v26}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 192
    instance-of v13, v12, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v13, :cond_35

    if-lez v4, :cond_35

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v12, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_25

    .line 193
    :cond_35
    instance-of v13, v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v13, :cond_36

    if-lez v4, :cond_36

    .line 194
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v12, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 195
    :cond_36
    :goto_25
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_37
    const/16 v2, 0x41

    if-ne v0, v2, :cond_3c

    .line 196
    new-instance v0, Lj8/i;

    array-length v2, v1

    sub-int/2addr v2, v7

    invoke-direct {v0, v6, v2}, Lj8/i;-><init>(II)V

    invoke-static {v0, v7}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    move-result-object v0

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lkotlin/collections/m0;

    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    move-result v4

    add-int/lit8 v7, v4, 0x7

    .line 199
    invoke-static {v1, v4, v7}, Lkotlin/collections/l;->o([FII)[F

    move-result-object v7

    .line 200
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 201
    aget v20, v7, v6

    .line 202
    aget v21, v7, v5

    .line 203
    aget v22, v7, v3

    .line 204
    aget v13, v7, v10

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_38

    move/from16 v23, v5

    goto :goto_27

    :cond_38
    move/from16 v23, v6

    .line 205
    :goto_27
    aget v13, v7, v9

    invoke-static {v13, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_39

    move/from16 v24, v5

    :goto_28
    const/4 v13, 0x5

    goto :goto_29

    :cond_39
    move/from16 v24, v6

    goto :goto_28

    .line 206
    :goto_29
    aget v25, v7, v13

    .line 207
    aget v26, v7, v8

    move-object/from16 v19, v12

    .line 208
    invoke-direct/range {v19 .. v26}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    .line 209
    instance-of v14, v12, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v14, :cond_3a

    if-lez v4, :cond_3a

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v12, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_2a

    .line 210
    :cond_3a
    instance-of v14, v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v14, :cond_3b

    if-lez v4, :cond_3b

    .line 211
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v4, v7, v6

    aget v7, v7, v5

    invoke-direct {v12, v4, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 212
    :cond_3b
    :goto_2a
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :goto_2b
    return-object v0

    .line 213
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
