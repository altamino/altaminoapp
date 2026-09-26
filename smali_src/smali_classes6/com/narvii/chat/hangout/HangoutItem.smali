.class public Lcom/narvii/chat/hangout/HangoutItem;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 10
    return-void
.end method

.method private formatMemberCount(I)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x2710

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    const v0, 0xf4240

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/text/DecimalFormat;

    .line 17
    .line 18
    const-string v1, "0.0"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    int-to-float p1, p1

    .line 28
    .line 29
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 30
    div-float/2addr p1, v2

    .line 31
    float-to-double v2, p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p1, "K"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    :cond_1
    const-string p1, "1M"

    .line 55
    return-object p1
.end method

.method private hasLiveAction(Lcom/narvii/model/ChatThread;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    const/4 v1, 0x4

    .line 9
    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    const/4 v1, 0x5

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
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

    .line 1
    .line 2
    iget p2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 3
    .line 4
    const/16 p3, 0x8

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p2}, Lcom/narvii/chat/hangout/HangoutItem;->formatMemberCount(I)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    .line 34
    if-eq p1, p2, :cond_2

    .line 35
    const/4 p2, 0x3

    .line 36
    .line 37
    if-eq p1, p2, :cond_2

    .line 38
    const/4 p2, 0x4

    .line 39
    .line 40
    if-eq p1, p2, :cond_2

    .line 41
    const/4 p2, 0x5

    .line 42
    .line 43
    if-eq p1, p2, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    const/4 p2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 74
    .line 75
    const-string p2, "assets://video_green.webp"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

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
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->image:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0e9e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->title:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0aa4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0374

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a036b

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityIcon:Lcom/narvii/widget/CommunityIconView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a037c

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityName:Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    const v0, 0x7f0a093e

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->membersCount:Landroid/widget/TextView;

    .line 92
    .line 93
    .line 94
    const v0, 0x7f0a055e

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->fansOnlyIndicator:Landroid/view/View;

    .line 101
    .line 102
    .line 103
    const v0, 0x7f0a07b5

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    .line 112
    .line 113
    .line 114
    const v0, 0x7f0a072f

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    check-cast v0, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0a0b04

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    check-cast v0, Landroid/widget/TextView;

    .line 132
    .line 133
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    .line 134
    .line 135
    .line 136
    const v0, 0x7f0a0b02

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
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingIcon:Lcom/narvii/widget/NVImageView;

    .line 145
    .line 146
    .line 147
    const v0, 0x7f0a0440

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    check-cast v0, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->disabledMask:Landroid/widget/TextView;

    .line 156
    return-void
.end method

.method public setCommunityInfo(Lcom/narvii/model/Community;)V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityIcon:Lcom/narvii/widget/CommunityIconView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityName:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    const/high16 v4, 0x41000000    # 8.0f

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 48
    move-result v3

    .line 49
    .line 50
    new-array v0, v0, [F

    .line 51
    .line 52
    aput v3, v0, v2

    .line 53
    const/4 v2, 0x1

    .line 54
    .line 55
    aput v3, v0, v2

    .line 56
    const/4 v2, 0x2

    .line 57
    .line 58
    aput v3, v0, v2

    .line 59
    const/4 v2, 0x3

    .line 60
    .line 61
    aput v3, v0, v2

    .line 62
    const/4 v2, 0x4

    .line 63
    .line 64
    aput v3, v0, v2

    .line 65
    const/4 v2, 0x5

    .line 66
    .line 67
    aput v3, v0, v2

    .line 68
    const/4 v2, 0x6

    .line 69
    .line 70
    aput v3, v0, v2

    .line 71
    const/4 v2, 0x7

    .line 72
    .line 73
    aput v3, v0, v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 80
    move-result p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public setOnlineUserList(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/thread/OnlineUserInfoInfo;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
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

    .line 2
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

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;Ljava/lang/String;)V

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/PlayList;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->communityInfoPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutItem;->image:Lcom/narvii/widget/NVImageView;

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p3, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutItem;->title:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/chat/hangout/HangoutItem;->hasLiveAction(Lcom/narvii/model/ChatThread;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 6
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/narvii/chat/hangout/HangoutItem;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 8
    iget-object v4, p1, Lcom/narvii/model/ChatThread;->lastMessageSummary:Lcom/narvii/model/ChatMessage;

    iget-object v4, v4, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/narvii/util/DateTimeFormatter;->formatChatCardTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->latestedMessageDateView:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 10
    iget-object v2, p2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    if-eqz v2, :cond_2

    iget v3, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    if-ltz v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 11
    iget-object v2, p2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    iget p2, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/PlayListItem;

    if-eqz p2, :cond_3

    .line 12
    iget-object v2, p2, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    .line 13
    iget-object p2, p2, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    .line 14
    new-instance v2, Lcom/narvii/chat/hangout/HangoutItem$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/hangout/HangoutItem$1;-><init>(Lcom/narvii/chat/hangout/HangoutItem;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->playingTitle:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b9a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    const/4 v2, 0x1

    if-eqz p2, :cond_7

    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    move-result-object p2

    iget-object v3, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 18
    iget v4, p1, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 19
    invoke-virtual {v3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 20
    invoke-virtual {p2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 21
    invoke-virtual {p2, v2}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object p3, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 23
    invoke-virtual {p2}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v3, 0x40000000    # 2.0f

    :goto_3
    invoke-virtual {p3, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 24
    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 25
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    const/4 p3, 0x0

    .line 26
    invoke-virtual {p2, p3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 27
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->organizerSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 28
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :goto_4
    iget-object p2, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/chat/hangout/HangoutItem;->setupOnlineMemberBar(Lcom/narvii/model/ChatThread;Ljava/util/List;I)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->fansOnlyIndicator:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 30
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isFansOnly()Z

    move-result p3

    if-eqz p3, :cond_8

    move p3, v0

    goto :goto_5

    :cond_8
    const/4 p3, 0x4

    :goto_5
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    if-eqz p2, :cond_b

    .line 31
    iget-object p3, p1, Lcom/narvii/model/ChatThread;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    if-nez p3, :cond_a

    .line 32
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 33
    :cond_a
    invoke-virtual {p2, v2}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 34
    iget-object p3, p1, Lcom/narvii/model/ChatThread;->promotedTopic:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p2, p3}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_6
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutItem;->disabledMask:Landroid/widget/TextView;

    if-eqz p2, :cond_d

    .line 36
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_c

    move v1, v0

    :cond_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
