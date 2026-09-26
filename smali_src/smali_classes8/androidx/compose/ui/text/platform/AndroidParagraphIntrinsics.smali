.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidParagraphIntrinsics.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidParagraphIntrinsics.android.kt\nandroidx/compose/ui/text/platform/AndroidParagraphIntrinsics\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,170:1\n79#2,2:171\n32#2,6:173\n81#2:179\n*S KotlinDebug\n*F\n+ 1 AndroidParagraphIntrinsics.android.kt\nandroidx/compose/ui/text/platform/AndroidParagraphIntrinsics\n*L\n69#1:171,2\n69#1:173,6\n69#1:179\n*E\n"
.end annotation


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placeholders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resolvedTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/platform/TypefaceDirtyTracker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spanStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final style:Landroidx/compose/ui/text/TextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textDirectionHeuristic:I

.field private final textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
            ">;>;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "text"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "style"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "spanStyles"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "placeholders"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "fontFamilyResolver"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "density"

    .line 28
    .line 29
    .line 30
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 38
    .line 39
    iput-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->spanStyles:Ljava/util/List;

    .line 40
    .line 41
    iput-object p4, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    .line 42
    .line 43
    iput-object p5, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 44
    .line 45
    iput-object p6, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    .line 46
    .line 47
    new-instance p5, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 48
    const/4 v0, 0x1

    .line 49
    .line 50
    .line 51
    invoke-interface {p6}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-direct {p5, v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;-><init>(IF)V

    .line 56
    .line 57
    iput-object p5, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->x()Landroidx/compose/ui/text/style/TextDirection;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->q()Landroidx/compose/ui/text/intl/LocaleList;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->b(Landroidx/compose/ui/text/style/TextDirection;Landroidx/compose/ui/text/intl/LocaleList;)I

    .line 76
    move-result v0

    .line 77
    .line 78
    iput v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    .line 79
    .line 80
    new-instance v7, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {v7, p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextStyle;->E()Landroidx/compose/ui/text/SpanStyle;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-static {p5, v1, v7, p6}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->a(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/SpanStyle;Le8/r;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/text/SpanStyle;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    .line 95
    move-result v2

    .line 96
    .line 97
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 98
    const/4 v4, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 102
    move-result v5

    .line 103
    .line 104
    .line 105
    invoke-direct {v3, v1, v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 106
    .line 107
    .line 108
    invoke-static {v3}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    check-cast v1, Ljava/util/Collection;

    .line 112
    .line 113
    check-cast p3, Ljava/lang/Iterable;

    .line 114
    .line 115
    .line 116
    invoke-static {v1, p3}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 117
    move-result-object v4

    .line 118
    move-object v1, p1

    .line 119
    move-object v3, p2

    .line 120
    move-object v5, p4

    .line 121
    move-object v6, p6

    .line 122
    .line 123
    .line 124
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->a(Ljava/lang/String;FLandroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/unit/Density;Le8/r;)Ljava/lang/CharSequence;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    .line 128
    .line 129
    new-instance p2, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 130
    .line 131
    .line 132
    invoke-direct {p2, p1, p5, v0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 133
    .line 134
    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 135
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Ljava/util/List;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    check-cast v4, Landroidx/compose/ui/text/platform/TypefaceDirtyTracker;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/compose/ui/text/platform/TypefaceDirtyTracker;->b()Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return v2
.end method

.method public c()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final f()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/text/android/LayoutIntrinsics;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    return-object v0
.end method

.method public final h()Landroidx/compose/ui/text/TextStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    return v0
.end method

.method public final j()Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    return-object v0
.end method
