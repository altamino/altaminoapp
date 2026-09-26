.class public final Landroidx/compose/ui/platform/AndroidClipboardManager_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidClipboardManager.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClipboardManager.android.kt\nandroidx/compose/ui/platform/AndroidClipboardManager_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,551:1\n32#2,6:552\n*S KotlinDebug\n*F\n+ 1 AndroidClipboardManager.android.kt\nandroidx/compose/ui/platform/AndroidClipboardManager_androidKt\n*L\n111#1:552,6\n*E\n"
.end annotation


# static fields
.field private static final BACKGROUND_ID:B = 0xat

.field private static final BASELINE_SHIFT_ID:B = 0x8t

.field private static final BASELINE_SHIFT_SIZE:I = 0x4

.field private static final BYTE_SIZE:I = 0x1

.field private static final COLOR_ID:B = 0x1t

.field private static final COLOR_SIZE:I = 0x8

.field private static final FLOAT_SIZE:I = 0x4

.field private static final FONT_FEATURE_SETTINGS_ID:B = 0x6t

.field private static final FONT_SIZE_ID:B = 0x2t

.field private static final FONT_STYLE_ID:B = 0x4t

.field private static final FONT_STYLE_ITALIC:B = 0x1t

.field private static final FONT_STYLE_NORMAL:B = 0x0t

.field private static final FONT_STYLE_SIZE:I = 0x1

.field private static final FONT_SYNTHESIS_ALL:B = 0x1t

.field private static final FONT_SYNTHESIS_ID:B = 0x5t

.field private static final FONT_SYNTHESIS_NONE:B = 0x0t

.field private static final FONT_SYNTHESIS_SIZE:I = 0x1

.field private static final FONT_SYNTHESIS_STYLE:B = 0x3t

.field private static final FONT_SYNTHESIS_WEIGHT:B = 0x2t

.field private static final FONT_WEIGHT_ID:B = 0x3t

.field private static final FONT_WEIGHT_SIZE:I = 0x4

.field private static final INT_SIZE:I = 0x4

.field private static final LETTER_SPACING_ID:B = 0x7t

.field private static final LONG_SIZE:I = 0x8

.field private static final PLAIN_TEXT_LABEL:Ljava/lang/String; = "plain text"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHADOW_ID:B = 0xct

.field private static final SHADOW_SIZE:I = 0x14

.field private static final TEXT_DECORATION_ID:B = 0xbt

.field private static final TEXT_DECORATION_SIZE:I = 0x4

.field private static final TEXT_GEOMETRIC_TRANSFORM_ID:B = 0x9t

.field private static final TEXT_GEOMETRIC_TRANSFORM_SIZE:I = 0x8

.field private static final TEXT_UNIT_SIZE:I = 0x5

.field private static final UNIT_TYPE_EM:B = 0x2t

.field private static final UNIT_TYPE_SP:B = 0x1t

.field private static final UNIT_TYPE_UNSPECIFIED:B


# direct methods
.method public static final a(Ljava/lang/CharSequence;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 10
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, v0

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 23
    return-object v0

    .line 24
    :cond_1
    move-object v0, p0

    .line 25
    .line 26
    check-cast v0, Landroid/text/Spanned;

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 30
    move-result v1

    .line 31
    .line 32
    const-class v2, Landroid/text/Annotation;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, [Landroid/text/Annotation;

    .line 40
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    const-string v2, "annotations"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 53
    move-result v2

    .line 54
    .line 55
    if-ltz v2, :cond_3

    .line 56
    .line 57
    :goto_0
    aget-object v4, v1, v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    const-string v7, "androidx.compose.text.SpanStyle"

    .line 64
    .line 65
    .line 66
    invoke-static {v5, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v5

    .line 68
    .line 69
    if-nez v5, :cond_2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 74
    move-result v5

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 78
    move-result v7

    .line 79
    .line 80
    new-instance v8, Landroidx/compose/ui/platform/DecodeHelper;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    const-string v9, "span.value"

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v8, v4}, Landroidx/compose/ui/platform/DecodeHelper;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Landroidx/compose/ui/platform/DecodeHelper;->k()Landroidx/compose/ui/text/SpanStyle;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 99
    .line 100
    .line 101
    invoke-direct {v8, v4, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    :goto_1
    if-eq v3, v2, :cond_3

    .line 107
    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_3
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    const/4 v7, 0x0

    .line 117
    const/4 v8, 0x4

    .line 118
    const/4 v9, 0x0

    .line 119
    move-object v4, v0

    .line 120
    .line 121
    .line 122
    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 123
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/CharSequence;
    .locals 9
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    new-instance v1, Landroidx/compose/ui/platform/EncodeHelper;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Landroidx/compose/ui/platform/EncodeHelper;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    .line 45
    :goto_0
    if-ge v3, v2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->a()Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->b()I

    .line 61
    move-result v6

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->c()I

    .line 65
    move-result v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/compose/ui/platform/EncodeHelper;->q()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5}, Landroidx/compose/ui/platform/EncodeHelper;->e(Landroidx/compose/ui/text/SpanStyle;)V

    .line 72
    .line 73
    new-instance v5, Landroid/text/Annotation;

    .line 74
    .line 75
    const-string v7, "androidx.compose.text.SpanStyle"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/compose/ui/platform/EncodeHelper;->p()Ljava/lang/String;

    .line 79
    move-result-object v8

    .line 80
    .line 81
    .line 82
    invoke-direct {v5, v7, v8}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    const/16 v7, 0x21

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    return-object v0
.end method
