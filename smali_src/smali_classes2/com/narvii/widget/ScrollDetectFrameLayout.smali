.class public Lcom/narvii/widget/ScrollDetectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .line 10
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->configuration:Landroid/view/ViewConfiguration;

    .line 14
    .line 15
    new-instance p1, Landroid/view/GestureDetector;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/widget/ScrollDetectFrameLayout$1;-><init>(Lcom/narvii/widget/ScrollDetectFrameLayout;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->detector:Landroid/view/GestureDetector;

    .line 30
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->detector:Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public setScrollDetectListener(Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout;->scrollDetectListener:Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;

    return-void
.end method
