.class Lcom/narvii/widget/ScrollDetectFrameLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/widget/ScrollDetectFrameLayout;->scrollDetectListener:Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/narvii/widget/ScrollDetectFrameLayout;->configuration:Landroid/view/ViewConfiguration;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 18
    move-result p2

    .line 19
    int-to-float p2, p2

    .line 20
    .line 21
    cmpl-float p1, p1, p2

    .line 22
    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/widget/ScrollDetectFrameLayout$1;->this$0:Lcom/narvii/widget/ScrollDetectFrameLayout;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/widget/ScrollDetectFrameLayout;->scrollDetectListener:Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/widget/ScrollDetectFrameLayout$ScrollDetectListener;->onScrollChecked()V

    .line 31
    :cond_0
    const/4 p1, 0x1

    .line 32
    return p1
.end method
