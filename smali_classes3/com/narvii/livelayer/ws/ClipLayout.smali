.class public Lcom/narvii/livelayer/ws/ClipLayout;
.super Landroid/widget/FrameLayout;
.source "ClipLayout.java"


# instance fields
.field avatarSize:I

.field shouldClip:Z

.field vPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    iget-boolean v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->shouldClip:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    iget v1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 52
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAvatarSize(I)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    if-ne v0, p1, :cond_0

    return-void

    .line 30
    :cond_0
    iput p1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setShouldClip(Z)V
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->shouldClip:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->shouldClip:Z

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
