.class public final Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;
.super Lcom/narvii/topic/adapter/RecentCommunityAdapter;
.source "RecentCommunityModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getShowList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPreOpenCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->onPreOpenCommunity(Lcom/narvii/model/Community;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method
