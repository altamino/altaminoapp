.class public Lcom/narvii/chat/ChatMessageItemDetailFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private changeSeeAllButton(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    const v2, 0x7f080171

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const v2, 0x7f080181

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 28
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/chat/ChatMessageItemDetailFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    return-void
.end method

.method private onMessageTapped()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/chat/ChatMessageItem;->isExpandable()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 42
    .line 43
    iget v2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 44
    .line 45
    const/16 v3, 0x64

    .line 46
    .line 47
    if-ne v2, v3, :cond_4

    .line 48
    .line 49
    iget-object v3, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/model/Media;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 59
    .line 60
    iget v3, v2, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 61
    .line 62
    iput v3, v0, Lcom/narvii/model/Media;->type:I

    .line 63
    .line 64
    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    new-instance v0, Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    const-class v4, Lcom/narvii/media/MediaGalleryOptionActivity;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    const-string v4, "parent"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    const-string v3, "parentClass"

    .line 99
    .line 100
    const-class v4, Lcom/narvii/model/ChatMessage;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    .line 105
    const-string v3, "list"

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    const-string v2, "showCheckHD"

    .line 115
    const/4 v3, 0x1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 124
    move-result v1

    .line 125
    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    const-string v1, "hideShareBar"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-static {p0, v0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 135
    return-void

    .line 136
    .line 137
    :cond_4
    const/16 v1, 0x6e

    .line 138
    .line 139
    if-ne v2, v1, :cond_5

    .line 140
    .line 141
    iget-object v1, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    .line 148
    const/4 v3, 0x0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/chat/audio/AudioHelper;->handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V

    .line 152
    return-void

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->isMediaVideo()Z

    .line 156
    move-result v0

    .line 157
    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 180
    :cond_6
    return-void

    .line 181
    .line 182
    :cond_7
    :goto_0
    const-class v0, Lcom/narvii/chat/MessageContentDetailFragment;

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    const-string v1, "threadId"

    .line 189
    .line 190
    iget-object v2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 196
    .line 197
    .line 198
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    const-string v2, "message"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    invoke-static {p0, v0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method private onRetry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->sendRequest()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateViews()V

    .line 10
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->changeSeeAllButton(Z)V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateViews()V

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

.method private sellAllConversation()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    const-string v1, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v4, "/chat/thread/"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    new-instance v3, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 55
    .line 56
    const-class v4, Lcom/narvii/chat/ThreadResponse;

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, p0, v4, v0, v1}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;-><init>(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiService;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 63
    return-void
.end method

.method private sendRequest()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "/chat/thread/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "/message/"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string v1, "api"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;

    .line 53
    .line 54
    const-class v3, Lcom/narvii/chat/MessageResponse;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;-><init>(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 61
    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->loadingView:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v1, v2

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->contentView:Landroid/view/View;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    move v1, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v1, v2

    .line 34
    .line 35
    .line 36
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->errorView:Landroid/view/View;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move v2, v3

    .line 49
    .line 50
    .line 51
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateChatMessageView()V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvErrorMessage:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->error:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0d00dd

    return v0
.end method

.method protected buildDeletedMessage()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/ChatMessage;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    iput v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/model/User;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/narvii/model/User;-><init>()V

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    iput v1, v0, Lcom/narvii/model/ChatMessage;->type:I

    .line 32
    .line 33
    const-string v1, "fallBackTitle"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    .line 42
    const v1, 0x7f12026c

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    :goto_0
    iput-object v1, v0, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "mediaPlayer"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/media/MediaPlayerManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/media/MediaPlayerManager;->releaseMediaPlayer()V

    .line 17
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onRetry()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :sswitch_1
    const-class p1, Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "threadId"

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "message"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->sellAllConversation()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :sswitch_3
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->onMessageTapped()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 66
    nop

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    :sswitch_data_0
    .sparse-switch
        0x7f0a0171 -> :sswitch_4
        0x7f0a0291 -> :sswitch_3
        0x7f0a02ba -> :sswitch_2
        0x7f0a02bf -> :sswitch_1
        0x7f0a0507 -> :sswitch_0
        0x7f0a098b -> :sswitch_1
        0x7f0a09f9 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120266

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string v0, "threadId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "messageId"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->messageId:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 33
    .line 34
    const-string v0, "account"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 43
    .line 44
    const-class v0, Lcom/narvii/model/ChatMessage;

    .line 45
    .line 46
    const-string v1, "chatMessage"

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 74
    :goto_0
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
    invoke-virtual {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->baseLayoutId()I

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "chatMessage"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onSeeAllClicked(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "threadId"

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "message"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 26
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
    .line 6
    const p2, 0x7f0a039d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->contentView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x102000d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->loadingView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a04fe

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->errorView:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    const p2, 0x7f0a04ff

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvErrorMessage:Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0a0507

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnErrorRetry:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    const p2, 0x7f0a02af

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 63
    .line 64
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    .line 65
    .line 66
    .line 67
    const p2, 0x7f0a0291

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 74
    .line 75
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->bubbleViewContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    const p2, 0x7f0a02bf

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    const p2, 0x7f0a098b

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    const p2, 0x7f0a02ba

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->btnSeeAll:Landroid/view/View;

    .line 113
    .line 114
    const-string v0, "seeAll"

    .line 115
    const/4 v1, 0x1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 119
    move-result v2

    .line 120
    .line 121
    const/16 v3, 0x8

    .line 122
    const/4 v4, 0x0

    .line 123
    .line 124
    if-eqz v2, :cond_0

    .line 125
    move v2, v4

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    move v2, v3

    .line 128
    .line 129
    .line 130
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    const p2, 0x7f0a02bb

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    if-eqz p2, :cond_2

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 143
    move-result v0

    .line 144
    .line 145
    if-eqz v0, :cond_1

    .line 146
    move v3, v4

    .line 147
    .line 148
    .line 149
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :cond_2
    const p2, 0x7f0a0171

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object p2

    .line 157
    .line 158
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 159
    .line 160
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->imgAvatar:Lcom/narvii/widget/NVImageView;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    const p2, 0x7f0a09f9

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 173
    .line 174
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->updateViews()V

    .line 181
    .line 182
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 183
    .line 184
    if-nez p1, :cond_3

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->sendRequest()V

    .line 188
    :cond_3
    return-void
.end method

.method protected updateChatMessageView()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    .line 22
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->imgAvatar:Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    move v5, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v5, v4

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 37
    .line 38
    if-eqz v3, :cond_5

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    move v4, v2

    .line 42
    .line 43
    .line 44
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    :cond_5
    iget-object v5, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    .line 47
    .line 48
    if-eqz v5, :cond_8

    .line 49
    .line 50
    iget-object v6, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    .line 54
    const-string v0, "showDisabled"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 58
    move-result v9

    .line 59
    const/4 v10, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {v5 .. v10}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZZLjava/lang/String;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lcom/narvii/chat/ChatMessageItem;->setOnSeeAllClickedListener(Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 86
    .line 87
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    move v0, v1

    .line 95
    goto :goto_2

    .line 96
    :cond_6
    move v0, v2

    .line 97
    .line 98
    :goto_2
    iget-object v3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessageItem:Lcom/narvii/chat/ChatMessageItem;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    const v4, 0x7f06008b

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 111
    move-result v0

    .line 112
    goto :goto_3

    .line 113
    .line 114
    .line 115
    :cond_7
    const v0, -0xb0b0c

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-virtual {v3, v0}, Lcom/narvii/chat/ChatMessageItem;->setbubbleColor(I)V

    .line 119
    .line 120
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    iget-object v3, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v3, :cond_9

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    if-eqz v0, :cond_9

    .line 133
    goto :goto_4

    .line 134
    :cond_9
    move v1, v2

    .line 135
    .line 136
    .line 137
    :goto_4
    invoke-direct {p0, v1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->changeSeeAllButton(Z)V

    .line 138
    return-void
.end method
