.class final Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1;
.super Ljava/lang/Object;
.source "MyCommunityListAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$notifyDataListChanged(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getRefreshListener()Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;->onListChanged()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityListAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1$1;->INSTANCE:Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
