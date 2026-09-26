.class public final Landroidx/compose/foundation/text/TextFieldDelegateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DefaultWidthCharCount:I = 0xa

.field private static final EmptyTextReplacement:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "H"

    .line 3
    .line 4
    const/16 v1, 0xa

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/text/k;->C(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/foundation/text/TextFieldDelegateKt;->EmptyTextReplacement:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J
    .locals 14
    .param p0    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    move-object v2, p0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "density"

    .line 9
    move-object v5, p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v0, "fontFamilyResolver"

    .line 15
    .line 16
    move-object/from16 v6, p2

    .line 17
    .line 18
    .line 19
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    const-string v0, "text"

    .line 22
    .line 23
    move-object/from16 v1, p3

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 30
    move-result-object v7

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    .line 36
    const/16 v12, 0xf

    .line 37
    const/4 v13, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 41
    move-result-wide v3

    .line 42
    const/4 v8, 0x0

    .line 43
    .line 44
    const/16 v11, 0x40

    .line 45
    const/4 v12, 0x0

    .line 46
    .line 47
    move/from16 v9, p4

    .line 48
    .line 49
    .line 50
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/text/ParagraphKt;->b(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Ljava/util/List;IZILjava/lang/Object;)Landroidx/compose/ui/text/Paragraph;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Landroidx/compose/ui/text/Paragraph;->a()F

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->d(F)I

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 63
    move-result v0

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->d(F)I

    .line 67
    move-result v0

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 71
    move-result-wide v0

    .line 72
    return-wide v0
.end method

.method public static synthetic b(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;IILjava/lang/Object;)J
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x8

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    sget-object p3, Landroidx/compose/foundation/text/TextFieldDelegateKt;->EmptyTextReplacement:Ljava/lang/String;

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p5, p5, 0x10

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    const/4 p4, 0x1

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public static final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/TextFieldDelegateKt;->EmptyTextReplacement:Ljava/lang/String;

    return-object v0
.end method

.method private static final d(F)I
    .locals 2

    .line 1
    float-to-double v0, p0

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 5
    move-result-wide v0

    .line 6
    double-to-float p0, v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lg8/a;->c(F)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method
