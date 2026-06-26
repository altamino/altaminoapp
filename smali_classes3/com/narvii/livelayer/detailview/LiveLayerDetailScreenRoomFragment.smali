.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;
.source "LiveLayerDetailScreenRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;-><init>()V

    const-string v0, "Live Layer (Watching Videos)"

    .line 27
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->createDefaultAdapter()Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 70
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 71
    iget-boolean v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->fromSpeedDial:Z

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    :cond_0
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$2;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-boolean v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->fromSpeedDial:Z

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$StartChatAdapter;

    const v1, 0x7f0f1018

    const-string v2, "SR"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$StartChatAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-object p1
.end method

.method protected getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
    .locals 1

    .line 94
    new-instance v0, Lcom/narvii/livelayer/category/ScreenRoomCategoryConfig;

    invoke-direct {v0}, Lcom/narvii/livelayer/category/ScreenRoomCategoryConfig;-><init>()V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Source"

    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Speed Dial"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    :cond_0
    return-void
.end method
