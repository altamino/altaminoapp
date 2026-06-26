.class Lcom/narvii/widget/ScrollDetectFrameLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollDetectFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ScrollDetectFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ScrollDetectFrameLayout;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    iget-object p1, p1, Lcom/narvii/widget/ScrollDetectFrameLayout;->scrollDetectListener:Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;

    if-eqz p1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    iget-object p2, p2, Lcom/narvii/widget/ScrollDetectFrameLayout;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    iget-object p1, p1, Lcom/narvii/widget/ScrollDetectFrameLayout;->scrollDetectListener:Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;

    invoke-interface {p1}, Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;->onScrollChecked()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
