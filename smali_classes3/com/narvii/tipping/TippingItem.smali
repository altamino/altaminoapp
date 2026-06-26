.class public Lcom/narvii/tipping/TippingItem;
.super Landroid/widget/FrameLayout;
.source "TippingItem.java"


# instance fields
.field darkTheme:Z

.field isAuthor:Z

.field tippedCount:Landroid/widget/TextView;

.field tippersCount:I

.field tippingBoxView:Lcom/narvii/tipping/TippingBoxView;

.field tippingInfo:Lcom/narvii/model/TippingInfo;

.field userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0695

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setShouldFilterUserList(Z)V

    .line 66
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->userList:Ljava/util/List;

    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 67
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->userList:Ljava/util/List;

    iget v4, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    invoke-virtual {v0, v2, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 72
    iget-boolean v0, p0, Lcom/narvii/tipping/TippingItem;->isAuthor:Z

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    const v5, 0x7f0f0cdb

    const v6, 0x7f0f0c0a

    invoke-static {v2, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    const v5, 0x7f0f0cdc

    const v6, 0x7f0f0c0b

    invoke-static {v2, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_2
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippingBoxView:Lcom/narvii/tipping/TippingBoxView;

    iget-boolean v2, p0, Lcom/narvii/tipping/TippingItem;->isAuthor:Z

    iget-object v4, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v4, :cond_4

    iget v4, v4, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iget-boolean v5, p0, Lcom/narvii/tipping/TippingItem;->isAuthor:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v5, :cond_5

    iget v6, v5, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    if-lez v6, :cond_5

    iget-boolean v5, v5, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-nez v5, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v0, v2, v4, v1}, Lcom/narvii/tipping/TippingBoxView;->setInfo(ZIZ)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090b83

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/tipping/TippingBoxView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippingBoxView:Lcom/narvii/tipping/TippingBoxView;

    const v0, 0x7f0906e2

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 43
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    const v0, 0x7f090b82

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/narvii/tipping/TippingItem;->darkTheme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingItem;->darkTheme:Z

    .line 61
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const p1, -0x8e8c87

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTippingInfo(Lcom/narvii/model/TippingInfo;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/TippingInfo;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;ZI)V"
        }
    .end annotation

    .line 48
    iput-boolean p3, p0, Lcom/narvii/tipping/TippingItem;->isAuthor:Z

    .line 49
    iput-object p1, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    .line 50
    iput-object p2, p0, Lcom/narvii/tipping/TippingItem;->userList:Ljava/util/List;

    .line 51
    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    .line 52
    invoke-direct {p0}, Lcom/narvii/tipping/TippingItem;->updateViews()V

    return-void
.end method
