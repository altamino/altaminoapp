.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;
.source "LiveLayerDetailChattingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;-><init>()V

    const-string v0, "Live Layer (Chats)"

    .line 25
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->createDefaultAdapter()Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 57
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$ActivePublicChatroomsTitleAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$StartChatAdapter;

    const v1, 0x7f0f1016

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$StartChatAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 68
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->addSubViewAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
    .locals 1

    .line 78
    new-instance v0, Lcom/narvii/livelayer/category/ChatCategoryConfig;

    invoke-direct {v0}, Lcom/narvii/livelayer/category/ChatCategoryConfig;-><init>()V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "LiveLayerChats"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Source"

    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Speed Dial"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    :cond_0
    return-void
.end method
