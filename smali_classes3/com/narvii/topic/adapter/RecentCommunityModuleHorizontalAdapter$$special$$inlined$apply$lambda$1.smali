.class public final Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "RecentCommunityModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getStartRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->setStartRefresh(Z)V

    .line 54
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->setShowList(Z)V

    .line 55
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    :cond_0
    return-void
.end method
