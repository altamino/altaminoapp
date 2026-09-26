.class Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;
.super Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# virtual methods
.method b(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move v0, p1

    .line 3
    move v1, p2

    .line 4
    move v2, p3

    .line 5
    move-object v3, p4

    .line 6
    move-object v4, p5

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 10
    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->e()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->a()F

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 13
    return-void
.end method
