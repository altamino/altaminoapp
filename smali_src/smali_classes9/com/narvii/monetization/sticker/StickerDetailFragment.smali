.class public Lcom/narvii/monetization/sticker/StickerDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# static fields
.field private static final RC_JOIN_COMMUNITY:I = 0x67


# instance fields
.field aminoPlus:Landroid/view/View;

.field chatMessage:Lcom/narvii/model/ChatMessage;

.field chatStickerView:Lcom/narvii/widget/ChatStickerView;

.field collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

.field collectionLayout:Landroid/view/View;

.field collectionName:Landroid/widget/TextView;

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field moodStickerView:Lcom/narvii/widget/EmojioneView;

.field name:Landroid/widget/TextView;

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field private stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field private storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

.field subTitle:Landroid/widget/TextView;

.field private summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private checkAminoPlus()Z
    .locals 6

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 24
    return v1

    .line 25
    .line 26
    :cond_0
    const-string v0, "__communityId"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    move v2, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v2, v1

    .line 53
    .line 54
    :goto_0
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget-object v4, v4, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    iget v4, v4, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 63
    const/4 v5, 0x2

    .line 64
    .line 65
    if-ne v4, v5, :cond_2

    .line 66
    move v4, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v4, v1

    .line 69
    .line 70
    :goto_1
    iget-object v5, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    if-nez v2, :cond_3

    .line 75
    move v1, v3

    .line 76
    .line 77
    :cond_3
    new-instance v2, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkGlobalChatAminoPlusOperation(ZILcom/narvii/util/Callback;)Z

    .line 84
    move-result v0

    .line 85
    return v0
.end method

