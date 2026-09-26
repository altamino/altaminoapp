.class Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->f()I

    .line 14
    move-result p1

    .line 15
    .line 16
    new-array p1, p1, [[I

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 19
    :goto_0
    return-void
.end method


# virtual methods
.method A([ILandroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->a(Landroid/graphics/drawable/Drawable;)I

    .line 4
    move-result p2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 7
    .line 8
    aput-object p1, v0, p2

    .line 9
    return p2
.end method

.method B([I)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->h()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    .line 14
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    return v2

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public o(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->o(II)V

    .line 4
    .line 5
    new-array p2, p2, [[I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 14
    return-void
.end method

.method s()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    new-array v1, v1, [[I

    .line 6
    array-length v0, v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 13
    .line 14
    aget-object v2, v2, v0

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, [I

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    .line 26
    :goto_1
    aput-object v2, v1, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 32
    return-void
.end method
