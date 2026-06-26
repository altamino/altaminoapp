.class Lcom/narvii/app/NVCollapsibleTabFragment$4;
.super Ljava/lang/Object;
.source "NVCollapsibleTabFragment.java"

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

    .line 157
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    iget-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVFragment;

    iput-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    iget-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_2

    .line 164
    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->access$008(Lcom/narvii/app/NVCollapsibleTabFragment;)I

    .line 165
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    iget-object v1, v0, Lcom/narvii/app/NVCollapsibleTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    instance-of v2, v1, Lcom/narvii/list/NVListFragment;

    if-eqz v2, :cond_1

    .line 166
    check-cast v1, Lcom/narvii/list/NVListFragment;

    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->access$100(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->access$100(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->manuallyRefresh(Lcom/narvii/util/Callback;)V

    .line 171
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment$4;->this$0:Lcom/narvii/app/NVCollapsibleTabFragment;

    invoke-static {v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->access$200(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->sendHeaderRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method
