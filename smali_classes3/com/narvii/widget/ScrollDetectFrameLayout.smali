.class public Lcom/narvii/widget/ScrollDetectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollDetectFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;
    }
.end annotation


# instance fields
.field final configuration:Landroid/view/ViewConfiguration;

.field detector:Landroid/view/GestureDetector;

.field scrollDetectListener:Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->configuration:Landroid/view/ViewConfiguration;

    .line 30
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/ScrollDetectFrameLayout$1;-><init>(Lcom/narvii/widget/ScrollDetectFrameLayout;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->detector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setScrollDetectListener(Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->scrollDetectListener:Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;

    return-void
.end method
