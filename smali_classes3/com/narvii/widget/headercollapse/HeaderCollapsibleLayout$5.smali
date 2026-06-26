.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;
.super Ljava/lang/Object;
.source "HeaderCollapsibleLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->innerSmoothExpand()V
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

    .line 507
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 521
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 523
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$400(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 524
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$400(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 525
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderExpanded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 510
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 512
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$400(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 513
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$5;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$400(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 514
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderStartExpanding()V

    goto :goto_0

    :cond_0
    return-void
.end method
