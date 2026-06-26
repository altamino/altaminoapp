.class public Lcom/narvii/chat/hangout/HangoutItem;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "HangoutItem.java"


# instance fields
.field communityIcon:Lcom/narvii/widget/CommunityIconView;

.field communityInfoPanel:Landroid/widget/LinearLayout;

.field communityName:Landroid/widget/TextView;

.field disabledMask:Landroid/widget/TextView;

.field private fansOnlyIndicator:Landroid/view/View;

.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field image:Lcom/narvii/widget/NVImageView;

.field latestedMessageDateView:Landroid/widget/TextView;

.field membersCount:Landroid/widget/TextView;

.field organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

.field organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

.field playingIcon:Lcom/narvii/widget/NVImageView;

.field playingTitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;

.field topicView:Lcom/narvii/suggest/interest/InterestTopicView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method

.method private formatMemberCount(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0xf4240

    if-ge p1, v0, :cond_1

    .line 229
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "1M"

    return-object p1
.end method

.method private hasLiveAction(Lcom/narvii/model/ChatThread;)Z
    .locals 2

    .line 79
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private setupOnlineMemberBar(Lcom/narvii/model/ChatThread;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 160
    iget p2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    const/4 p3, 0x0

    const/16 v0, 0x8

    if-lez p2, :cond_0

    .line 161
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/narvii/chat/hangout/HangoutItem;->formatMemberCount(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    .line 181
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 182
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 183
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 186
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_3

    .line 172
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    const-string p2, "assets://video_green.webp"

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 176
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090571

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->image:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090b9a

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->title:Landroid/widget/TextView;

    const v0, 0x7f090c10

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090800

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/UserSpeakingView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const v0, 0x7f0902ad

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    const v0, 0x7f0902a3

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityIcon:Lcom/narvii/widget/CommunityIconView;

    const v0, 0x7f0902b6

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityName:Landroid/widget/TextView;

    const v0, 0x7f0906dd

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    const v0, 0x7f090425

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->fansOnlyIndicator:Landroid/view/View;

    const v0, 0x7f090634

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    const v0, 0x7f0905b1

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/suggest/interest/InterestTopicView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    const v0, 0x7f09084e

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    const v0, 0x7f09084c

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090358

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->disabledMask:Landroid/widget/TextView;

    return-void
.end method

.method public setCommunityInfo(Lcom/narvii/model/Community;)V
    .locals 5

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityIcon:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 201
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 204
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v3, v0, v2

    const/4 v2, 0x3

    aput v3, v0, v2

    const/4 v2, 0x4

    aput v3, v0, v2

    const/4 v2, 0x5

    aput v3, v0, v2

    const/4 v2, 0x6

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v3, v0, v2

    .line 206
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 207
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 208
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileList:Ljava/util/List;

    iget p2, p2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileCount:I

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/chat/hangout/HangoutItem;->setupOnlineMemberBar(Lcom/narvii/model/ChatThread;Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnlineUserList(Lcom/narvii/model/ChatThread;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setupOnlineMemberBar(Lcom/narvii/model/ChatThread;Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;Ljava/lang/String;)V

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;Ljava/lang/String;)V
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->image:Lcom/narvii/widget/NVImageView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p3, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 91
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutItem;->title:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutItem;->hasLiveAction(Lcom/narvii/model/ChatThread;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 95
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/narvii/chat/hangout/HangoutItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    iget-object v4, p1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    iget-object v4, v4, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/narvii/util/DateTimeFormatter;->formatChatCardTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 104
    iget-object v2, p2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-eqz v2, :cond_2

    iget v3, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    if-ltz v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 105
    iget-object v2, p2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    iget p2, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/PlayListItem;

    if-eqz p2, :cond_3

    .line 106
    iget-object v2, p2, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 107
    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/narvii/chat/hangout/HangoutItem$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/hangout/HangoutItem$1;-><init>(Lcom/narvii/chat/hangout/HangoutItem;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 116
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0aef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    const/4 v2, 0x1

    if-eqz p2, :cond_7

    .line 121
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    move-result-object p2

    .line 122
    iget-object v3, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    iget v4, p1, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    .line 125
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    .line 126
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p2, v2}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 127
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 129
    :cond_5
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p2}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v3, 0x40000000    # 2.0f

    :goto_3
    invoke-virtual {p3, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    .line 130
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 131
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 134
    :cond_7
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 135
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    :goto_4
    iget-object p2, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setupOnlineMemberBar(Lcom/narvii/model/ChatThread;Ljava/util/List;I)V

    .line 140
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->fansOnlyIndicator:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 141
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p3, 0x0

    goto :goto_5

    :cond_8
    const/4 p3, 0x4

    :goto_5
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_9
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    if-eqz p2, :cond_b

    .line 145
    iget-object p3, p1, Lcom/narvii/model/ChatThread;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    if-nez p3, :cond_a

    .line 146
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 148
    :cond_a
    invoke-virtual {p2, v2}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 149
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    iget-object p3, p1, Lcom/narvii/model/ChatThread;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p2, p3}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    .line 150
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    :cond_b
    :goto_6
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->disabledMask:Landroid/widget/TextView;

    if-eqz p2, :cond_d

    .line 155
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    const/16 v0, 0x8

    :goto_7
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    return-void
.end method
