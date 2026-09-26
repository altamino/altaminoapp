.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VvChatListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getAreaName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->getAreaName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    instance-of p3, p1, Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eqz p3, :cond_6

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    .line 15
    const p3, 0x7f0a06eb

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    const p3, 0x7f0a0c5b

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    check-cast p3, Lcom/narvii/widget/RtcIndicatorView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/narvii/widget/RtcIndicatorView;->updateView()V

    .line 41
    .line 42
    iget-object p3, p3, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    const v1, 0x7f0a0e9e

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 68
    move-result p3

    .line 69
    .line 70
    if-eqz p3, :cond_1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    const/high16 p3, 0x41f00000    # 30.0f

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    :goto_0
    const/high16 p3, 0x41700000    # 15.0f

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-static {v2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 80
    move-result p3

    .line 81
    float-to-int p3, p3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .line 89
    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 90
    .line 91
    .line 92
    :cond_3
    const p3, 0x7f0a0aa0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p3

    .line 97
    .line 98
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    :cond_4
    const p3, 0x7f0a055e

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p3

    .line 119
    .line 120
    if-eqz p3, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 124
    move-result p1

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    const/4 p1, 0x0

    .line 128
    goto :goto_2

    .line 129
    :cond_5
    move p1, v0

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_6
    const p1, 0x7f0a0aa3

    .line 136
    .line 137
    if-eqz p4, :cond_8

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object p3

    .line 142
    .line 143
    if-eqz p3, :cond_7

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :cond_7
    const p3, 0x7f0a0c58

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    move-result-object p3

    .line 154
    .line 155
    if-eqz p3, :cond_8

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    :cond_8
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 162
    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d04ff

    return v0
.end method

.method public bridge synthetic onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->onAttach()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/chat/video/VVChatEntryHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 26
    move-result p2

    .line 27
    .line 28
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;

    .line 29
    .line 30
    iget-object p3, p3, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 31
    const/4 p4, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;Z)V

    .line 35
    return p4

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public showListEnd(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
