.class public Lcom/narvii/chat/MessageContentDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private checkAminoPlus()Z
    .locals 4

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
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, v2, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget v2, v2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 41
    const/4 v3, 0x2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 45
    .line 46
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 47
    .line 48
    new-instance v3, Lcom/narvii/chat/MessageContentDetailFragment$3;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, p0, v0}, Lcom/narvii/chat/MessageContentDetailFragment$3;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1, v0, v3}, Lcom/narvii/chat/global/GlobalChatHelper;->checkGlobalChatAminoPlusOperation(ZILcom/narvii/util/Callback;)Z

    .line 55
    move-result v0

    .line 56
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
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/chat/MessageContentDetailFragment$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/MessageContentDetailFragment$2;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkCommunityJoined(ILcom/narvii/util/Callback;)Z

    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method private containBubble()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private fetchBubbleInfo(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-string v0, "api"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v3, "/chat/chat-bubble/"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

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
    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$6;

    .line 48
    .line 49
    const-class v2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/MessageContentDetailFragment$6;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/chat/ChatBubbleView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatMessage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/MessageContentDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->allChatBubbleId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

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

.method static bridge synthetic t(Lcom/narvii/chat/MessageContentDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/MessageContentDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->checkAminoPlus()Z

    move-result p0

    return p0
.end method

.method private updateChatMessageView()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iget v2, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    if-ne v2, v3, :cond_2

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0d04ad

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 33
    .line 34
    const-string v0, "mediaPlayer"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/media/MediaPlayerManager;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 51
    .line 52
    .line 53
    const v3, 0x7f0a015c

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    check-cast v2, Lcom/narvii/chat/audio/AudioPlayerFixedWidth;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 62
    .line 63
    iget v3, v3, Lcom/narvii/model/ChatMessage;->_status:I

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    const/4 v3, 0x4

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v3, v4

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 74
    .line 75
    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setMediaUrl(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Lcom/narvii/chat/audio/AudioPlayer;->setIsMine(Z)V

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->getDuration()I

    .line 87
    move-result v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setDuration(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/narvii/chat/audio/AudioPlayer;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/narvii/media/MediaPlayerManager;->tryListenMediaStatusChange(Lcom/narvii/media/MediaStatusChangeListener;)V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 99
    .line 100
    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$7;

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/narvii/chat/MessageContentDetailFragment$7;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->isMediaMessage()Z

    .line 112
    move-result v0

    .line 113
    const/4 v1, 0x1

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v0

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 139
    move-result v3

    .line 140
    .line 141
    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 142
    .line 143
    iget-object v6, v5, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 144
    .line 145
    iget v5, v5, Lcom/narvii/model/ChatMessage;->type:I

    .line 146
    .line 147
    if-ne v5, v1, :cond_3

    .line 148
    move v4, v1

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/narvii/chat/ChatBubbleView;->setImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatBubbleView;->setVideo(Lcom/narvii/model/ChatMessage;)V

    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_5
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    move-result v2

    .line 182
    .line 183
    if-nez v2, :cond_7

    .line 184
    .line 185
    new-instance v2, Lcom/narvii/util/text/NVText;

    .line 186
    .line 187
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v3}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    .line 194
    invoke-direct {v2, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 197
    .line 198
    .line 199
    const v5, 0x7f0d00c7

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v5}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 203
    .line 204
    sget-object v3, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v3}, Lcom/narvii/util/text/NVText;->markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 208
    move-result v3

    .line 209
    .line 210
    iget-object v5, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 211
    .line 212
    .line 213
    const v6, 0x7f0a0e51

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    move-result-object v5

    .line 218
    .line 219
    check-cast v5, Landroid/widget/TextView;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    if-lez v3, :cond_6

    .line 225
    goto :goto_1

    .line 226
    :cond_6
    move v1, v4

    .line 227
    .line 228
    .line 229
    :goto_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setClickable(Z)V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 237
    .line 238
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 239
    .line 240
    if-eqz v1, :cond_7

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    if-eqz v1, :cond_7

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 250
    move-result-object v2

    .line 251
    .line 252
    if-eqz v2, :cond_7

    .line 253
    .line 254
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 255
    .line 256
    .line 257
    const v3, 0x7f0a029a

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    move-result-object v2

    .line 262
    .line 263
    check-cast v2, Lcom/narvii/link/viewer/LinkSnippetImageLayout;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    new-instance v3, Lcom/narvii/chat/MessageContentDetailFragment$8;

    .line 269
    .line 270
    .line 271
    invoke-direct {v3, p0, v0, v1}, Lcom/narvii/chat/MessageContentDetailFragment$8;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/LinkSummary;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v0, v1}, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)V

    .line 284
    .line 285
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 286
    const/4 v1, 0x0

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :cond_8
    :goto_3
    return-void
.end method

