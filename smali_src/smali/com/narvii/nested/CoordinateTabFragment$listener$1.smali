.class public final Lcom/narvii/nested/CoordinateTabFragment$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 4
    .param p1    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    instance-of v0, v0, Lcom/narvii/nested/behavior/SpringBehavior;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    move v0, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v2

    .line 34
    .line 35
    :goto_1
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/nested/CoordinateTabFragment;->getEnableSwipeRefreshLayout()Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    if-ltz p2, :cond_3

    .line 63
    move v2, v3

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    .line 68
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/narvii/nested/CoordinateTabFragment;->access$getLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;)I

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eq p1, p2, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->access$setLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;I)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutScroll(I)V

    .line 90
    :cond_5
    return-void
.end method
