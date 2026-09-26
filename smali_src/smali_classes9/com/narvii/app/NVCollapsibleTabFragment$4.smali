.class Lcom/narvii/app/NVCollapsibleTabFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVCollapsibleTabFragment;->setupSwipeRefreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVCollapsibleTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->p(Lcom/narvii/app/NVCollapsibleTabFragment;)I

    .line 34
    move-result v1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->q(Lcom/narvii/app/NVCollapsibleTabFragment;I)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 44
    .line 45
    instance-of v2, v1, Lcom/narvii/list/NVListFragment;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    check-cast v1, Lcom/narvii/list/NVListFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->n(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->n(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->manuallyRefresh(Lcom/narvii/util/Callback;)V

    .line 65
    .line 66
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->o(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->sendHeaderRequest(Lcom/narvii/util/Callback;)V

    .line 74
    return-void
.end method
