.class Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ViewOverlayApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation


# static fields
.field static sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mDisposed:Z

.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/ViewGroup;

.field mRequestingView:Landroid/view/View;

.field mViewOverlay:Landroidx/transition/ViewOverlayApi14;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    .line 3
    .line 4
    const-string v1, "invalidateChildInParentFast"

    .line 5
    const/4 v2, 0x3

    .line 6
    .line 7
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    aput-object v3, v2, v4

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    aput-object v3, v2, v4

    .line 16
    .line 17
    const-class v3, Landroid/graphics/Rect;

    .line 18
    const/4 v4, 0x2

    .line 19
    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDisposed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private d()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDisposed:Z

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_1
    return-void
.end method

.method private e([I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    aget v3, v0, v2

    .line 19
    .line 20
    aget v4, v1, v2

    .line 21
    sub-int/2addr v3, v4

    .line 22
    .line 23
    aput v3, p1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    aget v0, v0, v2

    .line 27
    .line 28
    aget v1, v1, v2

    .line 29
    sub-int/2addr v0, v1

    .line 30
    .line 31
    aput v0, p1, v2

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 38
    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->W(Landroid/view/View;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x2

    .line 35
    .line 36
    new-array v2, v1, [I

    .line 37
    .line 38
    new-array v1, v1, [I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 47
    const/4 v3, 0x0

    .line 48
    .line 49
    aget v4, v2, v3

    .line 50
    .line 51
    aget v3, v1, v3

    .line 52
    sub-int/2addr v4, v3

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->d0(Landroid/view/View;I)V

    .line 56
    const/4 v3, 0x1

    .line 57
    .line 58
    aget v2, v2, v3

    .line 59
    .line 60
    aget v1, v1, v3

    .line 61
    sub-int/2addr v2, v1

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    aget v3, v0, v2

    .line 19
    .line 20
    aget v4, v1, v2

    .line 21
    sub-int/2addr v3, v4

    .line 22
    int-to-float v3, v3

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    aget v0, v0, v4

    .line 26
    .line 27
    aget v1, v1, v4

    .line 28
    sub-int/2addr v0, v1

    .line 29
    int-to-float v0, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    .line 34
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v1

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    move v0, v2

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result v0

    .line 66
    .line 67
    :goto_0
    if-ge v2, v0, :cond_1

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->d()V

    .line 22
    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->d()V

    .line 7
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    aget v1, p1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    aget v3, p1, v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aput v0, p1, v0

    .line 20
    .line 21
    aput v0, p1, v2

    .line 22
    const/4 v1, 0x2

    .line 23
    .line 24
    new-array v1, v1, [I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->e([I)V

    .line 28
    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    aget v1, v1, v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method
