.class public Lcom/narvii/chat/thread/ThreadListItem;
.super Landroid/widget/RelativeLayout;
.source "ThreadListItem.java"


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

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/thread/ThreadListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 69
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 70
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "account"

    .line 71
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadListItem;->accountService:Lcom/narvii/account/AccountService;

    .line 72
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadListItem;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public static getViewType(Lcom/narvii/chat/global/GlobalChatThread;)I
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatThread;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/narvii/chat/global/GlobalChatThread;->avatarList:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I
    .locals 1

    .line 103
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    move-result-object p0

    .line 107
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

    .line 77
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090571

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->image:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0900e4

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->avatar:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090c10

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f0901ce

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/MultiAvatarView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->avatars:Lcom/narvii/chat/MultiAvatarView;

    const v0, 0x7f09020b

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    const v0, 0x7f09020c

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->unread:Landroid/view/View;

    const v0, 0x7f09032e

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    const v0, 0x7f090b9a

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    const v0, 0x7f0902d0

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->typeface:Landroid/graphics/Typeface;

    .line 88
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->color1:Landroid/content/res/ColorStateList;

    .line 89
    iget-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->color2:Landroid/content/res/ColorStateList;

    const v0, 0x7f0901fa

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->mute:Lcom/narvii/widget/FontAwesomeView;

    const v0, 0x7f090992

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090805

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    const v0, 0x7f090425

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->fansOnlyIndicator:Landroid/view/View;

    const v0, 0x7f090357

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/thread/ThreadListItem;->disableIndicator:Landroid/view/View;

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0, v0}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 126
    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v2, v1}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    .line 127
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->unread:Landroid/view/View;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v7, v1, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v6, v7}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->datetime:Landroid/widget/TextView;

    iget-boolean v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    const v7, -0x6f000001

    const v8, -0x5f5f60

    if-eqz v6, :cond_1

    const v6, -0x6f000001

    goto :goto_1

    :cond_1
    const v6, -0x5f5f60

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v3, :cond_3

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->hasLiveEvents()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    const-string v6, "assets://video_green.webp"

    invoke-virtual {v3, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 134
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 136
    :cond_2
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->rctIndicatorIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_3
    :goto_2
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->mute:Lcom/narvii/widget/FontAwesomeView;

    const v6, -0x333334

    const/4 v9, 0x2

    if-eqz v3, :cond_6

    .line 141
    iget v10, v1, Lcom/narvii/model/ChatThread;->alertOption:I

    if-ne v10, v9, :cond_4

    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    const/16 v10, 0x8

    :goto_3
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->mute:Lcom/narvii/widget/FontAwesomeView;

    iget-boolean v10, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    if-eqz v10, :cond_5

    const v10, -0x333334

    goto :goto_4

    :cond_5
    const v10, -0x7f7f80

    :goto_4
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :cond_6
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_7

    .line 147
    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->image:Lcom/narvii/widget/NVImageView;

    if-eqz v12, :cond_b

    .line 148
    invoke-virtual {v12, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_6

    .line 151
    :cond_7
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v3, v1}, Lcom/narvii/chat/util/ChatHelper;->getAvatarList(Lcom/narvii/model/ChatThread;)Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v11, :cond_8

    .line 153
    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->avatars:Lcom/narvii/chat/MultiAvatarView;

    invoke-virtual {v12, v3}, Lcom/narvii/chat/MultiAvatarView;->setAvatars(Ljava/util/List;)V

    goto :goto_6

    .line 155
    :cond_8
    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v12, :cond_9

    .line 156
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v3, v1}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_6

    .line 157
    :cond_9
    iget-object v12, v0, Lcom/narvii/chat/thread/ThreadListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v12, :cond_b

    .line 158
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

    .line 163
    :cond_b
    :goto_6
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 165
    iget-object v3, v3, Lcom/narvii/model/OrganizerTransferRequest;->requestId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    .line 168
    :cond_c
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 166
    :cond_d
    :goto_7
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->organizerTransHintIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_e
    :goto_8
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    const/4 v12, 0x4

    if-eqz v3, :cond_12

    .line 173
    iget v13, v1, Lcom/narvii/model/ChatThread;->type:I

    if-ne v13, v9, :cond_f

    .line 174
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    const v9, 0x7f0f023a

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    :cond_f
    if-ne v13, v11, :cond_10

    .line 177
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    const v9, 0x7f0f01eb

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 180
    :cond_10
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_9
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->publicChat:Landroid/widget/TextView;

    iget-boolean v9, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    if-eqz v9, :cond_11

    goto :goto_a

    :cond_11
    const v6, -0x5f5f60

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :cond_12
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v6, v1}, Lcom/narvii/chat/util/ChatHelper;->getThreadTitle(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->title:Landroid/widget/TextView;

    iget-boolean v6, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    const/4 v8, -0x1

    if-eqz v6, :cond_13

    const/4 v6, -0x1

    goto :goto_b

    :cond_13
    const v6, -0xdfdfe0

    :goto_b
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v3, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    const/16 v6, 0x64

    const-string v9, "["

    if-eqz v3, :cond_15

    .line 190
    iget v13, v3, Lcom/narvii/model/ChatMessage;->type:I

    if-eq v13, v6, :cond_14

    const/16 v14, 0x77

    if-ne v13, v14, :cond_15

    :cond_14
    const-string v6, "-"

    goto/16 :goto_f

    :cond_15
    if-eqz v3, :cond_16

    .line 193
    iget v13, v3, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v14, 0x6e

    if-ne v13, v14, :cond_16

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v13, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v13}, Lcom/narvii/model/ChatMessage;->getDuration()I

    move-result v13

    invoke-static {v6, v13}, Lcom/narvii/util/VoiceMessageUtils;->getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    :cond_16
    const-string v13, "]"

    if-eqz v3, :cond_18

    .line 195
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 196
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v6}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 197
    iget-object v14, v6, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_17

    iget-object v6, v6, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    goto :goto_c

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v14, 0x7f0f1022

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 198
    :goto_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    :cond_18
    if-eqz v3, :cond_19

    .line 199
    iget v14, v3, Lcom/narvii/model/ChatMessage;->mediaType:I

    if-ne v14, v6, :cond_19

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0f0d9b

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    :cond_19
    if-eqz v3, :cond_1a

    .line 201
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 202
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v6

    iget v6, v6, Lcom/narvii/model/Media;->type:I

    const/16 v14, 0x67

    if-eq v6, v14, :cond_1a

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0f114f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    .line 204
    :cond_1a
    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    if-eqz v6, :cond_1f

    .line 205
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isCancelMessage()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0f0186

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 207
    :cond_1b
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isDeclineMessage()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0f0187

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 209
    :cond_1c
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isTimeOutMessage()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v0, Lcom/narvii/chat/thread/ThreadListItem;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v15}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f0f0189

    goto :goto_d

    :cond_1d
    const v4, 0x7f0f0ba7

    :goto_d
    invoke-virtual {v14, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 212
    :cond_1e
    iget-object v4, v0, Lcom/narvii/chat/thread/ThreadListItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v6, v1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v4, v1, v6}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v4

    :goto_e
    move-object v6, v4

    goto :goto_f

    :cond_1f
    move-object v6, v10

    .line 215
    :goto_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0f0228

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    :cond_20
    iget v4, v1, Lcom/narvii/model/ChatThread;->type:I

    if-nez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_10

    :cond_21
    const/4 v4, 0x0

    :goto_10
    if-eqz v3, :cond_22

    .line 220
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isUserContentMessage()Z

    move-result v13

    if-eqz v13, :cond_22

    const/4 v13, 0x1

    goto :goto_11

    :cond_22
    const/4 v13, 0x0

    :goto_11
    if-eqz v3, :cond_23

    .line 221
    iget-object v14, v3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    goto :goto_12

    :cond_23
    move-object v14, v10

    :goto_12
    if-nez v14, :cond_24

    move-object v14, v10

    goto :goto_13

    .line 222
    :cond_24
    iget-object v14, v14, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    :goto_13
    if-nez v14, :cond_26

    if-eqz v3, :cond_26

    .line 224
    iget-object v14, v0, Lcom/narvii/chat/thread/ThreadListItem;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Lcom/narvii/chat/util/ChatHelper;->getUser(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 225
    iget-object v10, v3, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    :cond_25
    move-object v14, v10

    .line 227
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

    .line 228
    :cond_27
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    iget-boolean v4, v1, Lcom/narvii/model/ChatThread;->mentionMe:Z

    if-eqz v4, :cond_28

    invoke-static/range {p1 .. p1}, Lcom/narvii/chat/util/ChatHelperKt;->hasUnreadMessage(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    goto :goto_14

    :cond_28
    const/4 v4, 0x0

    .line 231
    :goto_14
    iget-boolean v10, v1, Lcom/narvii/model/ChatThread;->replyMe:Z

    if-eqz v10, :cond_29

    invoke-static/range {p1 .. p1}, Lcom/narvii/chat/util/ChatHelperKt;->hasUnreadMessage(Lcom/narvii/model/ChatThread;)Z

    move-result v10

    if-eqz v10, :cond_29

    const/4 v10, 0x1

    goto :goto_15

    :cond_29
    const/4 v10, 0x0

    :goto_15
    const/16 v13, 0x21

    const v14, -0x3acdcf

    if-eqz v4, :cond_2a

    .line 233
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0f0b9a

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v5, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_16

    :cond_2a
    if-eqz v10, :cond_2b

    .line 238
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0ede

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 241
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v5, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_16

    .line 242
    :cond_2b
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 243
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f0f02da

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    move-object/from16 v9, p2

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 246
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v5, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 248
    :cond_2c
    :goto_16
    iget-object v4, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/narvii/chat/thread/ThreadListItem;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 250
    iget-boolean v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    if-eqz v3, :cond_2e

    .line 251
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_2d

    const/4 v7, -0x1

    :cond_2d
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_18

    .line 253
    :cond_2e
    iget-object v3, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->color2:Landroid/content/res/ColorStateList;

    goto :goto_17

    :cond_2f
    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->color1:Landroid/content/res/ColorStateList;

    :goto_17
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 255
    :goto_18
    iget-object v2, v0, Lcom/narvii/chat/thread/ThreadListItem;->fansOnlyIndicator:Landroid/view/View;

    if-eqz v2, :cond_31

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v12, 0x0

    :cond_30
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatThread;->status()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_32

    goto :goto_19

    :cond_32
    const/4 v11, 0x0

    .line 260
    :goto_19
    iget-object v1, v0, Lcom/narvii/chat/thread/ThreadListItem;->content:Landroid/widget/TextView;

    if-eqz v11, :cond_33

    const/16 v2, 0x8

    goto :goto_1a

    :cond_33
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v1, v0, Lcom/narvii/chat/thread/ThreadListItem;->disableIndicator:Landroid/view/View;

    if-eqz v1, :cond_35

    if-eqz v11, :cond_34

    goto :goto_1b

    :cond_34
    const/16 v5, 0x8

    .line 262
    :goto_1b
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/narvii/chat/thread/ThreadListItem;->isDarkTheme:Z

    return-void
.end method
