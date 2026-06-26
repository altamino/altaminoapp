.class public Lcom/narvii/chat/MessageContentDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "MessageContentDetailFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# static fields
.field private static final KEY_CHAT_MESSAGE:Ljava/lang/String; = "CHAT_MESSAGE"

.field private static final KEY_DETAIL_REQUEST:Ljava/lang/String; = "detailRequestSent"

.field private static final RC_JOIN_COMMUNITY:I = 0x67


# instance fields
.field private allChatBubbleId:Ljava/lang/String;

.field audioHelper:Lcom/narvii/chat/audio/AudioHelper;

.field private bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

.field private chatBubble:Lcom/narvii/model/ChatBubble;

.field private chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

.field private containerBubble:Landroid/view/View;

.field private customBubbleContainer:Landroid/view/View;

.field private detailRequestSent:Z

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private imgBubblePreView:Lcom/narvii/widget/NVImageView;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private message:Lcom/narvii/model/ChatMessage;

.field private statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

.field storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

.field private threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/MessageContentDetailFragment;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->checkAminoPlus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/MessageContentDetailFragment;)Z
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    return-object p1
.end method

.method static synthetic access$402(Lcom/narvii/chat/MessageContentDetailFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    return p1
.end method

.method static synthetic access$502(Lcom/narvii/chat/MessageContentDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->allChatBubbleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/narvii/chat/MessageContentDetailFragment;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatMessage;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/chat/ChatBubbleView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    return-object p0
.end method

.method private checkAminoPlus()Z
    .locals 4

    const-string v0, "account"

    .line 214
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 215
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return v1

    :cond_0
    const-string v0, "__communityId"

    .line 219
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 220
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    new-instance v3, Lcom/narvii/chat/MessageContentDetailFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/narvii/chat/MessageContentDetailFragment$3;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;I)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/narvii/chat/global/GlobalChatHelper;->checkGlobalChatAminoPlusOperation(ZILcom/narvii/util/Callback;)Z

    move-result v0

    return v0
.end method

.method private checkCommunityJoined()Z
    .locals 3

    const-string v0, "account"

    .line 198
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 199
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "__communityId"

    .line 203
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    new-instance v2, Lcom/narvii/chat/MessageContentDetailFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/MessageContentDetailFragment$2;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;I)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkCommunityJoined(ILcom/narvii/util/Callback;)Z

    move-result v0

    return v0
.end method

.method private containBubble()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private fetchBubbleInfo(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "api"

    .line 306
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 307
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/chat-bubble/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 308
    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$6;

    const-class v2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/MessageContentDetailFragment$6;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateChatMessageView()V
    .locals 7

    .line 327
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 331
    :cond_0
    iget v2, v1, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const v1, 0x7f0b047e

    .line 332
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 333
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 334
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    const-string v0, "mediaPlayer"

    .line 335
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPlayerManager;

    .line 336
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/audio/AudioPlayerFixedWidth;

    .line 338
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    iget v3, v3, Lcom/narvii/model/ChatMessage;->_status:I

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setMediaUrl(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2, v4}, Lcom/narvii/chat/audio/AudioPlayer;->setIsMine(Z)V

    .line 341
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setDuration(I)V

    .line 342
    invoke-virtual {v2, v1}, Lcom/narvii/chat/audio/AudioPlayer;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 343
    invoke-virtual {v0, v2}, Lcom/narvii/media/MediaPlayerManager;->tryListenMediaStatusChange(Lcom/narvii/media/MediaStatusChangeListener;)V

    .line 344
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/narvii/chat/MessageContentDetailFragment$7;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 350
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->isMediaMessage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    iget v5, v3, Lcom/narvii/model/ChatMessage;->clientRefId:I

    iget-object v6, v3, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v2, v5, v6, v1}, Lcom/narvii/chat/ChatBubbleView;->setImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    goto/16 :goto_3

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatBubbleView;->setVideo(Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_3

    .line 357
    :cond_5
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 358
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 360
    new-instance v2, Lcom/narvii/util/text/NVText;

    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0, v3}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v5, 0x7f0b00b1

    invoke-virtual {v3, v5}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 362
    sget-object v3, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    invoke-virtual {v2, v3}, Lcom/narvii/util/text/NVText;->markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    move-result v3

    .line 363
    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v6, 0x7f090b5b

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 364
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 365
    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 366
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 367
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_7

    .line 368
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 369
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 370
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v3, 0x7f0901e3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/link/viewer/LinkSnippetImageLayout;

    .line 371
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 372
    new-instance v3, Lcom/narvii/chat/MessageContentDetailFragment$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/narvii/chat/MessageContentDetailFragment$8;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/LinkSummary;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v2, v0, v1}, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)V

    .line 383
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private updateStatusView()V
    .locals 9

    .line 233
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 238
    iget-boolean v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 243
    new-instance v3, Lcom/narvii/model/ChatBubble;

    invoke-direct {v3}, Lcom/narvii/model/ChatBubble;-><init>()V

    iput-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 244
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    const/4 v4, -0x1

    iput v4, v3, Lcom/narvii/model/ChatBubble;->type:I

    const v4, 0x7f0f0344

    .line 245
    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    .line 248
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    if-nez v3, :cond_4

    return-void

    .line 252
    :cond_4
    iget v3, v3, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 255
    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080322

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 257
    :cond_6
    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {v5}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    move-result-object v5

    .line 258
    iget-object v6, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v6, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_2
    if-eqz v3, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    .line 261
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 262
    :goto_3
    iget-object v6, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 263
    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    move-object v7, v6

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800b0

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v3, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v5, v3}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 265
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {v3, v5}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 267
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->containBubble()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    iget v3, v3, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 268
    :goto_6
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->containBubble()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 269
    invoke-virtual {v5}, Lcom/narvii/model/StoreItemBaseObject;->isTotalOwned()Z

    move-result v5

    .line 271
    :cond_b
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x4

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->containBubble()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v6, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    :cond_d
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->allChatBubbleId:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->customBubbleContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    iget v0, v0, Lcom/narvii/model/ChatBubble;->type:I

    if-ne v0, v4, :cond_e

    .line 276
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->containerBubble:Landroid/view/View;

    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/chat/MessageContentDetailFragment$4;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_e
    if-ne v0, v1, :cond_f

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->containerBubble:Landroid/view/View;

    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/chat/MessageContentDetailFragment$5;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    :goto_8
    return-void
