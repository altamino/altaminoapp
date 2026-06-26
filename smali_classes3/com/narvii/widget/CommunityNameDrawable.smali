.class public Lcom/narvii/widget/CommunityNameDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CommunityNameDrawable.java"


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

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->textColor:I

    const/high16 v0, 0x41c00000    # 24.0f

    .line 28
    iput v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->textSize:F

    const-string v0, "([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])"

    .line 38
    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->regex:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/narvii/widget/CommunityNameDrawable;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/narvii/widget/CommunityNameDrawable;->textColor:I

    .line 50
    iput p4, p0, Lcom/narvii/widget/CommunityNameDrawable;->textSize:F

    .line 51
    iput p5, p0, Lcom/narvii/widget/CommunityNameDrawable;->backColor:I

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    .line 55
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 59
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 60
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->backgroudPaint:Landroid/graphics/Paint;

    .line 63
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->backgroudPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    invoke-direct {p0}, Lcom/narvii/widget/CommunityNameDrawable;->parseCommunityName()V

    .line 66
    iget-boolean p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->communtiy_name_icon_corner:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/CommunityNameDrawable;->corner:I

    return-void
.end method

.method private parseCommunityName()V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    const-string v0, "([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])"

    .line 98
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, 0x0

    .line 103
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 104
    aget-char v4, v0, v3

    aget-char v5, v1, v3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 105
    iput-boolean v4, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    .line 111
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    goto :goto_2

    .line 113
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/widget/CommunityNameDrawable;->firstLetterEmoj:Z

    .line 114
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->communityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->corner:I

    int-to-float v4, v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/narvii/widget/CommunityNameDrawable;->backgroudPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->text:Ljava/lang/String;

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    iget-object v5, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/widget/CommunityNameDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
