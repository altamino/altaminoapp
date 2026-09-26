.class public final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.method constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getStartRefresh()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setStartRefresh(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setShowList(Z)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getStartRefresh()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setStartRefresh(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->setShowList(Z)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onListChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;->$this_apply:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method
