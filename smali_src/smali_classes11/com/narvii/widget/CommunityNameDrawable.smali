.class public Lcom/narvii/widget/CommunityNameDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_SIZE:I = 0x18


# instance fields
.field private backColor:I

.field private backgroudPaint:Landroid/graphics/Paint;

.field private communityName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private corner:I

.field private firstLetterEmoj:Z

.field private paint:Landroid/graphics/Paint;

.field private final regex:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IFI)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    const-string v0, "([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->regex:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/widget/CommunityNameDrawable;->context:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 12
    .line 13
    iput p3, p0, Lcom/narvii/widget/CommunityNameDrawable;->textColor:I

    .line 14
    .line 15
    iput p4, p0, Lcom/narvii/widget/CommunityNameDrawable;->textSize:F

    .line 16
    .line 17
    iput p5, p0, Lcom/narvii/widget/CommunityNameDrawable;->backColor:I

    .line 18
    .line 19
    new-instance p2, Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 36
    .line 37
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 46
    .line 47
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 48
    .line 49
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 50
    .line 51
    .line 52
    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 59
    .line 60
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    .line 65
    new-instance p2, Landroid/graphics/Paint;

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 69
    .line 70
    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->backgroudPaint:Landroid/graphics/Paint;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/widget/CommunityNameDrawable;->parseCommunityName()V

    .line 77
    .line 78
    iget-boolean p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    .line 79
    .line 80
    if-eqz p2, :cond_0

    .line 81
    .line 82
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    :goto_0
    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    sget p2, Lcom/narvii/lib/R$dimen;->communtiy_name_icon_corner:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 105
    move-result p1

    .line 106
    .line 107
    iput p1, p0, Lcom/narvii/widget/CommunityNameDrawable;->corner:I

    .line 108
    return-void
.end method

.method private parseCommunityName()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 41
    move-result-object v0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    array-length v4, v0

    .line 44
    .line 45
    if-ge v3, v4, :cond_1

    .line 46
    .line 47
    aget-char v4, v0, v3

    .line 48
    .line 49
    aget-char v5, v1, v3

    .line 50
    .line 51
    if-ne v4, v5, :cond_0

    .line 52
    const/4 v4, 0x1

    .line 53
    .line 54
    iput-boolean v4, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    .line 60
    .line 61
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    :goto_1
    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    .line 100
    :goto_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    .line 17
    new-instance v3, Landroid/graphics/RectF;

    .line 18
    .line 19
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 20
    int-to-float v4, v4

    .line 21
    .line 22
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 23
    int-to-float v5, v5

    .line 24
    .line 25
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 26
    int-to-float v6, v6

    .line 27
    .line 28
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 29
    int-to-float v0, v0

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 33
    .line 34
    iget v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->corner:I

    .line 35
    int-to-float v4, v0

    .line 36
    int-to-float v0, v0

    .line 37
    .line 38
    iget-object v5, p0, Lcom/narvii/widget/CommunityNameDrawable;->backgroudPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    .line 44
    int-to-float v1, v1

    .line 45
    .line 46
    const/high16 v3, 0x40000000    # 2.0f

    .line 47
    div-float/2addr v1, v3

    .line 48
    int-to-float v2, v2

    .line 49
    div-float/2addr v2, v3

    .line 50
    .line 51
    iget-object v4, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    .line 55
    move-result v4

    .line 56
    .line 57
    iget-object v5, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    .line 61
    move-result v5

    .line 62
    add-float/2addr v4, v5

    .line 63
    div-float/2addr v4, v3

    .line 64
    sub-float/2addr v2, v4

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method
