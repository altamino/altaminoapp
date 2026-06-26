.class public Lcom/narvii/widget/ProxyViewHost;
.super Landroid/widget/FrameLayout;
.source "ProxyViewHost.java"


# static fields
.field static final fAttachInfo:Ljava/lang/reflect/Field;

.field static final mDispatchAttached:Ljava/lang/reflect/Method;

.field static final mDispatchDetached:Ljava/lang/reflect/Method;


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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 221
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "mAttachInfo"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v0

    :goto_0
    const-string v4, "ProxyViewHost.fAttachInfo"

    .line 224
    invoke-static {v4, v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :goto_1
    sput-object v2, Lcom/narvii/widget/ProxyViewHost;->fAttachInfo:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    .line 230
    :try_start_2
    const-class v3, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "android.view.View$AttachInfo"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 232
    const-class v4, Landroid/view/View;

    const-string v5, "dispatchAttachedToWindow"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v3, v6, v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 234
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    move-object v3, v0

    :goto_2
    const-string v5, "ProxyViewHost.mDispatchAttached"

    .line 236
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    :goto_3
    sput-object v3, Lcom/narvii/widget/ProxyViewHost;->mDispatchAttached:Ljava/lang/reflect/Method;

    .line 241
    :try_start_4
    const-class v3, Landroid/view/View;

    const-string v4, "dispatchDetachedFromWindow"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    const-string v2, "ProxyViewHost.mDispatchDetached"

    .line 244
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    :goto_4
    sput-object v0, Lcom/narvii/widget/ProxyViewHost;->mDispatchDetached:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    new-instance p1, Lcom/narvii/widget/ProxyViewHost$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/ProxyViewHost$1;-><init>(Lcom/narvii/widget/ProxyViewHost;)V

    iput-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->layout:Ljava/lang/Runnable;

    .line 38
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method static dispatchAttachedToWindow(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    .line 262
    :try_start_0
    sget-object v0, Lcom/narvii/widget/ProxyViewHost;->mDispatchAttached:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static dispatchDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 269
    :try_start_0
    sget-object v0, Lcom/narvii/widget/ProxyViewHost;->mDispatchDetached:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static getAttachInfo(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 254
    :cond_0
    :try_start_0
    sget-object v1, Lcom/narvii/widget/ProxyViewHost;->fAttachInfo:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private invalidListView(Landroid/view/ViewGroup;)V
    .locals 4

    .line 130
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 134
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 135
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/narvii/widget/ProxyViewHost;->invalidListView(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/narvii/widget/ProxyView;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

    .line 75
    invoke-virtual {p0}, Lcom/narvii/widget/ProxyViewHost;->requestLayout()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    return-void

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public detachFrom(Lcom/narvii/widget/ProxyView;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    .line 84
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    :cond_0
    return-void
.end method

.method public getAttachView()Lcom/narvii/widget/ProxyView;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/widget/ProxyViewHost;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result p1

    return p1
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p4, v0

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v0, p1

    .line 200
    invoke-virtual {p2, p4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

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

    .line 142
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 143
    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 144
    iget-object p1, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    invoke-virtual {p1, p2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 0

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

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

    .line 172
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 163
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/widget/ProxyViewHost;->layout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 165
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attachInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->layout:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public sendEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyView;->onEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setMeasure(II)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/widget/ProxyViewHost;->measureW:I

    .line 53
    iput p2, p0, Lcom/narvii/widget/ProxyViewHost;->measureH:I

    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method setSize(II)V
    .locals 1

    .line 46
    iput p1, p0, Lcom/narvii/widget/ProxyViewHost;->width:I

    .line 47
    iput p2, p0, Lcom/narvii/widget/ProxyViewHost;->height:I

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method

.method updateAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attach:Lcom/narvii/widget/ProxyView;

    if-ne v0, p1, :cond_5

    .line 100
    invoke-static {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachInfo(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/narvii/widget/ProxyViewHost;->attachInfo:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p0}, Lcom/narvii/widget/ProxyViewHost;->dispatchDetachedFromWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0, p0}, Lcom/narvii/widget/ProxyViewHost;->invalidListView(Landroid/view/ViewGroup;)V

    .line 110
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/narvii/widget/ProxyViewHost;->attachInfo:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 112
    invoke-static {p0, v0}, Lcom/narvii/widget/ProxyViewHost;->dispatchAttachedToWindow(Landroid/view/View;Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_5

    .line 117
    iget v0, p1, Lcom/narvii/widget/ProxyView;->measureW:I

    if-eqz v0, :cond_3

    iget v1, p1, Lcom/narvii/widget/ProxyView;->measureH:I

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ProxyViewHost;->setMeasure(II)V

    .line 120
    :cond_3
    iget v0, p1, Lcom/narvii/widget/ProxyView;->width:I

    if-lez v0, :cond_4

    iget v1, p1, Lcom/narvii/widget/ProxyView;->height:I

    if-lez v1, :cond_4

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/ProxyViewHost;->setSize(II)V

    .line 123
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method
