.class public final Landroidx/compose/ui/text/android/TextLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,685:1\n1#2:686\n*E\n"
.end annotation


# instance fields
.field private final bottomPadding:I

.field private final didExceedMaxLines:Z

.field private final fallbackLineSpacing:Z

.field private final includePadding:Z

.field private final isBoringLayout:Z

.field private final layout:Landroid/text/Layout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lineCount:I

.field private final topPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V
    .locals 23
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p15    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/ui/text/android/LayoutIntrinsics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v1, p2

    move/from16 v14, p11

    move-object/from16 v2, p17

    const-string v3, "charSequence"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "textPaint"

    move-object/from16 v5, p3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "layoutIntrinsics"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v13, p9

    iput-boolean v13, v0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    move/from16 v12, p10

    iput-boolean v12, v0, Landroidx/compose/ui/text/android/TextLayout;->fallbackLineSpacing:Z

    iput-object v2, v0, Landroidx/compose/ui/text/android/TextLayout;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 3
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/text/android/TextLayoutKt;->e(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    .line 4
    sget-object v4, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->INSTANCE:Landroidx/compose/ui/text/android/TextAlignmentAdapter;

    move/from16 v6, p4

    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v8

    .line 5
    instance-of v4, v15, Landroid/text/Spanned;

    const/4 v10, 0x1

    if-eqz v4, :cond_0

    .line 6
    move-object v4, v15

    check-cast v4, Landroid/text/Spanned;

    const/4 v6, -0x1

    const-class v9, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-interface {v4, v6, v3, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    if-ge v4, v3, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->a()Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    float-to-double v11, v1

    .line 8
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v9, v4

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    if-nez v3, :cond_1

    iput-boolean v10, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    .line 10
    sget-object v1, Landroidx/compose/ui/text/android/BoringLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/BoringLayoutFactory;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v9

    move-object v5, v6

    move-object v6, v8

    move/from16 v7, p9

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/ui/text/android/BoringLayoutFactory;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/BoringLayout$Metrics;Landroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    move/from16 v22, v10

    const/16 v21, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    .line 11
    sget-object v1, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    const/4 v3, 0x0

    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 13
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v11, v5

    move/from16 v21, v2

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move v6, v9

    move/from16 v9, p11

    move/from16 v22, v10

    move-object/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p14

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p12

    move/from16 v18, p13

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    .line 14
    invoke-virtual/range {v1 .. v20}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->a(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)Landroid/text/StaticLayout;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 15
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move/from16 v3, p11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    if-ge v2, v3, :cond_3

    :cond_2
    move/from16 v10, v21

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x1

    .line 16
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-gtz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 17
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_4
    move/from16 v10, v22

    :goto_2
    iput-boolean v10, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 18
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->b(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;

    move-result-object v1

    .line 19
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->a(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;

    move-result-object v2

    .line 20
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 21
    invoke-virtual {v1}, Lw7/u;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    .line 22
    sget-object v1, Lw7/q;->NONE:Lw7/q;

    new-instance v2, Landroidx/compose/ui/text/android/TextLayout$layoutHelper$2;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/android/TextLayout$layoutHelper$2;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    invoke-static {v1, v2}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layoutHelper$delegate:Lw7/m;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/k;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move-object v8, v4

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    move v9, v1

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    move v10, v1

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move v11, v2

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move v12, v3

    goto :goto_6

    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v13, v1

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const v1, 0x7fffffff

    move v14, v1

    goto :goto_8

    :cond_8
    move/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v15, v3

    goto :goto_9

    :cond_9
    move/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move/from16 v16, v3

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move/from16 v17, v3

    goto :goto_b

    :cond_b
    move/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v4

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v4

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 23
    new-instance v0, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v9}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    move-object/from16 v20, v0

    goto :goto_e

    :cond_e
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v20, p17

    :goto_e
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    .line 24
    invoke-direct/range {v3 .. v20}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V

    return-void
.end method

.method private final e()Landroidx/compose/ui/text/android/LayoutHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layoutHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/text/android/LayoutHelper;

    .line 9
    return-object v0
.end method

.method public static synthetic v(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/android/TextLayout;->u(IZ)F

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic x(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/android/TextLayout;->w(IZ)F

    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->fallbackLineSpacing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final B(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final C(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
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
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    int-to-float v0, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/4 v2, -0x1

    .line 25
    int-to-float v2, v2

    .line 26
    int-to-float v0, v0

    .line 27
    mul-float/2addr v2, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 21
    move-result v0

    .line 22
    .line 23
    :goto_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    .line 27
    add-int/2addr v0, v1

    .line 28
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    return v0
.end method

.method public final d()Landroid/text/Layout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    return-object v0
.end method

.method public final f(I)F
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr v0, p1

    .line 12
    return v0
.end method

.method public final g(I)F
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    add-float/2addr v0, v1

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    int-to-float p1, p1

    .line 23
    add-float/2addr v0, p1

    .line 24
    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    return v0
.end method

.method public final i(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final j(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final k(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 25
    move-result p1

    .line 26
    :goto_0
    return p1
.end method

.method public final l(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final m(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 5
    add-int/2addr v1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final n(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final o(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final p(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final q(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 14
    :goto_0
    int-to-float p1, p1

    .line 15
    add-float/2addr v0, p1

    .line 16
    return v0
.end method

.method public final r(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 21
    move-result v0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v0

    .line 29
    :goto_0
    return p1
.end method

.method public final s(IF)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final t(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final u(IZ)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextLayout;->e()Landroidx/compose/ui/text/android/LayoutHelper;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->c(IZZ)F

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final w(IZ)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextLayout;->e()Landroidx/compose/ui/text/android/LayoutHelper;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->c(IZZ)F

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final y(IILandroid/graphics/Path;)V
    .locals 1
    .param p3    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "dest"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 11
    .line 12
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/graphics/Path;->isEmpty()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 23
    int-to-float p1, p1

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Path;->offset(FF)V

    .line 28
    :cond_0
    return-void
.end method

.method public final z()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "layout.text"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method
