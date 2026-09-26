.class public Lh3/a;
.super Lcom/google/android/material/card/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/circularreveal/d;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lh3/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/card/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lcom/google/android/material/circularreveal/c;

    invoke-direct {p1, p0}, Lcom/google/android/material/circularreveal/c;-><init>(Lcom/google/android/material/circularreveal/c$a;)V

    iput-object p1, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/c;->b()V

    .line 6
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/c;->a()V

    .line 6
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/c;->c(Landroid/graphics/Canvas;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 12
    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/c;->e()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/c;->f()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/d$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/c;->h()Lcom/google/android/material/circularreveal/d$e;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/c;->j()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/c;->k(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/c;->l(I)V

    .line 6
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/d$e;)V
    .locals 1
    .param p1    # Lcom/google/android/material/circularreveal/d$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lh3/a;->helper:Lcom/google/android/material/circularreveal/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/c;->m(Lcom/google/android/material/circularreveal/d$e;)V

    .line 6
    return-void
.end method
