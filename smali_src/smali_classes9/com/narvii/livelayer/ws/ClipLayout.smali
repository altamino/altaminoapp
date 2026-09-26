.class public Lcom/narvii/livelayer/ws/ClipLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field avatarSize:I

.field shouldClip:Z

.field vPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const/high16 p2, 0x42200000    # 40.0f

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    .line 17
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->shouldClip:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    .line 20
    neg-int v0, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result v2

    .line 29
    sub-int/2addr v1, v2

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    .line 32
    .line 33
    div-int/lit8 v2, v2, 0x2

    .line 34
    sub-int/2addr v1, v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 38
    move-result v2

    .line 39
    .line 40
    iget v3, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    .line 41
    add-int/2addr v2, v3

    .line 42
    const/4 v3, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    move-result v0

    .line 51
    .line 52
    iget v1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    .line 53
    .line 54
    div-int/lit8 v1, v1, 0x2

    .line 55
    add-int/2addr v0, v1

    .line 56
    .line 57
    iget v1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    .line 58
    neg-int v1, v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 66
    move-result v3

    .line 67
    .line 68
    iget v4, p0, Lcom/narvii/livelayer/ws/ClipLayout;->vPadding:I

    .line 69
    add-int/2addr v3, v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    return-void
.end method

.method public setAvatarSize(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->avatarSize:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method

.method public setShouldClip(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/livelayer/ws/ClipLayout;->shouldClip:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/livelayer/ws/ClipLayout;->shouldClip:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method
