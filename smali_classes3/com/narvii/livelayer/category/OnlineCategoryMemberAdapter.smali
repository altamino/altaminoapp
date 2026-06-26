.class public abstract Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;
.super Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.source "OnlineCategoryMemberAdapter.java"


# instance fields
.field privateChatCount:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    return-void
.end method

.method private sendPrivateChatRequest()V
    .locals 5

    const-string v0, "liveLayer"

    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 95
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getPrivateChatTopic()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;

    invoke-direct {v2, p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;-><init>(Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;)V

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/narvii/livelayer/LiveLayerService;->requestOnlineMembers(Ljava/lang/String;IZLcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method protected getHintInfoMultiStrId()I
    .locals 1

    const v0, 0x7f0f0bfe

    return v0
.end method

.method protected getHintInfoSingleStrId()I
    .locals 1

    const v0, 0x7f0f0cd3

    return v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
.end method

.method protected getPrivateChatTopic()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleIcon()I
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->iconId()I

    move-result v0

    return v0
.end method

.method public getTitleIconBackground()I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->membersTitleBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getTitleView()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->membersTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    invoke-static {v0, v1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    move-result p2

    const/16 p3, 0x99

    .line 73
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p3, v0, v1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    const p3, 0x60ffffff

    .line 74
    invoke-static {p2, p3}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const p2, 0x7f0908c7

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget v0, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getHintInfoSingleStrId()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getHintInfoMultiStrId()I

    move-result v2

    invoke-static {p3, v0, v1, v2}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget p3, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    if-lez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p1
.end method

.method public onAttach()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->onAttach()V

    .line 46
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getPrivateChatTopic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->sendPrivateChatRequest()V

    :cond_0
    return-void
.end method

.method public onMoreItemClick()Z
    .locals 3

    .line 122
    const-class v0, Lcom/narvii/livelayer/MemberOnPageFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->membersTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    move-result v1

    const-string v2, "pageBackgroundColor"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "privateChatCount"

    const/4 v1, -0x1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    const-string v2, "privateChatCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
