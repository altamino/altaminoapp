.class public Lcom/narvii/chat/thread/ThreadListItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field avatar:Lcom/narvii/widget/NVImageView;

.field avatars:Lcom/narvii/chat/MultiAvatarView;

.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field color1:Landroid/content/res/ColorStateList;

.field color2:Landroid/content/res/ColorStateList;

.field content:Landroid/widget/TextView;

.field datetime:Landroid/widget/TextView;

.field private disableIndicator:Landroid/view/View;

.field private fansOnlyIndicator:Landroid/view/View;

.field formatter:Lcom/narvii/util/DateTimeFormatter;

.field helper:Lcom/narvii/chat/util/ChatHelper;

.field image:Lcom/narvii/widget/NVImageView;

.field public isDarkTheme:Z

.field mute:Lcom/narvii/widget/FontAwesomeView;

.field organizerTransHintIcon:Landroid/view/View;

.field publicChat:Landroid/widget/TextView;

.field rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

.field title:Landroid/widget/TextView;

.field typeface:Landroid/graphics/Typeface;

.field unread:Landroid/view/View;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/chat/thread/ThreadListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string p2, "account"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadListItem;->accountService:Lcom/narvii/account/AccountService;

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadListItem;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 42
    return-void
.end method

.method public static getViewType(Lcom/narvii/chat/global/GlobalChatThread;)I
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatThread;->avatarList:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06eb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->image:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0171

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0f36

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0285

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/chat/MultiAvatarView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->avatars:Lcom/narvii/chat/MultiAvatarView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a02c3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a02c4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->unread:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0a0408

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0a0e9e

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Landroid/widget/TextView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    const v0, 0x7f0a039d

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->typeface:Landroid/graphics/Typeface;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->color1:Landroid/content/res/ColorStateList;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->color2:Landroid/content/res/ColorStateList;

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0a02b1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    .line 132
    .line 133
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->mute:Lcom/narvii/widget/FontAwesomeView;

    .line 134
    .line 135
    .line 136
    const v0, 0x7f0a0c58

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 143
    .line 144
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    .line 145
    .line 146
    .line 147
    const v0, 0x7f0a0aa9

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    .line 154
    .line 155
    .line 156
    const v0, 0x7f0a055e

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->fansOnlyIndicator:Landroid/view/View;

    .line 163
    .line 164
    .line 165
    const v0, 0x7f0a043f

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->disableIndicator:Landroid/view/View;

    .line 172
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    invoke-virtual {v2, v1}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->unread:Landroid/view/View;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 4
    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 5
    iget-object v7, v1, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v6, v7}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    iget-boolean v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    const v7, -0x5f5f60

    const v8, -0x6f000001

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    .line 6
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->hasLiveEvents()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    const-string v6, "assets://video_green.webp"

    .line 8
    invoke-virtual {v3, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    .line 9
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    .line 10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->mute:Lcom/narvii/widget/FontAwesomeView;

    const v6, -0x333334

    const/4 v9, 0x2

    if-eqz v3, :cond_6

    .line 11
    iget v10, v1, Lcom/narvii/model/ChatThread;->alertOption:I

    if-ne v10, v9, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v4

    :goto_3
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->mute:Lcom/narvii/widget/FontAwesomeView;

    iget-boolean v10, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    if-eqz v10, :cond_5

    move v10, v6

    goto :goto_4

    :cond_5
    const v10, -0x7f7f80

    .line 12
    :goto_4
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_6
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_7

    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->image:Lcom/narvii/widget/NVImageView;

    if-eqz v12, :cond_b

    .line 14
    invoke-virtual {v12, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_6

    :cond_7
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 15
    invoke-virtual {v3, v1}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v11, :cond_8

    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->avatars:Lcom/narvii/chat/MultiAvatarView;

    .line 17
    invoke-virtual {v12, v3}, Lcom/narvii/chat/MultiAvatarView;->setAvatars(Ljava/util/List;)V

    goto :goto_6

    :cond_8
    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v12, :cond_9

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 18
    invoke-virtual {v3, v1}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_6

    :cond_9
    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v12, :cond_b

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_a

    move-object v3, v10

    goto :goto_5

    :cond_a
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_5
    invoke-virtual {v12, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_b
    :goto_6
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 21
    iget-object v3, v3, Lcom/narvii/model/OrganizerTransferRequest;->requestId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    .line 22
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_d
    :goto_7
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_8
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    const/4 v12, 0x4

    if-eqz v3, :cond_12

    .line 24
    iget v13, v1, Lcom/narvii/model/ChatThread;->type:I

    if-ne v13, v9, :cond_f

    .line 25
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    const v9, 0x7f12027d

    .line 26
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    :cond_f
    if-ne v13, v11, :cond_10

    .line 27
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    const v9, 0x7f12023a

    .line 28
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 29
    :cond_10
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    iget-boolean v9, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    if-eqz v9, :cond_11

    move v7, v6

    .line 30
    :cond_11
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 31
    invoke-virtual {v6, v1}, Lcom/narvii/chat/util/ChatHelper;->getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    iget-boolean v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    if-eqz v6, :cond_13

    const/4 v6, -0x1

    goto :goto_a

    :cond_13
    const v6, -0xdfdfe0

    .line 32
    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    const/16 v6, 0x64

    const-string v9, "["

    if-eqz v3, :cond_15

    .line 34
    iget v13, v3, Lcom/narvii/model/ChatMessage;->type:I

    if-eq v13, v6, :cond_14

    const/16 v14, 0x77

    if-ne v13, v14, :cond_15

    :cond_14
    const-string v6, "-"

    goto/16 :goto_d

    :cond_15
    if-eqz v3, :cond_16

    .line 35
    iget v13, v3, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v14, 0x6e

    if-ne v13, v14, :cond_16

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v13, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v13}, Lcom/narvii/model/ChatMessage;->getDuration()I

    move-result v13

    invoke-static {v6, v13}, Lcom/narvii/util/VoiceMessageUtils;->getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    :cond_16
    const-string v13, "]"

    if-eqz v3, :cond_18

    .line 37
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 38
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v6}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 39
    iget-object v14, v6, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_17

    iget-object v6, v6, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    goto :goto_b

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v14, 0x7f121138

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 40
    :goto_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    :cond_18
    if-eqz v3, :cond_19

    .line 41
    iget v14, v3, Lcom/narvii/model/ChatMessage;->mediaType:I

    if-ne v14, v6, :cond_19

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f120ec7

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    :cond_19
    if-eqz v3, :cond_1a

    .line 43
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 44
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v6

    iget v6, v6, Lcom/narvii/model/Media;->type:I

    const/16 v14, 0x67

    if-eq v6, v14, :cond_1a

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f12125b

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    .line 46
    :cond_1a
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    if-eqz v6, :cond_1f

    .line 47
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isCancelMessage()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f1201d2

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 49
    :cond_1b
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isDeclineMessage()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f1201d3

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 51
    :cond_1c
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isTimeOutMessage()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v0, Lcom/narvii/chat/thread/ThreadListItem;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v15}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f1201d5

    goto :goto_c

    :cond_1d
    const v4, 0x7f120cab

    :goto_c
    invoke-virtual {v14, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_1e
    iget-object v4, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 53
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v4, v1, v6}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_1f
    move-object v6, v10

    .line 54
    :goto_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f12026b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    :cond_20
    iget v4, v1, Lcom/narvii/model/ChatThread;->type:I

    if-nez v4, :cond_21

    move v4, v11

    goto :goto_e

    :cond_21
    move v4, v5

    :goto_e
    if-eqz v3, :cond_22

    .line 57
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isUserContentMessage()Z

    move-result v13

    if-eqz v13, :cond_22

    move v13, v11

    goto :goto_f

    :cond_22
    move v13, v5

    :goto_f
    if-eqz v3, :cond_23

    .line 58
    iget-object v14, v3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    goto :goto_10

    :cond_23
    move-object v14, v10

    :goto_10
    if-nez v14, :cond_24

    move-object v14, v10

    goto :goto_11

    .line 59
    :cond_24
    iget-object v14, v14, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    :goto_11
    if-nez v14, :cond_26

    if-eqz v3, :cond_26

    iget-object v14, v0, Lcom/narvii/chat/thread/ThreadListItem;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 60
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Lcom/narvii/chat/util/ChatHelper;->getUser(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 61
    iget-object v10, v3, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    :cond_25
    move-object v14, v10

    .line 62
    :cond_26
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    if-nez v4, :cond_27

    if-eqz v13, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 63
    :cond_27
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    iget-boolean v4, v1, Lcom/narvii/model/ChatThread;->mentionMe:Z

    if-eqz v4, :cond_28

    invoke-static/range {p1 .. p1}, Lcom/narvii/chat/util/ChatHelperKt;->hasUnreadMessage(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-eqz v4, :cond_28

    move v4, v11

    goto :goto_12

    :cond_28
    move v4, v5

    .line 65
    :goto_12
    iget-boolean v10, v1, Lcom/narvii/model/ChatThread;->replyMe:Z

    if-eqz v10, :cond_29

    invoke-static/range {p1 .. p1}, Lcom/narvii/chat/util/ChatHelperKt;->hasUnreadMessage(Lcom/narvii/model/ChatThread;)Z

    move-result v10

    if-eqz v10, :cond_29

    move v10, v11

    goto :goto_13

    :cond_29
    move v10, v5

    :goto_13
    const-string v13, " "

    const/16 v14, 0x21

    const v15, -0x3acdcf

    if-eqz v4, :cond_2a

    .line 66
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f120c9e

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v5, v4, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_14

    :cond_2a
    const-string v4, "] "

    if-eqz v10, :cond_2b

    .line 70
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 71
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v7, 0x7f120ff7

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 73
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v5, v4, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_14

    .line 74
    :cond_2b
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 75
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f120325

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 78
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v5, v4, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2c
    :goto_14
    iget-object v4, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/narvii/chat/thread/ThreadListItem;->typeface:Landroid/graphics/Typeface;

    .line 80
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-boolean v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    if-eqz v3, :cond_2e

    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_2d

    const/4 v8, -0x1

    .line 81
    :cond_2d
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_16

    :cond_2e
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->color2:Landroid/content/res/ColorStateList;

    goto :goto_15

    :cond_2f
    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->color1:Landroid/content/res/ColorStateList;

    .line 82
    :goto_15
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_16
    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->fansOnlyIndicator:Landroid/view/View;

    if-eqz v2, :cond_31

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v3

    if-eqz v3, :cond_30

    move v12, v5

    :cond_30
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->status()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_32

    goto :goto_17

    :cond_32
    move v11, v5

    :goto_17
    iget-object v1, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    if-eqz v11, :cond_33

    const/16 v2, 0x8

    goto :goto_18

    :cond_33
    move v2, v5

    .line 85
    :goto_18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/narvii/chat/thread/ThreadListItem;->disableIndicator:Landroid/view/View;

    if-eqz v1, :cond_35

    if-eqz v11, :cond_34

    move v4, v5

    goto :goto_19

    :cond_34
    const/16 v4, 0x8

    .line 86
    :goto_19
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    return-void
.end method
