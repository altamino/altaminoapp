.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;
.super Ljava/lang/Object;
.source "HeaderCollapsibleLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 700
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 701
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$600(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$600(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$400(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$400(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 706
    iget-object v2, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$800(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    move-result v2

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$800(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 707
    invoke-static {v4}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$800(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    move-result v4

    iget v5, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 708
    invoke-static {v5}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$800(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    move-result v5

    iget-object v6, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v6}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$900(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$7;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    iget-boolean v5, v5, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsScrollingDown:Z

    .line 706
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderOffsetChanged(IIFZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
