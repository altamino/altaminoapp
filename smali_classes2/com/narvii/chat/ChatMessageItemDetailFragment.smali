.class public Lcom/narvii/chat/ChatMessageItemDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "ChatMessageItemDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;


# static fields
.field public static final KEY_CHAT_MESSAGE:Ljava/lang/String; = "chatMessage"

.field public static final KEY_FALLBACK_TITLE:Ljava/lang/String; = "fallBackTitle"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field public static final KEY_THREAD_ID:Ljava/lang/String; = "threadId"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field audioHelper:Lcom/narvii/chat/audio/AudioHelper;

.field private btnErrorRetry:Landroid/view/View;

.field protected btnSeeAll:Landroid/view/View;

.field private bubbleViewContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

.field protected chatMessage:Lcom/narvii/model/ChatMessage;

.field protected chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

.field private contentView:Landroid/view/View;

.field private error:Ljava/lang/String;

.field private errorView:Landroid/view/View;

.field protected imgAvatar:Lcom/narvii/widget/NVImageView;

.field private loadingView:Landroid/view/View;

.field protected messageId:Ljava/lang/String;

.field protected threadId:Ljava/lang/String;

.field private tvErrorMessage:Landroid/widget/TextView;

.field protected tvNickname:Lcom/narvii/widget/NicknameView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/ChatMessageItemDetailFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->changeSeeAllButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$302(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    return-object p1
.end method

.method private changeSeeAllButton(Z)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f0800e1

    goto :goto_0

    :cond_0
    const v2, 0x7f0800f0

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private onMessageTapped()V
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/chat/ChatMessageItem;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget v2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 266
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 267
    iget-object v2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget v3, v2, Lcom/narvii/model/ChatMessage;->mediaType:I

    iput v3, v0, Lcom/narvii/model/Media;->type:I

    .line 268
    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    iput-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parent"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-class v3, Lcom/narvii/model/ChatMessage;

    const-string v4, "parentClass"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 275
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "showCheckHD"

    .line 276
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v3, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hideShareBar"

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget v1, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 285
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    iget-object v2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/chat/audio/AudioHelper;->handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V

    return-void

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->isMediaVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_6
    return-void

    .line 257
    :cond_7
    :goto_0
    const-class v0, Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->sendRequest()V

    .line 297
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateViews()V

    return-void
.end method

.method private sellAllConversation()V
    .locals 5

    .line 302
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 304
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 305
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 306
    new-instance v3, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    const-class v4, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;-><init>(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiService;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendRequest()V
    .locals 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/message/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 356
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 357
    new-instance v2, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;

    const-class v3, Lcom/narvii/chat/MessageResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;-><init>(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->loadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->errorView:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateChatMessageView()V

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvErrorMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0b00c7

    return v0
.end method

.method protected buildDeletedMessage()V
    .locals 3

    .line 207
    new-instance v0, Lcom/narvii/model/ChatMessage;

    invoke-direct {v0}, Lcom/narvii/model/ChatMessage;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 208
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    const/16 v1, 0xa

    iput v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 209
    new-instance v1, Lcom/narvii/model/User;

    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 210
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 212
    iput v1, v0, Lcom/narvii/model/ChatMessage;->type:I

    const-string v1, "fallBackTitle"

    .line 213
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const v1, 0x7f0f0229

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    if-nez p1, :cond_0

    const-string p1, "mediaPlayer"

    .line 200
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPlayerManager;

    .line 201
    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->releaseMediaPlayer()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 231
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onRetry()V

    goto :goto_0

    .line 238
    :sswitch_1
    const-class p1, Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    const-string v1, "threadId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->sellAllConversation()V

    goto :goto_0

    .line 234
    :sswitch_3
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onMessageTapped()V

    goto :goto_0

    .line 221
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    nop

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900e4 -> :sswitch_4
        0x7f0901da -> :sswitch_3
        0x7f090202 -> :sswitch_2
        0x7f090207 -> :sswitch_1
        0x7f090400 -> :sswitch_0
        0x7f090722 -> :sswitch_1
        0x7f090764 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0223

    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "threadId"

    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    const-string v0, "messageId"

    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    const-string v0, "account"

    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "chatMessage"

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatMessage;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatMessage;

    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatMessage;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatMessage;

    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->baseLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSeeAllClicked(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 382
    const-class v0, Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 113
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0902d0

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->contentView:Landroid/view/View;

    const p2, 0x102000d

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->loadingView:Landroid/view/View;

    const p2, 0x7f0903fc

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->errorView:Landroid/view/View;

    const p2, 0x7f0903fd

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvErrorMessage:Landroid/widget/TextView;

    const p2, 0x7f090400

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnErrorRetry:Landroid/view/View;

    .line 121
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnErrorRetry:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901f8

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    const p2, 0x7f0901da

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->bubbleViewContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 125
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->bubbleViewContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090207

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090722

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090202

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    .line 131
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    const/4 v0, 0x1

    const-string v1, "seeAll"

    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090203

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 136
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p2, 0x7f0900e4

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->imgAvatar:Lcom/narvii/widget/NVImageView;

    .line 140
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->imgAvatar:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090764

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 142
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvNickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateViews()V

    .line 145
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-nez p1, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->sendRequest()V

    :cond_3
    return-void
.end method

.method protected updateChatMessageView()V
    .locals 11

    .line 167
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 171
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->imgAvatar:Lcom/narvii/widget/NVImageView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    .line 172
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvNickname:Lcom/narvii/widget/NicknameView;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    .line 175
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 178
    :cond_5
    iget-object v5, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    if-eqz v5, :cond_8

    .line 179
    iget-object v6, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v0, "showDisabled"

    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZZLjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/ChatMessageItem;->setOnSeeAllClickedListener(Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;)V

    .line 181
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 182
    :goto_2
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06006b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_7
    const v0, -0xb0b0c

    :goto_3
    invoke-virtual {v3, v0}, Lcom/narvii/chat/ChatMessageItem;->setbubbleColor(I)V

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_9

    iget-object v3, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 186
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 187
    :goto_4
    invoke-direct {p0, v1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->changeSeeAllButton(Z)V

    return-void
.end method
