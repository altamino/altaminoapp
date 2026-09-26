.class public abstract Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;
.super Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.source "SourceFile"


# instance fields
.field privateChatCount:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    .line 7
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendPrivateChatRequest()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "liveLayer"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getPrivateChatTopic()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;-><init>(Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;)V

    .line 18
    .line 19
    const/16 v3, 0xa

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/narvii/livelayer/LiveLayerService;->requestOnlineMembers(Ljava/lang/String;IZLcom/narvii/util/Callback;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getHintInfoMultiStrId()I
    .locals 1

    const v0, 0x7f120d29

    return v0
.end method

.method protected getHintInfoSingleStrId()I
    .locals 1

    const v0, 0x7f120dfb

    return v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->iconId()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTitleIconBackground()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->membersTitleBackgroundColor()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTitleView()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->membersTitleId()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 22
    move-result p3

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 30
    move-result p2

    .line 31
    .line 32
    const/16 v1, 0x99

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p3, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    const p3, 0x60ffffff

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p3}, Landroidx/core/graphics/ColorUtils;->j(II)I

    .line 43
    move-result p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const p2, 0x7f0a0b87

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    iget v0, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getHintInfoSingleStrId()I

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getHintInfoMultiStrId()I

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-static {p3, v0, v1, v2}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 73
    move-result-object p3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    iget p3, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    .line 79
    .line 80
    if-lez p3, :cond_1

    .line 81
    const/4 p3, 0x0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_1
    const/16 p3, 0x8

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-object p1
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getPrivateChatTopic()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->sendPrivateChatRequest()V

    .line 18
    :cond_0
    return-void
.end method

.method public onMoreItemClick()Z
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/livelayer/MemberOnPageFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->membersTitleId()I

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "title"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->topicName()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "topic"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    .line 48
    move-result v1

    .line 49
    .line 50
    const-string v2, "pageBackgroundColor"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 57
    const/4 v0, 0x1

    .line 58
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "privateChatCount"

    .line 6
    const/4 v1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    .line 13
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "privateChatCount"

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    return-object v0
.end method
