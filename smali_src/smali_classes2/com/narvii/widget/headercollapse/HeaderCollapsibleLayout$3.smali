.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothCollapse()V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$3;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderStartCollapsing()V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