.method private updateStatusView()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v2

    .line 19
    .line 20
    :goto_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    return-void

    .line 26
    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    new-instance v3, Lcom/narvii/model/ChatBubble;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Lcom/narvii/model/ChatBubble;-><init>()V

    .line 33
    .line 34
    iput-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 35
    const/4 v4, -0x1

    .line 36
    .line 37
    iput v4, v3, Lcom/narvii/model/ChatBubble;->type:I

    .line 38
    .line 39
    .line 40
    const v4, 0x7f120399

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    iput-object v4, v3, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    .line 47
    .line 48
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 49
    .line 50
    if-nez v3, :cond_4

    .line 51
    return-void

    .line 52
    .line 53
    :cond_4
    iget v4, v3, Lcom/narvii/model/ChatBubble;->type:I

    .line 54
    const/4 v5, 0x2

    .line 55
    .line 56
    if-ne v4, v5, :cond_5

    .line 57
    move v4, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_5
    move v4, v2

    .line 60
    .line 61
    :goto_1
    if-eqz v0, :cond_6

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    .line 70
    const v7, 0x7f08042d

    .line 71
    .line 72
    .line 73
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object v6

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v6}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-virtual {v3}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    iget-object v6, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 88
    .line 89
    :goto_2
    if-eqz v4, :cond_7

    .line 90
    move v3, v2

    .line 91
    goto :goto_3

    .line 92
    .line 93
    .line 94
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    const/high16 v6, 0x40000000    # 2.0f

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 101
    move-result v3

    .line 102
    float-to-int v3, v3

    .line 103
    .line 104
    :goto_3
    iget-object v6, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    .line 109
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    .line 110
    const/4 v6, 0x0

    .line 111
    .line 112
    if-eqz v4, :cond_8

    .line 113
    move-object v7, v6

    .line 114
    goto :goto_4

    .line 115
    .line 116
    .line 117
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v7

    .line 119
    .line 120
    .line 121
    const v8, 0x7f080140

    .line 122
    .line 123
    .line 124
    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object v7

    .line 126
    .line 127
    .line 128
    :goto_4
    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    .line 131
    .line 132
    if-eqz v4, :cond_9

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    const/high16 v7, 0x40800000    # 4.0f

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 142
    move-result v4

    .line 143
    float-to-int v4, v4

    .line 144
    goto :goto_5

    .line 145
    :cond_9
    move v4, v2

    .line 146
    .line 147
    .line 148
    :goto_5
    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 149
    .line 150
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 151
    .line 152
    iget-object v4, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->containBubble()Z

    .line 159
    move-result v3

    .line 160
    .line 161
    if-eqz v3, :cond_a

    .line 162
    .line 163
    iget-object v3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 164
    .line 165
    iget v3, v3, Lcom/narvii/model/ChatBubble;->type:I

    .line 166
    .line 167
    if-ne v3, v5, :cond_a

    .line 168
    move v3, v1

    .line 169
    goto :goto_6

    .line 170
    :cond_a
    move v3, v2

    .line 171
    .line 172
    .line 173
    :goto_6
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->containBubble()Z

    .line 174
    move-result v4

    .line 175
    .line 176
    if-eqz v4, :cond_b

    .line 177
    .line 178
    iget-object v4, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Lcom/narvii/model/StoreItemBaseObject;->isTotalOwned()Z

    .line 182
    move-result v4

    .line 183
    .line 184
    :cond_b
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 185
    .line 186
    if-eqz v3, :cond_c

    .line 187
    goto :goto_7

    .line 188
    :cond_c
    const/4 v2, 0x4

    .line 189
    .line 190
    .line 191
    :goto_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 194
    .line 195
    .line 196
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->containBubble()Z

    .line 197
    move-result v2

    .line 198
    .line 199
    if-eqz v2, :cond_d

    .line 200
    .line 201
    iget-object v6, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 202
    .line 203
    :cond_d
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->allChatBubbleId:Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v6, v2}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;Ljava/lang/String;)V

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->customBubbleContainer:Landroid/view/View;

    .line 209
    .line 210
    const/16 v2, 0x8

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 216
    .line 217
    iget v0, v0, Lcom/narvii/model/ChatBubble;->type:I

    .line 218
    .line 219
    if-ne v0, v5, :cond_e

    .line 220
    .line 221
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->containerBubble:Landroid/view/View;

    .line 222
    .line 223
    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$4;

    .line 224
    .line 225
    .line 226
    invoke-direct {v1, p0}, Lcom/narvii/chat/MessageContentDetailFragment$4;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    goto :goto_8

    .line 231
    .line 232
    :cond_e
    if-ne v0, v1, :cond_f

    .line 233
    .line 234
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->containerBubble:Landroid/view/View;

    .line 235
    .line 236
    new-instance v1, Lcom/narvii/chat/MessageContentDetailFragment$5;

    .line 237
    .line 238
    .line 239
    invoke-direct {v1, p0}, Lcom/narvii/chat/MessageContentDetailFragment$5;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_f
    :goto_8
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/MessageContentDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/MessageContentDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V

    return-void
