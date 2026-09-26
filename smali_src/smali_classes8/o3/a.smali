.class public Lo3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field private static final EASING_TYPE_FORMAT_END:Ljava/lang/String; = ")"

.field private static final EASING_TYPE_FORMAT_START:Ljava/lang/String; = "("

.field private static final EASING_TYPE_PATH:Ljava/lang/String; = "path"


# direct methods
.method private static a([Ljava/lang/String;I)F
    .locals 2

    .line 1
    .line 2
    aget-object p0, p0, p1

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    cmpg-float p1, p0, p1

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    cmpl-float p1, p0, p1

    .line 16
    .line 17
    if-gtz p1, :cond_0

    .line 18
    return p0

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result p1

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, "("

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, ")"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    move-result p0

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;II)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/b;->c(Landroid/content/Context;II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static e(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_4

    .line 17
    .line 18
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 19
    const/4 p1, 0x3

    .line 20
    .line 21
    if-ne p0, p1, :cond_3

    .line 22
    .line 23
    iget-object p0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    const-string p2, "cubic-bezier"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p2}, Lo3/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p2}, Lo3/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    const-string p2, ","

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    array-length p2, p0

    .line 47
    const/4 v0, 0x4

    .line 48
    .line 49
    if-ne p2, v0, :cond_0

    .line 50
    const/4 p2, 0x0

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p2}, Lo3/a;->a([Ljava/lang/String;I)F

    .line 54
    move-result p2

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v1}, Lo3/a;->a([Ljava/lang/String;I)F

    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x2

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v1}, Lo3/a;->a([Ljava/lang/String;I)F

    .line 63
    move-result v1

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Lo3/a;->a([Ljava/lang/String;I)F

    .line 67
    move-result p0

    .line 68
    .line 69
    .line 70
    invoke-static {p2, v0, v1, p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->a(FFFF)Landroid/view/animation/Interpolator;

    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    const-string v0, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    array-length p0, p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_1
    const-string p1, "path"

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, Lo3/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    move-result p2

    .line 103
    .line 104
    if-eqz p2, :cond_2

    .line 105
    .line 106
    .line 107
    invoke-static {p0, p1}, Lo3/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->e(Ljava/lang/String;)Landroid/graphics/Path;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->b(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    .line 119
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string v0, "Invalid motion easing type: "

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p1

    .line 141
    .line 142
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string p1, "Motion easing theme attribute must be a string"

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    throw p0

    .line 149
    :cond_4
    return-object p2
.end method
