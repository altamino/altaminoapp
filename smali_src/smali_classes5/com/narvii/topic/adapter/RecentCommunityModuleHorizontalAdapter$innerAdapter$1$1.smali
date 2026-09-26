.class public final Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
.method constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->$this_apply:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getStartRefresh()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->setStartRefresh(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->setShowList(Z)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->$this_apply:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$innerAdapter$1$1;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 41
    :cond_0
    return-void
.end method
