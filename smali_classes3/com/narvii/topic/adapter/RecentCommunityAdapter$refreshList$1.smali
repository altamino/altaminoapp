.class final Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1;
.super Ljava/lang/Object;
.source "RecentCommunityAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 86
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getRefreshListener()Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;->onFinish()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1$1;->INSTANCE:Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
