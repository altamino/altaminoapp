.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;
.source "LiveLayerDetailScreenRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenRoomChatListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    if-nez p3, :cond_0

    const p3, 0x7f0b04cf

    .line 110
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 113
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0909b2

    .line 119
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 121
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    instance-of v1, p1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 123
    check-cast p1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    iget-object p1, p1, Lcom/narvii/livelayer/detailview/OnlineChatThread;->playlistInThreadInfo:Lcom/narvii/model/PlayList;

    if-eqz p1, :cond_0

    .line 124
    iget-object v1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-eqz v1, :cond_0

    iget v3, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    if-ltz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 125
    iget-object v1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    iget p1, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PlayListItem;

    if-eqz p1, :cond_0

    .line 126
    iget-object v1, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object p1, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    new-instance p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;

    invoke-direct {p1, p0, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;Landroid/widget/TextView;)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const p1, 0x7f0907ff

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p1, 0x7f090a7e

    if-nez p4, :cond_2

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 148
    iget-object p4, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;

    invoke-virtual {p4, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->randomAnimView(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 149
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->getLayoutId()I

    move-result v0

    return v0
.end method
