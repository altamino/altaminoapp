.class public Lcom/narvii/widget/EmojionePlusView;
.super Lcom/narvii/widget/EmojioneView;
.source "SourceFile"


# instance fields
.field private plus:Landroid/graphics/drawable/Drawable;

.field private plusBase:Landroid/graphics/drawable/Drawable;

.field private plusBaseBig:Landroid/graphics/drawable/Drawable;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/EmojioneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/EmojionePlusView;->rect:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0807f0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/widget/EmojionePlusView;->plusBase:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0807f1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/widget/EmojionePlusView;->plusBaseBig:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    const-string p1, "big"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/widget/EmojionePlusView;->plusBaseBig:Landroid/graphics/drawable/Drawable;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/EmojionePlusView;->plusBase:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    const v0, 0x7f060382

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/widget/EmojionePlusView;->plus:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/EmojioneView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->emoji:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/EmojionePlusView;->plus:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 17
    move-result v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/widget/EmojionePlusView;->plus:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/widget/EmojionePlusView;->rect:Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    move-result v3

    .line 30
    sub-int/2addr v3, v0

    .line 31
    .line 32
    div-int/lit8 v3, v3, 0x2

    .line 33
    .line 34
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/widget/EmojionePlusView;->rect:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 39
    add-int/2addr v3, v0

    .line 40
    .line 41
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v0

    .line 46
    sub-int/2addr v0, v1

    .line 47
    .line 48
    div-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/widget/EmojionePlusView;->rect:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 55
    add-int/2addr v2, v1

    .line 56
    .line 57
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/widget/EmojionePlusView;->plus:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/widget/EmojionePlusView;->plus:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setViewColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "big"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/EmojionePlusView;->plusBaseBig:Landroid/graphics/drawable/Drawable;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/EmojionePlusView;->plusBase:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v0, p1}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/widget/EmojionePlusView;->plus:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    return-void
.end method
