.class public final Landroidx/compose/ui/node/InnerPlaceable;
.super Landroidx/compose/ui/node/LayoutNodeWrapper;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/InnerPlaceable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInnerPlaceable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InnerPlaceable.kt\nandroidx/compose/ui/node/InnerPlaceable\n+ 2 LayoutNodeWrapper.kt\nandroidx/compose/ui/node/LayoutNodeWrapper\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 HitTestResult.kt\nandroidx/compose/ui/node/HitTestResult\n*L\n1#1,161:1\n230#2,2:162\n232#2,2:175\n460#3,11:164\n460#3,11:177\n222#3,11:190\n179#4,2:188\n181#4,2:201\n*S KotlinDebug\n*F\n+ 1 InnerPlaceable.kt\nandroidx/compose/ui/node/InnerPlaceable\n*L\n38#1:162,2\n38#1:175,2\n40#1:164,11\n88#1:177,11\n123#1:190,11\n120#1:188,2\n120#1:201,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/InnerPlaceable$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/node/InnerPlaceable$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/InnerPlaceable$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/InnerPlaceable;->Companion:Landroidx/compose/ui/node/InnerPlaceable$Companion;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/Paint;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->d()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/Paint;->j(J)V

    .line 22
    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->q(F)V

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->b()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->p(I)V

    .line 36
    .line 37
    sput-object v0, Landroidx/compose/ui/node/InnerPlaceable;->innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
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
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->k0()Landroidx/compose/ui/layout/MeasureScope;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    .line 15
    return-void
.end method


# virtual methods
.method public E0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->E0()F

    move-result v0

    return v0
.end method

.method public H0(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    move-result p1

    return p1
.end method

.method public L0(J)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->L0(J)I

    move-result p1

    return p1
.end method

.method public L1(Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 17
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;C:",
            "Ljava/lang/Object;",
            "M::",
            "Landroidx/compose/ui/Modifier;",
            ">(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move-wide/from16 v9, p2

    .line 7
    .line 8
    move-object/from16 v11, p4

    .line 9
    .line 10
    const-string v1, "hitTestSource"

    .line 11
    .line 12
    .line 13
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v1, "hitTestResult"

    .line 16
    .line 17
    .line 18
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-interface {v8, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->e(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v9, v10}, Landroidx/compose/ui/node/LayoutNodeWrapper;->j2(J)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    move/from16 v12, p6

    .line 39
    :goto_0
    move v3, v2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_0
    if-eqz p5, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->A1()J

    .line 46
    move-result-wide v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v9, v10, v4, v5}, Landroidx/compose/ui/node/LayoutNodeWrapper;->l1(JJ)F

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 54
    move-result v4

    .line 55
    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    move v12, v3

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    move/from16 v12, p6

    .line 67
    .line 68
    :goto_1
    if-eqz v3, :cond_6

    .line 69
    .line 70
    .line 71
    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->e(Landroidx/compose/ui/node/HitTestResult;)I

    .line 72
    move-result v13

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->y0()Landroidx/compose/runtime/collection/MutableVector;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 84
    move-result v3

    .line 85
    .line 86
    if-lez v3, :cond_5

    .line 87
    sub-int/2addr v3, v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 91
    move-result-object v14

    .line 92
    move v15, v3

    .line 93
    .line 94
    :cond_2
    aget-object v1, v14, v15

    .line 95
    .line 96
    move-object/from16 v16, v1

    .line 97
    .line 98
    check-cast v16, Landroidx/compose/ui/node/LayoutNode;

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    move-object/from16 v1, p1

    .line 107
    .line 108
    move-object/from16 v2, v16

    .line 109
    .line 110
    move-wide/from16 v3, p2

    .line 111
    .line 112
    move-object/from16 v5, p4

    .line 113
    .line 114
    move/from16 v6, p5

    .line 115
    move v7, v12

    .line 116
    .line 117
    .line 118
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;->d(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->q()Z

    .line 122
    move-result v1

    .line 123
    .line 124
    if-nez v1, :cond_3

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/LayoutNode;->r0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->e2()Z

    .line 133
    move-result v1

    .line 134
    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/HitTestResult;->c()V

    .line 139
    .line 140
    :cond_4
    :goto_2
    add-int/lit8 v15, v15, -0x1

    .line 141
    .line 142
    if-gez v15, :cond_2

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-static {v11, v13}, Landroidx/compose/ui/node/HitTestResult;->g(Landroidx/compose/ui/node/HitTestResult;I)V

    .line 146
    :cond_6
    return-void
.end method

.method public M(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->d0()Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->a(I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public P(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->P(F)F

    move-result p1

    return p1
.end method

.method protected R0(JFLe8/l;)V
    .locals 0
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->R0(JFLe8/l;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->P1()Z

    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->X1()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->W0()V

    .line 28
    return-void
.end method

.method public V(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->d0()Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->d(I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public X(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->X(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public Y(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->d0()Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->e(I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public Y1(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->y0()Landroidx/compose/runtime/collection/MutableVector;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-lez v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    :cond_0
    aget-object v4, v1, v3

    .line 35
    .line 36
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 40
    move-result v5

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p1}, Landroidx/compose/ui/node/LayoutNode;->O(Landroidx/compose/ui/graphics/Canvas;)V

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    if-lt v3, v2, :cond_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getShowLayoutBounds()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    sget-object v0, Landroidx/compose/ui/node/InnerPlaceable;->innerBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->n1(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V

    .line 61
    :cond_3
    return-void
.end method

.method public a0(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->d0()Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->b(I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public b0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c1(Landroidx/compose/ui/node/LayoutNodeWrapper;J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    :cond_0
    aget-object v3, v0, v2

    .line 25
    .line 26
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->q1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    if-lt v2, v1, :cond_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->j0()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->k0()Landroidx/compose/ui/layout/MeasureScope;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->S()Ljava/util/List;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/compose/ui/layout/MeasurePolicy;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->A0(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->V1()V

    .line 74
    return-object p0
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    return v0
.end method

.method public i1(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "alignmentLine"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->F()Ljava/util/Map;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const/high16 p1, -0x80000000

    .line 29
    :goto_0
    return p1
.end method

.method public j(I)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->j(I)F

    move-result p1

    return p1
.end method

.method public j0(F)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    move-result p1

    return p1
.end method

.method public p0(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->p0(J)F

    move-result p1

    return p1
.end method

.method public q(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->q(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public s(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/InnerPlaceable;->$$delegate_0:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->s(J)F

    move-result p1

    return p1
.end method

.method public z1()Landroidx/compose/ui/layout/MeasureScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->k0()Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
