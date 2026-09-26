.class public final Landroidx/compose/ui/text/platform/AndroidParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/Paragraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/platform/AndroidParagraph$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidParagraph.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidParagraph.android.kt\nandroidx/compose/ui/text/platform/AndroidParagraph\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,573:1\n1#2:574\n13536#3,2:575\n11328#3:577\n11663#3,3:578\n26#4:581\n26#4:582\n*S KotlinDebug\n*F\n+ 1 AndroidParagraph.android.kt\nandroidx/compose/ui/text/platform/AndroidParagraph\n*L\n156#1:575,2\n196#1:577\n196#1:578,3\n408#1:581\n412#1:582\n*E\n"
.end annotation


# instance fields
.field private final constraints:J

.field private final ellipsis:Z

.field private final layout:Landroidx/compose/ui/text/android/TextLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxLines:I

.field private final paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placeholderRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final wordBoundary$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iput v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    iput-boolean v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->ellipsis:Z

    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->constraints:J

    .line 4
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    move-result v6

    if-nez v6, :cond_e

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    move-result v6

    if-nez v6, :cond_e

    const/4 v6, 0x1

    if-lt v1, v6, :cond_d

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->h()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->v()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/ui/text/platform/AndroidParagraph_androidKt;->d(Landroidx/compose/ui/text/style/TextAlign;)I

    move-result v7

    .line 7
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->v()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v8

    .line 8
    sget-object v9, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/text/style/TextAlign$Companion;->c()I

    move-result v9

    const/4 v10, 0x0

    if-nez v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/TextAlign;->m()I

    move-result v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/style/TextAlign;->j(II)Z

    move-result v8

    :goto_0
    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 9
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :cond_1
    move-object v11, v9

    .line 10
    :goto_1
    invoke-direct {v0, v7, v8, v11, v1}, Landroidx/compose/ui/text/platform/AndroidParagraph;->z(IILandroid/text/TextUtils$TruncateAt;I)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v12

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/TextLayout;->b()I

    move-result v2

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    move-result v13

    if-le v2, v13, :cond_3

    if-le v1, v6, :cond_3

    .line 12
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    move-result v2

    invoke-static {v12, v2}, Landroidx/compose/ui/text/platform/AndroidParagraph_androidKt;->c(Landroidx/compose/ui/text/android/TextLayout;I)I

    move-result v2

    if-lez v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 13
    invoke-direct {v0, v7, v8, v11, v2}, Landroidx/compose/ui/text/platform/AndroidParagraph;->z(IILandroid/text/TextUtils$TruncateAt;I)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v12

    :cond_2
    iput-object v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    goto :goto_2

    :cond_3
    iput-object v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 14
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->E()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->f()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a(Landroidx/compose/ui/graphics/Brush;J)V

    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 15
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/platform/AndroidParagraph;->C(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    move-result-object v1

    .line 16
    array-length v2, v1

    move v3, v10

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    move-result v7

    invoke-static {v5, v7}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->c(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->a(Landroidx/compose/ui/geometry/Size;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 18
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->e()Ljava/lang/CharSequence;

    move-result-object v1

    .line 19
    instance-of v2, v1, Landroid/text/Spanned;

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_d

    .line 20
    :cond_5
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    invoke-interface {v2, v10, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getSpans(0, length, PlaceholderSpan::class.java)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    array-length v4, v2

    move v5, v10

    :goto_4
    if-ge v5, v4, :cond_c

    aget-object v7, v2, v5

    .line 23
    check-cast v7, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 24
    move-object v8, v1

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 25
    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iget-object v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 26
    invoke-virtual {v12, v11}, Landroidx/compose/ui/text/android/TextLayout;->l(I)I

    move-result v12

    iget-object v13, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 27
    invoke-virtual {v13, v12}, Landroidx/compose/ui/text/android/TextLayout;->i(I)I

    move-result v13

    if-lez v13, :cond_6

    iget-object v13, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 28
    invoke-virtual {v13, v12}, Landroidx/compose/ui/text/android/TextLayout;->j(I)I

    move-result v13

    if-le v8, v13, :cond_6

    move v13, v6

    goto :goto_5

    :cond_6
    move v13, v10

    :goto_5
    iget-object v14, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 29
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->k(I)I

    move-result v14

    if-le v8, v14, :cond_7

    move v8, v6

    goto :goto_6

    :cond_7
    move v8, v10

    :goto_6
    if-nez v13, :cond_b

    if-eqz v8, :cond_8

    goto/16 :goto_b

    .line 30
    :cond_8
    invoke-virtual {v0, v11}, Landroidx/compose/ui/text/platform/AndroidParagraph;->v(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v8

    .line 31
    sget-object v13, Landroidx/compose/ui/text/platform/AndroidParagraph$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v13, v8

    const/4 v13, 0x2

    if-eq v8, v6, :cond_a

    if-ne v8, v13, :cond_9

    .line 32
    invoke-virtual {v0, v11, v6}, Landroidx/compose/ui/text/platform/AndroidParagraph;->s(IZ)F

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->d()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v8, v11

    goto :goto_7

    :cond_9
    new-instance v1, Lw7/s;

    invoke-direct {v1}, Lw7/s;-><init>()V

    throw v1

    .line 33
    :cond_a
    invoke-virtual {v0, v11, v6}, Landroidx/compose/ui/text/platform/AndroidParagraph;->s(IZ)F

    move-result v8

    .line 34
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->d()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget-object v14, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 35
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected verticalAlignment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :pswitch_0
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    .line 38
    iget v6, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v6, v15

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v15

    sub-int/2addr v6, v15

    div-int/2addr v6, v13

    int-to-float v6, v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v12

    :goto_8
    add-float/2addr v6, v12

    goto :goto_a

    .line 39
    :pswitch_1
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v6, v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v12

    add-float/2addr v6, v12

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v12

    :goto_9
    int-to-float v12, v12

    sub-float/2addr v6, v12

    goto :goto_a

    .line 40
    :pswitch_2
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v6, v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v12

    goto :goto_8

    .line 41
    :pswitch_3
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->q(I)F

    move-result v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->g(I)F

    move-result v12

    add-float/2addr v6, v12

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v6, v12

    int-to-float v12, v13

    div-float/2addr v6, v12

    goto :goto_a

    .line 42
    :pswitch_4
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->g(I)F

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v12

    goto :goto_9

    .line 43
    :pswitch_5
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->q(I)F

    move-result v6

    goto :goto_a

    .line 44
    :pswitch_6
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v12

    goto :goto_9

    .line 45
    :goto_a
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 46
    new-instance v12, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v12, v8, v6, v11, v7}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_c

    :cond_b
    :goto_b
    move-object v12, v9

    :goto_c
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_c
    move-object v1, v3

    :goto_d
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->placeholderRects:Ljava/util/List;

    .line 47
    sget-object v1, Lw7/q;->NONE:Lw7/q;

    new-instance v2, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraph;)V

    invoke-static {v1, v2}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->wordBoundary$delegate:Lw7/m;

    return-void

    .line 48
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxLines should be greater than 0"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;IZJ",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    .line 50
    new-instance v7, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move v2, p5

    move v3, p6

    move-wide v4, p7

    .line 51
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p10}, Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    return-void
.end method

.method private final C(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->z()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/text/Spanned;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-array p1, v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->z()Ljava/lang/CharSequence;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/text/Spanned;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->z()Ljava/lang/CharSequence;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    move-result p1

    .line 27
    .line 28
    const-class v2, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 35
    .line 36
    const-string v0, "brushSpans"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    array-length v0, p1

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    new-array p1, v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 45
    :cond_1
    return-object p1
.end method

.method private final F()Landroidx/compose/ui/text/android/selection/WordBoundary;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->wordBoundary$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 9
    return-object v0
.end method

.method public static final synthetic y(Landroidx/compose/ui/text/platform/AndroidParagraph;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    return-object p0
.end method

.method private final z(IILandroid/text/TextUtils$TruncateAt;I)Landroidx/compose/ui/text/android/TextLayout;
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v5, p1

    .line 5
    .line 6
    move/from16 v15, p2

    .line 7
    .line 8
    move-object/from16 v6, p3

    .line 9
    .line 10
    move/from16 v12, p4

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->e()Ljava/lang/CharSequence;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->E()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i()I

    .line 30
    move-result v7

    .line 31
    .line 32
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g()Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 36
    move-result-object v18

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->h()Landroidx/compose/ui/text/TextStyle;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->b(Landroidx/compose/ui/text/TextStyle;)Z

    .line 46
    move-result v10

    .line 47
    .line 48
    new-instance v21, Landroidx/compose/ui/text/android/TextLayout;

    .line 49
    .line 50
    move-object/from16 v1, v21

    .line 51
    .line 52
    const/high16 v8, 0x3f800000    # 1.0f

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v11, 0x1

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    .line 63
    const v19, 0xd880

    .line 64
    .line 65
    const/16 v20, 0x0

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v1 .. v20}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/k;)V

    .line 69
    return-object v21
.end method


# virtual methods
.method public final A()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->e()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final B(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final D()Ljava/util/Locale;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->j()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "paragraphIntrinsics.textPaint.textLocale"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public final E()Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->j()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public a()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(I)Landroidx/compose/ui/geometry/Rect;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1, v2, v3}, Landroidx/compose/ui/text/android/TextLayout;->v(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 12
    .line 13
    add-int/lit8 v5, p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v4, v5, v1, v2, v3}, Landroidx/compose/ui/text/android/TextLayout;->v(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 17
    move-result v1

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->l(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->q(I)F

    .line 29
    move-result v2

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/android/TextLayout;->g(I)F

    .line 35
    move-result p1

    .line 36
    .line 37
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v0, v2, v1, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 41
    return-object v3
.end method

.method public c(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->l(I)I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->t(I)I

    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 21
    :goto_0
    return-object p1
.end method

.method public d(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "brush"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->E()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 26
    move-result-wide v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a(Landroidx/compose/ui/graphics/Brush;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Shadow;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->c(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->q()Z

    .line 43
    move-result p2

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 52
    move-result p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    .line 56
    move-result p3

    .line 57
    const/4 p4, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 61
    .line 62
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->C(Landroid/graphics/Canvas;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->q()Z

    .line 69
    move-result p2

    .line 70
    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 75
    :cond_1
    return-void
.end method

.method public e(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->q(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->F()Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary;->b(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->F()Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary;->a(I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public g()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->B(I)F

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->b()I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->constraints:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method public h(J)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->m(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->s(IF)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public i(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->p(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public j(IZ)I
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->r(I)I

    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->k(I)I

    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public k(F)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    float-to-int p1, p1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->m(I)I

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public l(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->n(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public m(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->g(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public n(I)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->A()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/ui/text/android/TextLayout;->v(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 21
    move-result v0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/TextLayout;->l(I)I

    .line 27
    move-result p1

    .line 28
    .line 29
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->q(I)F

    .line 35
    move-result v2

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/android/TextLayout;->g(I)F

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v0, v2, v0, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 45
    return-object v1

    .line 46
    .line 47
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v2, "offset("

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p1, ") is out of bounds (0,"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->A()Ljava/lang/CharSequence;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 84
    throw v0
.end method

.method public o()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->h()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public p(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->o(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public q()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->a()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public r(II)Landroidx/compose/ui/graphics/Path;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-gt p1, p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->A()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-gt p2, v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Path;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, p2, v0}, Landroidx/compose/ui/text/android/TextLayout;->y(IILandroid/graphics/Path;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->b(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v2, "Start("

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p1, ") or End("

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p1, ") is out of Range(0.."

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->A()Ljava/lang/CharSequence;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 65
    move-result p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, "), or start > end!"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 81
    throw v0
.end method

.method public s(IZ)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1, v2, v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->v(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1, v2, v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->x(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 18
    move-result p1

    .line 19
    :goto_0
    return p1
.end method

.method public t()F
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->o()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->B(I)F

    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->o()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->B(I)F

    .line 27
    move-result v0

    .line 28
    :goto_0
    return v0
.end method

.method public u(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->l(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public v(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->B(I)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 14
    :goto_0
    return-object p1
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->placeholderRects:Ljava/util/List;

    return-object v0
.end method

.method public x(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->E()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Shadow;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->c(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->q()Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    .line 39
    move-result p3

    .line 40
    const/4 p4, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->C(Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->q()Z

    .line 52
    move-result p2

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    :cond_1
    return-void
.end method
