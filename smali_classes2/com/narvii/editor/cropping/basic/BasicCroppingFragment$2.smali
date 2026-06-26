.class Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BasicCroppingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$2;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$2;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    neg-float p2, p3

    invoke-static {p1, p2, p4}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$200(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 412
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$2;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    invoke-static {p1}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$300(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
