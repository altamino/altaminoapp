.class final Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->j(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Le8/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/text/SpanStyle;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $resolveTypeface:Le8/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/r<",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_setFontAttributes:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Landroid/text/Spannable;Le8/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Le8/r<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "-",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "-",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "-",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$this_setFontAttributes:Landroid/text/Spannable;

    iput-object p2, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$resolveTypeface:Le8/r;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/SpanStyle;II)V
    .locals 6
    .param p1    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "spanStyle"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$this_setFontAttributes:Landroid/text/Spannable;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/ui/text/android/style/TypefaceSpan;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->$resolveTypeface:Le8/r;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 37
    move-result v5

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    sget-object v5, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 44
    move-result v5

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {v5}, Landroidx/compose/ui/text/font/FontStyle;->c(I)Landroidx/compose/ui/text/font/FontStyle;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    .line 58
    move-result p1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    sget-object p1, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 65
    move-result p1

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-static {p1}, Landroidx/compose/ui/text/font/FontSynthesis;->e(I)Landroidx/compose/ui/text/font/FontSynthesis;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v3, v4, v5, p1}, Le8/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Landroid/graphics/Typeface;

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, p1}, Landroidx/compose/ui/text/android/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 79
    .line 80
    const/16 p1, 0x21

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1, p2, p3, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 84
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/text/SpanStyle;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    check-cast p3, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;->a(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 18
    .line 19
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method
