.class public Lcom/google/android/material/ripple/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/o;
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/ripple/a$b;
    }
.end annotation


# instance fields
.field private drawableState:Lcom/google/android/material/ripple/a$b;


# direct methods
.method private constructor <init>(Lcom/google/android/material/ripple/a$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/ripple/a$b;Lcom/google/android/material/ripple/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/ripple/a;-><init>(Lcom/google/android/material/ripple/a$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/k;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/material/ripple/a$b;

    new-instance v1, Lcom/google/android/material/shape/g;

    invoke-direct {v1, p1}, Lcom/google/android/material/shape/g;-><init>(Lcom/google/android/material/shape/k;)V

    invoke-direct {v0, v1}, Lcom/google/android/material/ripple/a$b;-><init>(Lcom/google/android/material/shape/g;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/ripple/a;-><init>(Lcom/google/android/material/ripple/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/ripple/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/material/ripple/a$b;-><init>(Lcom/google/android/material/ripple/a$b;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 10
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/google/android/material/ripple/a$b;->shouldDrawDelegate:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->draw(Landroid/graphics/Canvas;)V

    .line 12
    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->getOpacity()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/ripple/a;->a()Lcom/google/android/material/ripple/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    move v0, v2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/ripple/b;->e([I)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 23
    .line 24
    iget-boolean v3, v1, Lcom/google/android/material/ripple/a$b;->shouldDrawDelegate:Z

    .line 25
    .line 26
    if-eq v3, p1, :cond_1

    .line 27
    .line 28
    iput-boolean p1, v1, Lcom/google/android/material/ripple/a$b;->shouldDrawDelegate:Z

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v2, v0

    .line 31
    :goto_0
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setAlpha(I)V

    .line 8
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V
    .locals 1
    .param p1    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 8
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setTint(I)V

    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/ripple/a;->drawableState:Lcom/google/android/material/ripple/a$b;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->delegate:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    return-void
.end method
