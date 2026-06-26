.class public Lcom/narvii/monetization/sticker/StickerDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "StickerDetailFragment.java"

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

    .line 55
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkAminoPlus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/StickerDetailFragment;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method private checkAminoPlus()Z
    .locals 6

    const-string v0, "account"

    .line 293
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 294
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return v1

    :cond_0
    const-string v0, "__communityId"

    .line 298
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 299
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 300
    :goto_0
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    if-eqz v4, :cond_2

    iget v4, v4, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 302
    :goto_1
    iget-object v5, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    if-eqz v4, :cond_3

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    new-instance v2, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment$4;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;I)V

    invoke-virtual {v5, v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkGlobalChatAminoPlusOperation(ZILcom/narvii/util/Callback;)Z

    move-result v0

    return v0
.end method

.method private checkCommunityJoined()Z
    .locals 3

    const-string v0, "account"

    .line 277
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 278
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "__communityId"

    .line 282
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    new-instance v2, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/sticker/StickerDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;I)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkCommunityJoined(ILcom/narvii/util/Callback;)Z

    move-result v0

    return v0
.end method

.method private getStickerCollectionInfo(Ljava/lang/String;)V
    .locals 4

    const-string v0, "api"

    .line 265
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 266
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sticker-collection/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "includeStickers"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 267
    new-instance v1, Lcom/narvii/monetization/sticker/StickerDetailFragment$2;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private isLocalMood()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const-string v1, "ndcsticker://e/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 3

    .line 322
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 323
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 324
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 325
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    new-instance v1, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment$5;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090aae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 338
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 340
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090a6d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 341
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 343
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 344
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->subTitle:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 345
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    goto :goto_1

    .line 347
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public delete(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 153
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 154
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x67

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 315
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ndc://x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "__communityId"

    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/chat-thread/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p2, 0x0

    const-string p3, "__model"

    .line 316
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    const-string p1, "message"

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatMessage;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatMessage;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    const-string p1, "threadId"

    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 93
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-void

    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 109
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f06d5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v2, 0x7f080369

    .line 111
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v2, 0x2

    .line 112
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f0080

    .line 113
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0348

    .line 114
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0094

    .line 115
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02ec

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 358
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-ne p1, v1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {p1, v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 361
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 186
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 175
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkCommunityJoined()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :cond_0
    return v1

    .line 172
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    return v1

    .line 181
    :sswitch_2
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 182
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return v1

    .line 161
    :sswitch_3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->checkCommunityJoined()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 163
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Lcom/narvii/model/Sticker;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0f0080 -> :sswitch_3
        0x7f0f0094 -> :sswitch_2
        0x7f0f0348 -> :sswitch_1
        0x7f0f06d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "account"

    .line 122
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 123
    iget-object v5, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 125
    iget-object v7, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v4, v4, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez v4, :cond_4

    move-object v4, v6

    goto :goto_3

    :cond_4
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_3
    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 131
    :goto_4
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 132
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 134
    :goto_5
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v4, :cond_9

    .line 135
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    .line 138
    :cond_7
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v4, v6}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 139
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v7, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v4, v7}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 141
    :cond_8
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v6, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->summary:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v4, v6}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_7
    const v6, 0x7f0f0080

    .line 146
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0f0348

    .line 147
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v6, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->threadId:Ljava/lang/String;

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0f06d5

    .line 148
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0094

    .line 149
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 193
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const p2, 0x7f090207

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ChatStickerView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    const p2, 0x7f090722

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EmojioneView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    const p2, 0x7f090b23

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->subTitle:Landroid/widget/TextView;

    const p2, 0x7f0900a2

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->aminoPlus:Landroid/view/View;

    .line 204
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v0, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 206
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object p2

    const v1, 0x7f09074b

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->name:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 210
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->name:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x7f09027a

    .line 212
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    iput-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionIcon:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    const v1, 0x7f09027b

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    .line 214
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->collectionLayout:Landroid/view/View;

    const v1, 0x7f090ace

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/StoreItemStatusView;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 215
    new-instance p1, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    const/4 v2, 0x0

    invoke-direct {p1, p0, p0, v1, v2}, Lcom/narvii/monetization/sticker/StickerDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/StickerDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 237
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->stickerCollectionOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    const-string v1, "Message Detail Page"

    iput-object v1, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->isLocalMood()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 240
    new-instance p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 241
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0xf

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 244
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 248
    iget-object p1, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 250
    :cond_3
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget v4, v4, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v3, v0, p1, v4}, Lcom/narvii/widget/ChatStickerView;->setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerDetailFragment;->moodStickerView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    .line 254
    iget-object p1, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 255
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerDetailFragment;->getStickerCollectionInfo(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