.end method


# virtual methods
.method public delete(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 462
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 463
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x67

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 182
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

    iget-object p3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p2, 0x0

    const-string p3, "__model"

    .line 183
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "message"

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatMessage;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    const-string v0, "threadId"

    .line 103
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    const-string v0, "membership"

    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    if-eqz p1, :cond_0

    const-string v0, "detailRequestSent"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    const-string v0, "CHAT_MESSAGE"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatMessage;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    const-string v0, "bubble"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    :cond_0
    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 112
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 113
    iget-boolean p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    if-nez p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/MessageContentDetailFragment;->fetchBubbleInfo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 388
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x2

    const v0, 0x7f0f06d5

    const/4 v1, 0x0

    .line 389
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080369

    .line 390
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 391
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f02f4

    .line 392
    invoke-interface {p1, v1, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 393
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f0348

    const/4 v0, 0x1

    .line 394
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 395
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f0f0094

    const/4 v0, 0x3

    .line 396
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 397
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0284

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 468
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    const/4 v0, 0x0

    iput v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const v0, 0x7f0f0229

    .line 470
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 471
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateChatMessageView()V

    goto :goto_2

    .line 472
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v2, "update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 475
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 416
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 448
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 418
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->checkCommunityJoined()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 419
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 420
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    :cond_0
    return v1

    .line 444
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/MessageContentDetailFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    return v1

    .line 427
    :sswitch_2
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, ""

    .line 430
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 432
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f02f2

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1

    .line 438
    :sswitch_3
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 439
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_3
        0x7f0f02f4 -> :sswitch_2
        0x7f0f0348 -> :sswitch_1
        0x7f0f06d5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    .line 402
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v0, "account"

    .line 403
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 404
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v4, 0x7f0f0094

    .line 407
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0f06d5

    .line 408
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0f02f4

    .line 409
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    if-eqz v4, :cond_2

    iget v5, v4, Lcom/narvii/model/ChatMessage;->type:I

    if-nez v5, :cond_2

    .line 410
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 409
    :cond_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0f0348

    .line 411
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 191
    iget-boolean v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    const-string v1, "detailRequestSent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAT_MESSAGE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bubble"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 126
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09017e

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->containerBubble:Landroid/view/View;

    .line 130
    iget-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->containerBubble:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090181

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f09031c

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->customBubbleContainer:Landroid/view/View;

    const p2, 0x7f0904ca

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/StoreItemStatusView;

    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 137
    new-instance p2, Lcom/narvii/chat/MessageContentDetailFragment$1;

    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

    invoke-direct {p2, p0, p0, v0, v1}, Lcom/narvii/chat/MessageContentDetailFragment$1;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 159
    iget-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    const-string v0, "Message Detail Page"

    iput-object v0, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    const p2, 0x7f0905ea

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/utils/StoreItemNameView;

    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 162
    iget-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {p2, v0}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 163
    iget-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    invoke-virtual {p2}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onCreate()V

    .line 164
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V

    const p2, 0x7f0901d9

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatBubbleView;

    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 167
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateChatMessageView()V

    return-void
.end method
