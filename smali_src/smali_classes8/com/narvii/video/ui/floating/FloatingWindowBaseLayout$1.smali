.class Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;


# direct methods
.method constructor <init>(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->access$000(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->access$100(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->access$000(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager$LayoutParams;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    return-void
.end method
