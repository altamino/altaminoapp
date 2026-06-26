.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;
.source "LiveLayerDetailBaseChattingFragment.java"


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

    .line 215
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAreaName()Ljava/lang/String;
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->getAreaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 234
    instance-of p3, p1, Lcom/narvii/model/ChatThread;

    const/16 v0, 0x8

    if-eqz p3, :cond_6

    .line 235
    check-cast p1, Lcom/narvii/model/ChatThread;

    const p3, 0x7f090571

    .line 236
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    if-eqz p3, :cond_0

    .line 238
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_0
    const p3, 0x7f090995

    .line 241
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/RtcIndicatorView;

    .line 242
    invoke-virtual {p3}, Lcom/narvii/widget/RtcIndicatorView;->updateView()V

    .line 244
    iget-object p3, p3, Lcom/narvii/widget/RtcIndicatorView;->rtcIndicator:Landroid/view/View;

    const v1, 0x7f090b9a

    .line 246
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 248
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p3, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 p3, 0x41700000    # 15.0f

    :goto_1
    invoke-static {v2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    .line 250
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    const p3, 0x7f0907fc

    .line 253
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 254
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_4
    const p3, 0x7f090425

    .line 259
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 261
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const p1, 0x7f0907ff

    if-eqz p4, :cond_8

    .line 266
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 268
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const p3, 0x7f090992

    .line 271
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 273
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_8
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b04d2

    return v0
.end method

.method public bridge synthetic onAttach()V
    .locals 0

    .line 213
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->onAttach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 285
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    new-instance p1, Lcom/narvii/chat/video/VVChatEntryHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 287
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result p2

    iget-object p3, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$VvChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment;

    iget-object p3, p3, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;Z)V

    return p4

    .line 290
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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
