.class public Lcom/narvii/chat/ChatMessageItem;
.super Lcom/narvii/widget/ReversibleLinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;,
        Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;,
        Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field avatar:Lcom/narvii/widget/NVImageView;

.field avatarBadge:Landroid/widget/ImageView;

.field avatarMargin:I

.field bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field chatStickerView:Lcom/narvii/widget/ChatStickerView;

.field configService:Lcom/narvii/config/ConfigService;

.field helper:Lcom/narvii/chat/util/ChatHelper;

.field hideNickname:Z

.field isExpandable:Z

.field l1:Landroid/widget/LinearLayout;

.field l2:Lcom/narvii/widget/ReversibleLinearLayout;

.field mentionedUserClickedListener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

.field moodSticker:Lcom/narvii/widget/EmojioneView;

.field nickname:Lcom/narvii/widget/NicknameView;

.field nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

.field progress:Landroid/view/View;

.field ranking:Lcom/narvii/util/ranking/RankingService;

.field resend:Landroid/view/View;

.field seeAllClickedListener:Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;

.field tvHostLabel:Landroid/widget/TextView;

.field unread:Landroid/view/View;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ReversibleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->seeAllClickedListener:Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;

    .line 7
    .line 8
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-string v0, "ranking"

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->ranking:Lcom/narvii/util/ranking/RankingService;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    const-string v0, "config"

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->configService:Lcom/narvii/config/ConfigService;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string p2, "bubble"

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 56
    .line 57
    const-string p2, "account"

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem;->accountService:Lcom/narvii/account/AccountService;

    .line 66
    return-void
.end method

