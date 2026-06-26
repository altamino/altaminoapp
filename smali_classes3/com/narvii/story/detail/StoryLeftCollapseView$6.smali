.class Lcom/narvii/story/detail/StoryLeftCollapseView$6;
.super Ljava/lang/Object;
.source "StoryLeftCollapseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryLeftCollapseView;->doCollapseAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryLeftCollapseView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$6;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    iput-object p2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$6;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$6;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 367
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$6;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$6;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$6;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
