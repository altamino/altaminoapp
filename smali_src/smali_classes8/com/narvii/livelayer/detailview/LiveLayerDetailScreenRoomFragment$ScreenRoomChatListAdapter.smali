.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    .line 5
    const p3, 0x7f0d04fc

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    const p3, 0x7f0a0c7b

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    check-cast p3, Landroid/widget/TextView;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    instance-of v1, p1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/livelayer/detailview/OnlineChatThread;->playlistInThreadInfo:Lcom/narvii/model/PlayList;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object v1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget v3, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 36
    .line 37
    if-ltz v3, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    move-result v1

    .line 42
    .line 43
    if-ge v3, v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p1, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 46
    .line 47
    iget p1, p1, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/model/PlayListItem;

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    iget-object v1, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    new-instance p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p0, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;Landroid/widget/TextView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_0
    const p1, 0x7f0a0aa3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_1
    const p1, 0x7f0a0d72

    .line 95
    .line 96
    if-nez p4, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object p3

    .line 101
    .line 102
    check-cast p3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 103
    .line 104
    iget-object p4, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->randomAnimView(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 114
    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->getLayoutId()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method
