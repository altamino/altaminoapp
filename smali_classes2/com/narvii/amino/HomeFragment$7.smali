.class Lcom/narvii/amino/HomeFragment$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment;->setupSwipeRefreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v1, v0, Lcom/narvii/amino/HomeFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_1

    .line 471
    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->access$408(Lcom/narvii/amino/HomeFragment;)I

    .line 472
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v1, v0, Lcom/narvii/amino/HomeFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    instance-of v2, v1, Lcom/narvii/list/NVListFragment;

    if-eqz v2, :cond_0

    .line 473
    check-cast v1, Lcom/narvii/list/NVListFragment;

    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->access$500(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->access$500(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->manuallyRefresh(Lcom/narvii/util/Callback;)V

    .line 479
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$7;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/narvii/amino/HomeFragment;->access$600(Lcom/narvii/amino/HomeFragment;ZZ)V

    return-void
.end method
