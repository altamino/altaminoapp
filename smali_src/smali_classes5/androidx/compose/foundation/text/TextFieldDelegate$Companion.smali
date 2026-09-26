.class public final Landroidx/compose/foundation/text/TextFieldDelegate$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/TextFieldDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/text/TextFieldDelegate$Companion;Ljava/util/List;Landroidx/compose/ui/text/input/EditProcessor;Le8/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->f(Ljava/util/List;Landroidx/compose/ui/text/input/EditProcessor;Le8/l;)V

    .line 4
    return-void
.end method

.method private final f(Ljava/util/List;Landroidx/compose/ui/text/input/EditProcessor;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/input/EditProcessor;->a(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public final b(JLandroidx/compose/ui/text/input/TransformedText;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 24
    .param p3    # Landroidx/compose/ui/text/input/TransformedText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "transformed"

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->b()Landroidx/compose/ui/text/AnnotatedString;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 17
    .line 18
    new-instance v2, Landroidx/compose/ui/text/SpanStyle;

    .line 19
    move-object v3, v2

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v12, 0x0

    .line 29
    .line 30
    const-wide/16 v13, 0x0

    .line 31
    const/4 v15, 0x0

    .line 32
    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    const/16 v17, 0x0

    .line 36
    .line 37
    const-wide/16 v18, 0x0

    .line 38
    .line 39
    sget-object v20, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->d()Landroidx/compose/ui/text/style/TextDecoration;

    .line 43
    move-result-object v20

    .line 44
    .line 45
    const/16 v21, 0x0

    .line 46
    .line 47
    const/16 v22, 0x2fff

    .line 48
    .line 49
    const/16 v23, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v3 .. v23}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/k;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->a()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 60
    move-result v4

    .line 61
    .line 62
    .line 63
    invoke-interface {v3, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->a()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    .line 71
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 72
    move-result v5

    .line 73
    .line 74
    .line 75
    invoke-interface {v4, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 76
    move-result v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2, v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->b(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->a()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    new-instance v2, Landroidx/compose/ui/text/input/TransformedText;

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 93
    return-object v2
.end method

.method public final c(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/Paint;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/input/OffsetMapping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Paint;
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
    const-string v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "offsetMapping"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "textLayoutResult"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "selectionPaint"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-interface {p3, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 51
    move-result-wide v1

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    invoke-interface {p3, p2}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 59
    move-result p2

    .line 60
    .line 61
    if-eq v0, p2, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, v0, p2}, Landroidx/compose/ui/text/TextLayoutResult;->y(II)Landroidx/compose/ui/graphics/Path;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p2, p5}, Landroidx/compose/ui/graphics/Canvas;->t(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V

    .line 69
    .line 70
    :cond_0
    sget-object p2, Landroidx/compose/ui/text/TextPainter;->INSTANCE:Landroidx/compose/ui/text/TextPainter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1, p4}, Landroidx/compose/ui/text/TextPainter;->a(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 74
    return-void
.end method

.method public final d(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Lw7/z;
    .locals 1
    .param p1    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/TextDelegate;",
            "J",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ")",
            "Lw7/z<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "textDelegate"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/compose/foundation/text/TextDelegate;->l(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance p2, Lw7/z;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 20
    move-result-wide p3

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 24
    move-result p3

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 32
    move-result-wide p4

    .line 33
    .line 34
    .line 35
    invoke-static {p4, p5}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 36
    move-result p4

    .line 37
    .line 38
    .line 39
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p4

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p3, p4, p1}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-object p2
.end method

.method public final e(Landroidx/compose/ui/text/input/TextInputSession;Landroidx/compose/ui/text/input/EditProcessor;Le8/l;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/text/input/TextInputSession;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/EditProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextInputSession;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "textInputSession"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "editProcessor"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "onValueChange"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/EditProcessor;->c()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x3

    .line 25
    const/4 v7, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextInputSession;->a()V

    .line 36
    return-void
.end method

.method public final g(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Le8/l;Le8/l;)Landroidx/compose/ui/text/input/TextInputSession;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/input/TextInputService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/input/EditProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/input/ImeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextInputService;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextInputSession;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "textInputService"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "editProcessor"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "imeOptions"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "onValueChange"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "onImeActionPerformed"

    .line 28
    .line 29
    .line 30
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->h(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Le8/l;Le8/l;)Landroidx/compose/ui/text/input/TextInputSession;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final h(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Le8/l;Le8/l;)Landroidx/compose/ui/text/input/TextInputSession;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/input/TextInputService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/input/EditProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/input/ImeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextInputService;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextInputSession;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "textInputService"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "editProcessor"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "imeOptions"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "onValueChange"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "onImeActionPerformed"

    .line 28
    .line 29
    .line 30
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$restartInput$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p3, p5}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$restartInput$1;-><init>(Landroidx/compose/ui/text/input/EditProcessor;Le8/l;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p4, v0, p6}, Landroidx/compose/ui/text/input/TextInputService;->b(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Le8/l;Le8/l;)Landroidx/compose/ui/text/input/TextInputSession;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final i(JLandroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/OffsetMapping;Le8/l;)V
    .locals 7
    .param p3    # Landroidx/compose/foundation/text/TextLayoutResultProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/input/EditProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/input/OffsetMapping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/TextLayoutResultProxy;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "textLayoutResult"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "editProcessor"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "offsetMapping"

    .line 13
    .line 14
    .line 15
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "onValueChange"

    .line 18
    .line 19
    .line 20
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v1, p3

    .line 25
    move-wide v2, p1

    .line 26
    .line 27
    .line 28
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->h(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    .line 29
    move-result p1

    .line 30
    .line 31
    .line 32
    invoke-interface {p5, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 33
    move-result p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4}, Landroidx/compose/ui/text/input/EditProcessor;->c()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->a(I)J

    .line 42
    move-result-wide v2

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x5

    .line 45
    .line 46
    .line 47
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-interface {p6, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
