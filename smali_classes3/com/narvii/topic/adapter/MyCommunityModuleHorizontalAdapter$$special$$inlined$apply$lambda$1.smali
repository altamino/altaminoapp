.class public final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "MyCommunityModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getStartRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setStartRefresh(Z)V

    .line 61
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setShowList(Z)V

    .line 62
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 63
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getStartRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setStartRefresh(Z)V

    .line 70
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setShowList(Z)V

    .line 71
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 72
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    :cond_0
    return-void
.end method

.method public onListChanged()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
