.class Lcom/narvii/widget/Flipper$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/narvii/widget/Flipper;->onFling(F)V

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    .line 2
    iget-object p4, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    iget-object v0, p4, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p4, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-boolean p1, p4, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 15
    return v1

    .line 16
    .line 17
    :cond_0
    iput-boolean v1, p4, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4, p1, p2, p3}, Lcom/narvii/widget/Flipper;->onScrollX(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 9
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/Flipper$1;->this$0:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/Flipper;->onTap()V

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
