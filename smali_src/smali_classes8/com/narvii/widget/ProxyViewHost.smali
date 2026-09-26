.class public Lcom/narvii/widget/ProxyViewHost;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field static fAttachInfo:Ljava/lang/reflect/Field;

.field static mDispatchAttached:Ljava/lang/reflect/Method;

.field static mDispatchDetached:Ljava/lang/reflect/Method;


# instance fields
.field attach:Lcom/narvii/widget/ProxyView;

.field attachInfo:Ljava/lang/Object;

.field height:I

.field final layout:Ljava/lang/Runnable;

.field measureH:I

.field measureW:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    const-class v0, Landroid/view/View;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :try_start_0
    const-string v3, "mAttachInfo"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v4

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception v4

    .line 18
    move-object v3, v2

    .line 19
    .line 20
    :goto_0
    const-string v5, "ProxyViewHost.fAttachInfo"

    .line 21
    .line 22
    .line 23
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    :goto_1
    sput-object v3, Lcom/narvii/widget/ProxyViewHost;->fAttachInfo:Ljava/lang/reflect/Field;

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    const-string v5, "android.view.View$AttachInfo"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    const-string v5, "dispatchAttachedToWindow"

    .line 39
    const/4 v6, 0x2

    .line 40
    .line 41
    new-array v6, v6, [Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v4, v6, v3

    .line 44
    .line 45
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    aput-object v4, v6, v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 52
    .line 53
    .line 54
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    goto :goto_3

    .line 56
    :catch_2
    move-exception v5

    .line 57
    goto :goto_2

    .line 58
    :catch_3
    move-exception v5

    .line 59
    move-object v4, v2

    .line 60
    .line 61
    :goto_2
    const-string v6, "ProxyViewHost.mDispatchAttached"

    .line 62
    .line 63
    .line 64
    invoke-static {v6, v5}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    :goto_3
    sput-object v4, Lcom/narvii/widget/ProxyViewHost;->mDispatchAttached:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    :try_start_4
    const-string v4, "dispatchDetachedFromWindow"

    .line 69
    .line 70
    new-array v3, v3, [Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 78
    goto :goto_4

    .line 79
    :catch_4
    move-exception v0

    .line 80
    .line 81
    const-string v1, "ProxyViewHost.mDispatchDetached"

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    :goto_4
    sput-object v2, Lcom/narvii/widget/ProxyViewHost;->mDispatchDetached:Ljava/lang/reflect/Method;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/widget/ProxyViewHost$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/widget/ProxyViewHost$1;-><init>(Lcom/narvii/widget/ProxyViewHost;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->layout:Ljava/lang/Runnable;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 21
    :cond_0
    return-void
.end method

.method static dispatchAttachedToWindow(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/widget/ProxyViewHost;->mDispatchAttached:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    aput-object p1, v1, v2

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    return-void
.end method

.method static dispatchDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/widget/ProxyViewHost;->mDispatchDetached:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    return-void
.end method

.method static getAttachInfo(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    :try_start_0
    sget-object v1, Lcom/narvii/widget/ProxyViewHost;->fAttachInfo:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    return-object v0
.end method

.method private invalidListView(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    instance-of v3, v2, Landroid/widget/ListView;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    check-cast v2, Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v2}, Lcom/narvii/widget/ProxyViewHost;->invalidListView(Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/narvii/widget/ProxyView;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    .line 13
    .line 14
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/widget/ProxyViewHost;->requestLayout()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 30
    throw p1
.end method

.method public detachFrom(Lcom/narvii/widget/ProxyView;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    .line 14
    :cond_0
    return-void
.end method

.method public getAttachView()Lcom/narvii/widget/ProxyView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/widget/ProxyViewHost;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result p1

    return p1
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p4, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v0, p1

    .line 4
    invoke-virtual {p2, p4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object p4, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    invoke-interface {p1, p4, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    aget v0, p1, v0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    aget p1, p1, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 0

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 12
    :goto_0
    return-void
.end method

.method protected onDetach(Lcom/narvii/widget/ProxyView;)V
    .locals 0

    return-void
.end method

.method public onEvent(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 24
    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/ProxyViewHost;->layout:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attachInfo:Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->layout:Ljava/lang/Runnable;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 20
    :cond_0
    return-void
.end method

.method public sendEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyView;->onEvent(ILjava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method setMeasure(II)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ProxyViewHost;->measureW:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/ProxyViewHost;->measureH:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 8
    return-void
.end method

.method setSize(II)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ProxyViewHost;->width:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/ProxyViewHost;->height:I

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 9
    return-void
.end method

.method updateAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 3
    .line 4
    if-ne v0, p1, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachInfo(Landroid/view/View;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/ProxyViewHost;->attachInfo:Ljava/lang/Object;

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/narvii/widget/ProxyViewHost;->dispatchDetachedFromWindow(Landroid/view/View;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p0}, Lcom/narvii/widget/ProxyViewHost;->invalidListView(Landroid/view/ViewGroup;)V

    .line 24
    .line 25
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attachInfo:Ljava/lang/Object;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/narvii/widget/ProxyViewHost;->dispatchAttachedToWindow(Landroid/view/View;Ljava/lang/Object;)V

    .line 31
    .line 32
    :cond_2
    if-eqz p1, :cond_5

    .line 33
    .line 34
    iget v0, p1, Lcom/narvii/widget/ProxyView;->measureW:I

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget v1, p1, Lcom/narvii/widget/ProxyView;->measureH:I

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ProxyViewHost;->setMeasure(II)V

    .line 44
    .line 45
    :cond_3
    iget v0, p1, Lcom/narvii/widget/ProxyView;->width:I

    .line 46
    .line 47
    if-lez v0, :cond_4

    .line 48
    .line 49
    iget v1, p1, Lcom/narvii/widget/ProxyView;->height:I

    .line 50
    .line 51
    if-lez v1, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ProxyViewHost;->setSize(II)V

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 61
    :cond_5
    return-void
.end method
