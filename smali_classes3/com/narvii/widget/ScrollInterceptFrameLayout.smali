.class public Lcom/narvii/widget/ScrollInterceptFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollInterceptFrameLayout.java"


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/narvii/widget/ScrollInterceptFrameLayout$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/ScrollInterceptFrameLayout$1;-><init>(Lcom/narvii/widget/ScrollInterceptFrameLayout;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/narvii/widget/ScrollInterceptFrameLayout;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/widget/ScrollInterceptFrameLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