.method private checkCommunityJoined()Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    .line 26
    :cond_0
    const-string v0, "__communityId"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkCommunityJoined(ILcom/narvii/util/Callback;)Z

    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method private getStickerCollectionInfo(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v3, "sticker-collection/"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v1, "includeStickers"

    .line 36
    .line 37
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/monetization/sticker/StickerDetailFragment$2;

    .line 48
    .line 49
    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    return-void
.end method

.method private isLocalMood()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "ndcsticker://e/"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method static bridge synthetic n(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkAminoPlus()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic q(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v0

    .line 32
    .line 33
    :goto_0
    if-eqz p1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    .line 62
    .line 63
    new-instance v1, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    const v1, 0x7f0a0da8

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    const v1, 0x7f0a0d59

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 113
    .line 114
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->subTitle:Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    .line 128
    .line 129
    const/16 v0, 0x8

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_1
    return-void
.end method


# virtual methods
.method public delete(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 13
    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 p3, 0x67

    .line 6
    .line 7
    if-ne p1, p3, :cond_0

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string p3, "ndc://x"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p3, "__communityId"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 28
    move-result p3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p3, "/chat-thread/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    const-string p3, "android.intent.action.VIEW"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .line 56
    const-string p2, "__model"

    .line 57
    const/4 p3, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 11
    .line 12
    const-string p1, "message"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-class v0, Lcom/narvii/model/ChatMessage;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 27
    .line 28
    const-string p1, "threadId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    .line 71
    :cond_1
    const/4 p1, 0x1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 75
    const/4 p1, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 86
    return-void

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120781

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v2, 0x7f08047b

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f120089

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f1203a0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    const v0, 0x7f12009d

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0321

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "update"

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkCommunityJoined()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 38
    :cond_0
    return v1

    .line 39
    .line 40
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    .line 44
    return v1

    .line 45
    .line 46
    :sswitch_2
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 63
    return v1

    .line 64
    .line 65
    .line 66
    :sswitch_3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkCommunityJoined()Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Lcom/narvii/model/Sticker;)V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;)V

    .line 94
    :cond_2
    :goto_0
    return v1

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :sswitch_data_0
    .sparse-switch
        0x7f120089 -> :sswitch_3
        0x7f12009d -> :sswitch_2
        0x7f1203a0 -> :sswitch_1
        0x7f120781 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    .line 13
    move-result v0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move v0, v2

    .line 29
    .line 30
    :goto_1
    const-string v3, "account"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 39
    const/4 v6, 0x0

    .line 40
    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-object v5, v6

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result v5

    .line 56
    .line 57
    iget-object v7, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 58
    .line 59
    if-eqz v7, :cond_5

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 68
    .line 69
    iget-object v4, v4, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 70
    .line 71
    if-nez v4, :cond_4

    .line 72
    move-object v4, v6

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_4
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-nez v0, :cond_5

    .line 82
    move v0, v2

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move v0, v1

    .line 85
    .line 86
    .line 87
    :goto_4
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    if-eqz v4, :cond_6

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/narvii/model/User;->isCurator()Z

    .line 104
    move-result v3

    .line 105
    .line 106
    if-eqz v3, :cond_6

    .line 107
    move v3, v2

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    move v3, v1

    .line 110
    .line 111
    :goto_5
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 112
    .line 113
    if-eqz v4, :cond_9

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    if-nez v4, :cond_7

    .line 120
    :goto_6
    move v4, v2

    .line 121
    goto :goto_7

    .line 122
    .line 123
    .line 124
    :cond_7
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    .line 125
    move-result v7

    .line 126
    .line 127
    if-nez v7, :cond_9

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v6}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 131
    move-result v4

    .line 132
    .line 133
    if-eqz v4, :cond_9

    .line 134
    .line 135
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 136
    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 141
    move-result v4

    .line 142
    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 146
    .line 147
    iget-object v7, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v7}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 151
    move-result v4

    .line 152
    .line 153
    if-eqz v4, :cond_8

    .line 154
    goto :goto_6

    .line 155
    .line 156
    :cond_8
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 157
    .line 158
    if-eqz v4, :cond_9

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 162
    move-result v4

    .line 163
    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 167
    .line 168
    iget-object v6, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 172
    move-result v4

    .line 173
    .line 174
    if-eqz v4, :cond_9

    .line 175
    goto :goto_6

    .line 176
    :cond_9
    move v4, v1

    .line 177
    .line 178
    .line 179
    :goto_7
    const v6, 0x7f120089

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 183
    move-result-object v6

    .line 184
    .line 185
    .line 186
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    .line 188
    .line 189
    const v4, 0x7f1203a0

    .line 190
    .line 191
    .line 192
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 193
    move-result-object v4

    .line 194
    .line 195
    iget-object v6, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    .line 196
    .line 197
    if-eqz v6, :cond_a

    .line 198
    .line 199
    if-eqz v5, :cond_a

    .line 200
    move v1, v2

    .line 201
    .line 202
    .line 203
    :cond_a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 204
    .line 205
    .line 206
    const v1, 0x7f120781

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    .line 215
    .line 216
    const v0, 0x7f12009d

    .line 217
    .line 218
    .line 219
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    .line 16
    :cond_0
    const p2, 0x7f0a02bf

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/widget/ChatStickerView;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a098b

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/widget/EmojioneView;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a0e08

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    check-cast p2, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->subTitle:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    const p2, 0x7f0a010a

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->aminoPlus:Landroid/view/View;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 58
    .line 59
    iget-object v0, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0a09d3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    check-cast v1, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->name:Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz p2, :cond_1

    .line 77
    .line 78
    iget-object v2, p2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const v1, 0x7f0a0343

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    check-cast v1, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 93
    .line 94
    .line 95
    const v1, 0x7f0a0344

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    .line 102
    .line 103
    .line 104
    const v1, 0x7f0a0dc9

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    check-cast p1, Lcom/narvii/monetization/StoreItemStatusView;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 113
    .line 114
    new-instance v1, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;

    .line 115
    const/4 v2, 0x0

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, p0, p0, p1, v2}, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    .line 119
    .line 120
    iput-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 121
    .line 122
    const-string p1, "Message Detail Page"

    .line 123
    .line 124
    iput-object p1, v1, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->isLocalMood()Z

    .line 128
    move-result p1

    .line 129
    .line 130
    const/16 v1, 0x8

    .line 131
    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    new-instance p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    const/16 p1, 0xf

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 163
    .line 164
    new-instance v0, Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v0}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 175
    goto :goto_1

    .line 176
    .line 177
    :cond_2
    if-eqz p2, :cond_3

    .line 178
    .line 179
    iget-object p1, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 180
    goto :goto_0

    .line 181
    :cond_3
    const/4 p1, 0x0

    .line 182
    .line 183
    :goto_0
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 184
    .line 185
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 189
    move-result v4

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v0, p1, v4}, Lcom/narvii/widget/ChatStickerView;->setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .line 194
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    if-eqz p2, :cond_4

    .line 205
    .line 206
    iget-object p1, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz p1, :cond_4

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->getStickerCollectionInfo(Ljava/lang/String;)V

    .line 212
    :cond_4
    :goto_1
    return-void
.end method
