.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onNestedPreFling(Landroid/view/View;FF)Z
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
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

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
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->mIsEnabled:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->a(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;->onHeaderCollapsed()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 41
    const/4 v0, 0x2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 45
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
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$10;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->onHeaderStatusChanged(I)V

    .line 7
    return-void
.end method
