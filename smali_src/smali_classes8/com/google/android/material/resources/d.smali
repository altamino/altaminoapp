.class public Lcom/google/android/material/resources/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;

.field public final fontFamily:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilyResourceId:I
    .annotation build Landroidx/annotation/FontRes;
    .end annotation
.end field

.field private fontResolved:Z

.field public final hasLetterSpacing:Z

.field public final letterSpacing:F

.field public final shadowColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field private textColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textColorHint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final textColorLink:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 7
    .line 8
    sget-object v1, Ld3/l;->TextAppearance:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    sget v2, Ld3/l;->TextAppearance_android_textSize:I

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/google/android/material/resources/d;->l(F)V

    .line 23
    .line 24
    sget v2, Ld3/l;->TextAppearance_android_textColor:I

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/google/android/material/resources/d;->k(Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    sget v2, Ld3/l;->TextAppearance_android_textColorHint:I

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iput-object v2, p0, Lcom/google/android/material/resources/d;->textColorHint:Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    sget v2, Ld3/l;->TextAppearance_android_textColorLink:I

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iput-object v2, p0, Lcom/google/android/material/resources/d;->textColorLink:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    sget v2, Ld3/l;->TextAppearance_android_textStyle:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 53
    move-result v2

    .line 54
    .line 55
    iput v2, p0, Lcom/google/android/material/resources/d;->textStyle:I

    .line 56
    .line 57
    sget v2, Ld3/l;->TextAppearance_android_typeface:I

    .line 58
    const/4 v4, 0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 62
    move-result v2

    .line 63
    .line 64
    iput v2, p0, Lcom/google/android/material/resources/d;->typeface:I

    .line 65
    .line 66
    sget v2, Ld3/l;->TextAppearance_fontFamily:I

    .line 67
    .line 68
    sget v4, Ld3/l;->TextAppearance_android_fontFamily:I

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2, v4}, Lcom/google/android/material/resources/c;->f(Landroid/content/res/TypedArray;II)I

    .line 72
    move-result v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 76
    move-result v4

    .line 77
    .line 78
    iput v4, p0, Lcom/google/android/material/resources/d;->fontFamilyResourceId:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    iput-object v2, p0, Lcom/google/android/material/resources/d;->fontFamily:Ljava/lang/String;

    .line 85
    .line 86
    sget v2, Ld3/l;->TextAppearance_textAllCaps:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/google/android/material/resources/d;->textAllCaps:Z

    .line 93
    .line 94
    sget v0, Ld3/l;->TextAppearance_android_shadowColor:I

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v1, v0}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    iput-object v0, p0, Lcom/google/android/material/resources/d;->shadowColor:Landroid/content/res/ColorStateList;

    .line 101
    .line 102
    sget v0, Ld3/l;->TextAppearance_android_shadowDx:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 106
    move-result v0

    .line 107
    .line 108
    iput v0, p0, Lcom/google/android/material/resources/d;->shadowDx:F

    .line 109
    .line 110
    sget v0, Ld3/l;->TextAppearance_android_shadowDy:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 114
    move-result v0

    .line 115
    .line 116
    iput v0, p0, Lcom/google/android/material/resources/d;->shadowDy:F

    .line 117
    .line 118
    sget v0, Ld3/l;->TextAppearance_android_shadowRadius:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 122
    move-result v0

    .line 123
    .line 124
    iput v0, p0, Lcom/google/android/material/resources/d;->shadowRadius:F

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    .line 129
    sget-object v0, Ld3/l;->MaterialTextAppearance:[I

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    sget p2, Ld3/l;->MaterialTextAppearance_android_letterSpacing:I

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 139
    move-result v0

    .line 140
    .line 141
    iput-boolean v0, p0, Lcom/google/android/material/resources/d;->hasLetterSpacing:Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 145
    move-result p2

    .line 146
    .line 147
    iput p2, p0, Lcom/google/android/material/resources/d;->letterSpacing:F

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/resources/d;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/resources/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/resources/d;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 3
    return p1
.end method

.method private d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/resources/d;->fontFamily:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/material/resources/d;->textStyle:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 19
    .line 20
    if-nez v0, :cond_4

    .line 21
    .line 22
    iget v0, p0, Lcom/google/android/material/resources/d;->typeface:I

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    const/4 v1, 0x3

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 53
    .line 54
    iget v1, p0, Lcom/google/android/material/resources/d;->textStyle:I

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 61
    :cond_4
    return-void
.end method

.method private m(Landroid/content/Context;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/material/resources/e;->a()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/material/resources/d;->fontFamilyResourceId:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->c(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    .line 20
    :goto_0
    if-eqz p1, :cond_2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const/4 v1, 0x0

    .line 23
    :goto_1
    return v1
.end method


# virtual methods
.method public e()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/resources/d;->d()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 6
    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget v0, p0, Lcom/google/android/material/resources/d;->fontFamilyResourceId:I

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lcom/google/android/material/resources/d;->textStyle:I

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v1, "Error loading font "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/material/resources/d;->fontFamily:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v1, "TextAppearance"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :catch_1
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/resources/d;->d()V

    .line 61
    const/4 p1, 0x1

    .line 62
    .line 63
    iput-boolean p1, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 66
    return-object p1
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/resources/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/resources/d;->e()Landroid/graphics/Typeface;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/resources/d;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/material/resources/d$b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/resources/d$b;-><init>(Lcom/google/android/material/resources/d;Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/resources/d;->h(Landroid/content/Context;Lcom/google/android/material/resources/f;)V

    .line 16
    return-void
.end method

.method public h(Landroid/content/Context;Lcom/google/android/material/resources/f;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/resources/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/resources/d;->m(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/resources/d;->d()V

    .line 14
    .line 15
    :goto_0
    iget v0, p0, Lcom/google/android/material/resources/d;->fontFamilyResourceId:I

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 21
    .line 22
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/material/resources/d;->font:Landroid/graphics/Typeface;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1, v1}, Lcom/google/android/material/resources/f;->b(Landroid/graphics/Typeface;Z)V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_2
    :try_start_0
    new-instance v2, Lcom/google/android/material/resources/d$a;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, p2}, Lcom/google/android/material/resources/d$a;-><init>(Lcom/google/android/material/resources/d;Lcom/google/android/material/resources/f;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->i(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "Error loading font "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/material/resources/d;->fontFamily:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-string v2, "TextAppearance"

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 68
    const/4 p1, -0x3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/google/android/material/resources/f;->a(I)V

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :catch_1
    iput-boolean v1, p0, Lcom/google/android/material/resources/d;->fontResolved:Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Lcom/google/android/material/resources/f;->a(I)V

    .line 78
    :goto_1
    return-void
.end method

.method public i()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/d;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/resources/d;->textSize:F

    return v0
.end method

.method public k(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/resources/d;->textColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/resources/d;->textSize:F

    return-void
.end method

.method public n(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/resources/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/d;->o(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/resources/d;->textColor:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const/high16 p1, -0x1000000

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    iget p1, p0, Lcom/google/android/material/resources/d;->shadowRadius:F

    .line 26
    .line 27
    iget p3, p0, Lcom/google/android/material/resources/d;->shadowDx:F

    .line 28
    .line 29
    iget v0, p0, Lcom/google/android/material/resources/d;->shadowDy:F

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/material/resources/d;->shadowColor:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 39
    move-result v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 43
    move-result v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 49
    return-void
.end method

.method public o(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/resources/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/resources/d;->m(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/d;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/f;)V

    .line 18
    :goto_0
    return-void
.end method

.method public p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p3}, Lcom/google/android/material/resources/h;->a(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    move-object p3, p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 11
    .line 12
    iget p1, p0, Lcom/google/android/material/resources/d;->textStyle:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    .line 16
    move-result p3

    .line 17
    not-int p3, p3

    .line 18
    and-int/2addr p1, p3

    .line 19
    .line 20
    and-int/lit8 p3, p1, 0x1

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    const/4 p3, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p3, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 29
    .line 30
    and-int/lit8 p1, p1, 0x2

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/high16 p1, -0x41800000    # -0.25f

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 40
    .line 41
    iget p1, p0, Lcom/google/android/material/resources/d;->textSize:F

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/google/android/material/resources/d;->hasLetterSpacing:Z

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget p1, p0, Lcom/google/android/material/resources/d;->letterSpacing:F

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 54
    :cond_3
    return-void
.end method
