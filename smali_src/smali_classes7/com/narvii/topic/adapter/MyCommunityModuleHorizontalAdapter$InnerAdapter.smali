.class public final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;
.super Lcom/narvii/topic/adapter/MyCommunityListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getShowList()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->rawList()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    const/16 v1, 0x14

    .line 23
    .line 24
    if-le v0, v1, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x15

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItemCount()I

    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->rawList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x14

    .line 15
    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;->getItemCount()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    return v1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    new-instance p2, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0d03c9

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v1, "inflate(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, v0, p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V

    .line 37
    return-object p2

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public onEnterCommunity(Lcom/narvii/model/Community;)V
    .locals 2
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "community"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    .line 8
    .line 9
    sget-object v1, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 13
    return-void
.end method
