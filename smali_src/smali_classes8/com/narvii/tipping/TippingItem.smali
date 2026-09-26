.class public Lcom/narvii/tipping/TippingItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0d074c

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setShouldFilterUserList(Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->userList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->userList:Ljava/util/List;

    .line 36
    .line 37
    iget v4, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget v2, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    .line 49
    .line 50
    if-lez v2, :cond_2

    .line 51
    move v2, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v2, v1

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/narvii/tipping/TippingItem;->isAuthor:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    iget v4, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    .line 69
    .line 70
    .line 71
    const v5, 0x7f120e03

    .line 72
    .line 73
    .line 74
    const v6, 0x7f120d35

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    iget v4, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    .line 91
    .line 92
    .line 93
    const v5, 0x7f120e04

    .line 94
    .line 95
    .line 96
    const v6, 0x7f120d36

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    :goto_2
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippingBoxView:Lcom/narvii/tipping/TippingBoxView;

    .line 106
    .line 107
    iget-boolean v2, p0, Lcom/narvii/tipping/TippingItem;->isAuthor:Z

    .line 108
    .line 109
    iget-object v4, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    .line 110
    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    iget v5, v4, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    move v5, v1

    .line 116
    .line 117
    :goto_3
    if-eqz v2, :cond_5

    .line 118
    .line 119
    if-eqz v4, :cond_5

    .line 120
    .line 121
    iget v6, v4, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    .line 122
    .line 123
    if-lez v6, :cond_5

    .line 124
    .line 125
    iget-boolean v4, v4, Lcom/narvii/model/TippingInfo;->tippable:Z

    .line 126
    .line 127
    if-nez v4, :cond_5

    .line 128
    move v1, v3

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {v0, v2, v5, v1}, Lcom/narvii/tipping/TippingBoxView;->setInfo(ZIZ)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0e89

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/tipping/TippingBoxView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippingBoxView:Lcom/narvii/tipping/TippingBoxView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0943

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/tipping/TippingItem;->userListView:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a0e88

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/tipping/TippingItem;->darkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/tipping/TippingItem;->darkTheme:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/tipping/TippingItem;->tippedCount:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    const/4 p1, -0x1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_1
    const p1, -0x8e8c87

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
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

    .line 1
    .line 2
    iput-boolean p3, p0, Lcom/narvii/tipping/TippingItem;->isAuthor:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/narvii/tipping/TippingItem;->tippingInfo:Lcom/narvii/model/TippingInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/narvii/tipping/TippingItem;->userList:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result p1

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/tipping/TippingItem;->tippersCount:I

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/tipping/TippingItem;->updateViews()V

    .line 20
    return-void
.end method