.end method


# virtual methods
.method public delete(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 11
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
    iget-object p3, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

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
    invoke-static {p0, p1}, Lcom/narvii/chat/MessageContentDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    const-string v0, "message"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-class v1, Lcom/narvii/model/ChatMessage;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 24
    .line 25
    const-string v0, "threadId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 39
    .line 40
    const-string v0, "membership"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    const-string v0, "detailRequestSent"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    .line 59
    .line 60
    const-string v0, "CHAT_MESSAGE"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 73
    .line 74
    const-string v0, "bubble"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-class v0, Lcom/narvii/model/ChatBubble;

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 89
    :cond_0
    const/4 p1, 0x1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 93
    .line 94
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 98
    .line 99
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 100
    .line 101
    iget-boolean p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    .line 102
    .line 103
    if-nez p1, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/chat/MessageContentDetailFragment;->fetchBubbleInfo(Ljava/lang/String;)V

    .line 113
    :cond_1
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
    const/4 v1, 0x2

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
    .line 21
    .line 22
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 23
    .line 24
    .line 25
    const v0, 0x7f120348

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 33
    .line 34
    .line 35
    const v0, 0x7f1203a0

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f12009d

    .line 47
    const/4 v1, 0x3

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 55
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
    const p3, 0x7f0d02af

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

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onDestroy()V

    .line 11
    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "delete"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    move-object v0, v1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    :goto_0
    iget-object v2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    iput v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 35
    .line 36
    .line 37
    const v0, 0x7f12026c

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateChatMessageView()V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_1
    const-string v0, "update"

    .line 50
    .line 51
    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    instance-of v0, v0, Lcom/narvii/model/ChatBubble;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 68
    .line 69
    if-nez v2, :cond_2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V

    .line 90
    :cond_3
    :goto_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

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
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->checkCommunityJoined()Z

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
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

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
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/chat/MessageContentDetailFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    .line 44
    return v1

    .line 45
    .line 46
    .line 47
    :sswitch_2
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string v0, "clipboard"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Landroid/content/ClipboardManager;

    .line 57
    .line 58
    const-string v0, ""

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    const/4 v2, 0x0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    const v0, 0x7f120346

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    return v1

    .line 89
    .line 90
    :sswitch_3
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 107
    return v1

    .line 108
    nop

    .line 109
    .line 110
    :sswitch_data_0
    .sparse-switch
        0x7f12009d -> :sswitch_3
        0x7f120348 -> :sswitch_2
        0x7f1203a0 -> :sswitch_1
        0x7f120781 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/model/User;->isCurator()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    .line 30
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    const v4, 0x7f12009d

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 57
    .line 58
    .line 59
    const v1, 0x7f120781

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    xor-int/lit8 v4, v0, 0x1

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 69
    .line 70
    .line 71
    const v1, 0x7f120348

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    iget-object v4, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 78
    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    iget v5, v4, Lcom/narvii/model/ChatMessage;->type:I

    .line 82
    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    .line 87
    move-result v4

    .line 88
    .line 89
    if-nez v4, :cond_2

    .line 90
    move v2, v3

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    .line 95
    .line 96
    const v1, 0x7f1203a0

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "detailRequestSent"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->detailRequestSent:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->message:Lcom/narvii/model/ChatMessage;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "CHAT_MESSAGE"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "bubble"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    .line 6
    const p2, 0x7f0a0228

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->containerBubble:Landroid/view/View;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const p2, 0x7f0a022b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->imgBubblePreView:Lcom/narvii/widget/NVImageView;

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a03f5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->customBubbleContainer:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const p2, 0x7f0a0613

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Lcom/narvii/monetization/StoreItemStatusView;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 48
    .line 49
    new-instance p2, Lcom/narvii/chat/MessageContentDetailFragment$1;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->bubbleStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->threadId:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, p0, p0, v0, v1}, Lcom/narvii/chat/MessageContentDetailFragment$1;-><init>(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Ljava/lang/String;)V

    .line 57
    .line 58
    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 59
    .line 60
    const-string v0, "Message Detail Page"

    .line 61
    .line 62
    iput-object v0, p2, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    const p2, 0x7f0a076a

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    check-cast p2, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 72
    .line 73
    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v0}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 79
    .line 80
    iget-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment;->statusController:Lcom/narvii/monetization/ChatBubbleOwnStatusController;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/narvii/monetization/ChatBubbleOwnStatusController;->onCreate()V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateStatusView()V

    .line 87
    .line 88
    .line 89
    const p2, 0x7f0a0290

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    check-cast p1, Lcom/narvii/chat/ChatBubbleView;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/narvii/chat/MessageContentDetailFragment;->updateChatMessageView()V

    .line 101
    return-void
.end method