.method public static appendSeeAll(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V
    .locals 3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f12106e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 12
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    invoke-virtual {p1, p2, v0, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private appendSeeAll(Landroid/text/SpannableStringBuilder;ILcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12106e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    new-instance v1, Lcom/narvii/chat/ChatMessageItem$1;

    invoke-direct {v1, p0, p3}, Lcom/narvii/chat/ChatMessageItem$1;-><init>(Lcom/narvii/chat/ChatMessageItem;Lcom/narvii/model/ChatMessage;)V

    .line 4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 5
    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, p3, p2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, p2, p3, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static safeMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0x28

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    return-object p0

    .line 14
    :cond_1
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    .line 18
    :goto_0
    if-ge v3, v0, :cond_4

    .line 19
    .line 20
    const/16 v5, 0x320

    .line 21
    .line 22
    if-ge v3, v5, :cond_4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v5

    .line 27
    .line 28
    const/16 v6, 0xa

    .line 29
    .line 30
    if-eq v5, v6, :cond_2

    .line 31
    .line 32
    const/16 v6, 0xd

    .line 33
    .line 34
    if-ne v5, v6, :cond_3

    .line 35
    .line 36
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    if-lt v4, v1, :cond_3

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-ge v3, v0, :cond_5

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    :cond_5
    return-object p0
.end method


# virtual methods
.method public isExpandable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0f36

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

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
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a017b

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->avatarBadge:Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a09f9

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0291

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a02bf

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/widget/ChatStickerView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a02c5

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->unread:Landroid/view/View;

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0a0b8a

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->progress:Landroid/view/View;

    .line 88
    .line 89
    .line 90
    const v0, 0x7f0a02b7

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a0681

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    check-cast v0, Landroid/widget/TextView;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->tvHostLabel:Landroid/widget/TextView;

    .line 108
    .line 109
    .line 110
    const v0, 0x7f0a09fe

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Lcom/narvii/widget/ReversibleLinearLayout;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a098b

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    check-cast v0, Lcom/narvii/widget/EmojioneView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    .line 130
    .line 131
    .line 132
    const v0, 0x7f0a0de5

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    check-cast v0, Landroid/widget/LinearLayout;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l1:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    .line 143
    const v0, 0x7f0a0de6

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    check-cast v0, Lcom/narvii/widget/ReversibleLinearLayout;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l2:Lcom/narvii/widget/ReversibleLinearLayout;

    .line 152
    return-void
.end method

.method public setMentionedUserClickedListener(Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem;->mentionedUserClickedListener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

    return-void
.end method

.method public setMessage(Lcom/narvii/model/ChatMessage;ZZLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZZLjava/lang/String;)V

    return-void
.end method

.method public setMessage(Lcom/narvii/model/ChatMessage;ZZZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v7, v3}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v4, :cond_0

    move-object v6, v3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v6, v7, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    :goto_0
    invoke-virtual {v5, v6}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->avatarBadge:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 5
    iget-object v6, v7, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v9, v0, Lcom/narvii/chat/ChatMessageItem;->ranking:Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {v9, v6}, Lcom/narvii/util/ranking/RankingService;->getInfluencerOrRankingBadge(Lcom/narvii/model/User;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v3

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v9, 0x0

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_4

    .line 7
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->needSubTransparentPlaceholder()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_4

    .line 9
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->needVideoPlaceholder()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v9

    :goto_4
    iget-object v6, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 11
    invoke-virtual {v6, v1, v5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setBubbleStyle(ZI)V

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 12
    invoke-virtual {v5, v2}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setThreadBubble(Lcom/narvii/model/ChatBubble;)V

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-object v6, v0, Lcom/narvii/chat/ChatMessageItem;->configService:Lcom/narvii/config/ConfigService;

    .line 13
    invoke-virtual {v6}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCommunityId(I)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatMessageItem;->setReverse(Z)V

    if-eqz v1, :cond_8

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 15
    iget-object v6, v7, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    const v6, 0x7f120264

    .line 16
    invoke-virtual {v5, v6}, Lcom/narvii/widget/NicknameView;->setText(I)V

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 17
    invoke-virtual {v5, v3, v9}, Lcom/narvii/widget/NicknameView;->setRole1(Ljava/lang/String;I)V

    goto :goto_5

    :cond_8
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 18
    iget-object v6, v7, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    :goto_5
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->tvHostLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    if-eqz v5, :cond_a

    .line 19
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v10

    goto :goto_6

    :cond_9
    move v6, v9

    :goto_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->tvHostLabel:Landroid/widget/TextView;

    move-object/from16 v6, p6

    .line 20
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const/4 v11, 0x2

    const/16 v5, 0x21

    if-nez p4, :cond_c

    if-eqz v4, :cond_c

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x646465

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v9, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->accountService:Lcom/narvii/account/AccountService;

    .line 24
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120233

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "  "

    .line 26
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 27
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 28
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xdf6725

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 29
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v4, v1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 30
    invoke-virtual {v1, v2, v7}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_14

    :cond_c
    if-eqz p3, :cond_d

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xd0d0e

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v9, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 34
    invoke-virtual {v1, v2, v7}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_14

    .line 35
    :cond_d
    iget v4, v7, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_10

    .line 36
    iget-object v1, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const-string v2, "ndcsticker://e/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    .line 37
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 38
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v1, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    .line 40
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_e
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 41
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 42
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_7

    .line 44
    :cond_f
    iget-object v3, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    :goto_7
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 45
    iget-object v2, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/widget/ChatStickerView;->setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_14

    .line 46
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isMediaMessage()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 47
    iget v1, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v1, v8, :cond_11

    move v1, v8

    goto :goto_8

    :cond_11
    move v1, v9

    .line 48
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 49
    invoke-virtual {v1, v7}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentVideo(Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_14

    :cond_12
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    move-result v4

    iget-object v5, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    goto/16 :goto_14

    .line 51
    :cond_13
    iget v3, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v3, v11, :cond_16

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->unread:Landroid/view/View;

    if-eqz v1, :cond_15

    .line 52
    iget v1, v7, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_15

    iget-object v1, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "messageRead"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/MessageReadManager;

    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->unread:Landroid/view/View;

    .line 54
    invoke-virtual {v1, v7}, Lcom/narvii/chat/MessageReadManager;->isMessageRead(Lcom/narvii/model/ChatMessage;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v10

    goto :goto_9

    :cond_14
    move v1, v9

    :goto_9
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "mediaPlayer"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/MediaPlayerManager;

    .line 56
    iget-object v2, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 57
    invoke-virtual {v2, v7, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setVoiceNote(Lcom/narvii/model/ChatMessage;Lcom/narvii/media/MediaStatus;)V

    goto/16 :goto_14

    .line 58
    :cond_16
    iget-object v3, v7, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 59
    invoke-virtual {v3, v7}, Lcom/narvii/chat/util/ChatHelper;->getMentionedTextRange(Lcom/narvii/model/ChatMessage;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 60
    invoke-virtual {v4, v7}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    const-string/jumbo v6, "\u200e\u200f"

    const-string v12, ""

    .line 61
    invoke-virtual {v4, v6, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "\u202c\u202d"

    .line 62
    invoke-virtual {v4, v6, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_17
    invoke-static {v4}, Lcom/narvii/chat/ChatMessageItem;->safeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eq v6, v4, :cond_18

    move v4, v8

    goto :goto_a

    :cond_18
    move v4, v9

    :goto_a
    iput-boolean v4, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    iget-object v4, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 64
    invoke-static {v1, v7, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->getChatMessageBubbleId(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_19

    const v1, -0x4c000001

    goto :goto_b

    :cond_19
    const v1, -0xbaa97e

    :goto_b
    invoke-virtual {v4, v2, v1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleLinkColor(Ljava/lang/String;I)I

    move-result v1

    .line 65
    new-instance v2, Lcom/narvii/util/text/NVText;

    invoke-direct {v2, v6, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;I)V

    iput-boolean v9, v2, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    if-eqz v3, :cond_1a

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    move v4, v8

    goto :goto_c

    :cond_1a
    move v4, v9

    :goto_c
    if-eqz v4, :cond_1c

    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 68
    iget v13, v12, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 69
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    iget v15, v12, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-lt v13, v14, :cond_1b

    goto :goto_d

    .line 70
    :cond_1b
    new-instance v15, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;

    iget-object v12, v12, Lcom/narvii/chat/input/MentionedEditText$Range;->id:Ljava/lang/String;

    iget-object v9, v0, Lcom/narvii/chat/ChatMessageItem;->mentionedUserClickedListener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

    invoke-direct {v15, v12, v1, v9}, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;-><init>(Ljava/lang/String;ILcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V

    invoke-virtual {v2, v15, v13, v14, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v9, 0x0

    goto :goto_d

    .line 71
    :cond_1c
    sget-object v3, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    invoke-virtual {v2, v3}, Lcom/narvii/util/text/NVText;->markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    move-result v3

    if-gtz v3, :cond_20

    if-eqz v4, :cond_1d

    goto :goto_10

    :cond_1d
    iget-boolean v2, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    if-eqz v2, :cond_1e

    .line 72
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {v0, v2, v1, v7}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/text/SpannableStringBuilder;ILcom/narvii/model/ChatMessage;)V

    goto :goto_e

    :cond_1e
    move-object v2, v6

    :goto_e
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-boolean v3, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    .line 74
    iget-object v4, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v5, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v5, v8, :cond_1f

    move v5, v8

    goto :goto_f

    :cond_1f
    const/4 v5, 0x0

    :goto_f
    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    goto/16 :goto_14

    :cond_20
    :goto_10
    iget-boolean v3, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    if-eqz v3, :cond_21

    .line 75
    invoke-direct {v0, v2, v1, v7}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/text/SpannableStringBuilder;ILcom/narvii/model/ChatMessage;)V

    :cond_21
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    const/4 v3, 0x1

    .line 76
    iget-object v4, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v5, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v5, v8, :cond_22

    move v5, v8

    goto :goto_11

    :cond_22
    const/4 v5, 0x0

    :goto_11
    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    goto :goto_14

    :cond_23
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 77
    invoke-virtual {v2, v7}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->getCallMessageType()I

    move-result v3

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isCancelMessage()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 81
    invoke-virtual {v2, v7, v3, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    goto :goto_14

    .line 82
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isDeclineMessage()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 84
    invoke-virtual {v2, v7, v3, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    goto :goto_14

    .line 85
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isTimeOutMessage()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_26

    const v1, 0x7f1201d5

    goto :goto_12

    :cond_26
    const v1, 0x7f120cab

    :goto_12
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 87
    invoke-virtual {v2, v7, v3, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    goto :goto_14

    :cond_27
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    const/4 v3, 0x0

    .line 88
    iget-object v4, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v5, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v5, v8, :cond_28

    move v5, v8

    goto :goto_13

    :cond_28
    const/4 v5, 0x0

    :goto_13
    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    :goto_14
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->progress:Landroid/view/View;

    .line 89
    iget v2, v7, Lcom/narvii/model/ChatMessage;->_status:I

    if-ne v2, v8, :cond_29

    const/4 v2, 0x0

    goto :goto_15

    :cond_29
    move v2, v10

    :goto_15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    .line 90
    iget v2, v7, Lcom/narvii/model/ChatMessage;->_status:I

    if-ne v2, v11, :cond_2a

    const/4 v9, 0x0

    goto :goto_16

    :cond_2a
    move v9, v10

    :goto_16
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMessage(Lcom/narvii/model/ChatMessage;ZZZLjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    return-void
.end method

.method public setOnSeeAllClickedListener(Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem;->seeAllClickedListener:Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;

    return-void
.end method

.method public setReverse(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l1:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    .line 8
    const v1, 0x800003

    .line 9
    .line 10
    .line 11
    const v2, 0x800005

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l2:Lcom/narvii/widget/ReversibleLinearLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    move v1, v2

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setReverse(Z)V

    .line 47
    :cond_3
    return-void
.end method

.method public setShowNickname(Z)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/ChatMessageItem;->hideNickname:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    xor-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/chat/ChatMessageItem;->hideNickname:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    move v2, v1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const/16 v2, 0x8

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    .line 34
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iput v2, p0, Lcom/narvii/chat/ChatMessageItem;->avatarMargin:I

    .line 39
    .line 40
    :cond_2
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget v1, p0, Lcom/narvii/chat/ChatMessageItem;->avatarMargin:I

    .line 43
    .line 44
    :cond_3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 48
    :cond_4
    return-void
.end method

.method public setbubbleColor(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getChatBubbleView()Lcom/narvii/chat/ChatBubbleView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBubbleView;->getBubbleDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v1, v0, Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/chat/BubbleDrawable;->setColor(I)V

    .line 22
    :cond_0
    return-void
.end method
