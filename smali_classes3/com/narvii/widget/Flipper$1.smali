.class Lcom/narvii/widget/Flipper$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Flipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/Flipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/Flipper;


# direct methods
.method constructor <init>(Lcom/narvii/widget/Flipper;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    invoke-virtual {p1, p3}, Lcom/narvii/widget/Flipper;->onFling(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 84
    iget-object p4, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    iget-object v0, p4, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p4, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p4, Lcom/narvii/widget/Flipper;->isScrolling:Z

    return v1

    .line 88
    :cond_0
    iget-object p4, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    iput-boolean v1, p4, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 89
    invoke-virtual {p4, p1, p2, p3}, Lcom/narvii/widget/Flipper;->onScrollX(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V

    .line 90
    iget-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 103
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    invoke-virtual {p1}, Lcom/narvii/widget/Flipper;->onTap()V

    const/4 p1, 0x1

    return p1
.end method
