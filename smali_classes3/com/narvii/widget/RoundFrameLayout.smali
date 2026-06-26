.class public Lcom/narvii/widget/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RoundFrameLayout.java"


# instance fields
.field cornerRadius:I

.field private cornerRadiusArray:[F

.field shouldClip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/narvii/widget/RoundFrameLayout;->shouldClip:Z

    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadiusArray:[F

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadius:I

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 43
    iget-boolean v0, p0, Lcom/narvii/widget/RoundFrameLayout;->shouldClip:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadius:I

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadiusArray:[F

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadiusArray:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 52
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 55
    :catch_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    throw v0

    .line 60
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadius:I

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCornerRadius([F)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/widget/RoundFrameLayout;->cornerRadiusArray:[F

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setShouldClip(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/narvii/widget/RoundFrameLayout;->shouldClip:Z

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
