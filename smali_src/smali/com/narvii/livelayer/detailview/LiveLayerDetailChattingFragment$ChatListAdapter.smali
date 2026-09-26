.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment$ChatListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;

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
    .locals 2

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
    if-eqz p3, :cond_3

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
    const p3, 0x7f0a0e9e

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    check-cast p3, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const p3, 0x7f0a055e

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    const/4 p1, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move p1, v0

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :cond_3
    const p1, 0x7f0a080b

    .line 69
    .line 70
    if-eqz p4, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    if-eqz p3, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 83
    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d04f7

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

.method public bridge synthetic onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic showListEnd(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseChattingFragment$BaseChattingListAdapter;->showListEnd(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
