.class Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;
.super Ljava/lang/Object;
.source "FloatingWindowBaseLayout.java"

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

    .line 130
    iput-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 134
    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    invoke-static {v0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->access$000(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    invoke-static {p1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->access$100(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    iget-object v1, p0, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout$1;->this$0:Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;

    invoke-static {v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->access$000(Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
