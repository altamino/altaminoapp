.class public Lcom/narvii/chat/ChatMessageItem;
.super Lcom/narvii/widget/ReversibleLinearLayout;
.source "ChatMessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;,
        Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;,
        Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;
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

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ReversibleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->seeAllClickedListener:Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;

    .line 88
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    .line 89
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "ranking"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->ranking:Lcom/narvii/util/ranking/RankingService;

    .line 90
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "config"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->configService:Lcom/narvii/config/ConfigService;

    .line 91
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "bubble"

    .line 92
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p2, p0, Lcom/narvii/chat/ChatMessageItem;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    const-string p2, "account"

    .line 93
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static appendSeeAll(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V
    .locals 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0f0f62

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 368
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

    .line 369
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

    .line 370
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

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0f62

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 352
    new-instance v1, Lcom/narvii/chat/ChatMessageItem$1;

    invoke-direct {v1, p0, p3}, Lcom/narvii/chat/ChatMessageItem$1;-><init>(Lcom/narvii/chat/ChatMessageItem;Lcom/narvii/model/ChatMessage;)V

    .line 359
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 352
    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 360
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

    .line 361
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

    .line 362
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

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 328
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    const/16 v5, 0x320

    if-ge v3, v5, :cond_4

    .line 334
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 343
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public isExpandable()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090c10

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f0900e4

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0900ec

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->avatarBadge:Landroid/widget/ImageView;

    const v0, 0x7f090764

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f0901da

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    const v0, 0x7f090207

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ChatStickerView;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    const v0, 0x7f09020d

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->unread:Landroid/view/View;

    const v0, 0x7f0908cb

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->progress:Landroid/view/View;

    const v0, 0x7f090200

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    const v0, 0x7f090525

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->tvHostLabel:Landroid/widget/TextView;

    const v0, 0x7f090769

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ReversibleLinearLayout;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    const v0, 0x7f090722

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EmojioneView;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    const v0, 0x7f090b03

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l1:Landroid/widget/LinearLayout;

    const v0, 0x7f090b04

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ReversibleLinearLayout;

    iput-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l2:Lcom/narvii/widget/ReversibleLinearLayout;

    return-void
.end method

.method public setMentionedUserClickedListener(Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V
    .locals 0

    .line 142
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

    .line 150
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

    .line 158
    invoke-virtual {v7, v3}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    .line 159
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v4, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    iget-object v6, v7, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    :goto_0
    invoke-virtual {v5, v6}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 160
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->avatarBadge:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 161
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

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_4

    .line 168
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->needSubTransparentPlaceholder()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_4

    .line 170
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->needVideoPlaceholder()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v5, 0x0

    .line 173
    :goto_4
    iget-object v6, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v6, v1, v5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setBubbleStyle(ZI)V

    .line 174
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v5, v2}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setThreadBubble(Lcom/narvii/model/ChatBubble;)V

    .line 175
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-object v6, v0, Lcom/narvii/chat/ChatMessageItem;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v6}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCommunityId(I)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatMessageItem;->setReverse(Z)V

    if-eqz v1, :cond_8

    .line 180
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    iget-object v6, v7, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 181
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    const v6, 0x7f0f0221

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 182
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v5, v3, v9}, Lcom/narvii/widget/NicknameView;->setRole1(Ljava/lang/String;I)V

    goto :goto_5

    .line 184
    :cond_8
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    iget-object v6, v7, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 187
    :goto_5
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->tvHostLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    if-eqz v5, :cond_a

    .line 188
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x8

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v5, v0, Lcom/narvii/chat/ChatMessageItem;->tvHostLabel:Landroid/widget/TextView;

    move-object/from16 v6, p6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const/4 v11, 0x2

    const/16 v5, 0x21

    if-nez p4, :cond_c

    if-eqz v4, :cond_c

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x646465

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v9, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 196
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f01e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "  "

    .line 198
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 199
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
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

    .line 201
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

    .line 203
    :cond_b
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v1, v2, v7}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_14

    .line 209
    :cond_c
    iget v4, v7, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_f

    .line 210
    iget-object v1, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const-string v2, "ndcsticker://e/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 211
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 213
    iget-object v1, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 216
    :cond_d
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 217
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_7

    .line 219
    :cond_e
    iget-object v3, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 220
    :goto_7
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    iget-object v2, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    iget v4, v7, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/widget/ChatStickerView;->setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_14

    .line 222
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isMediaMessage()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 223
    iget v1, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v1, v8, :cond_10

    const/4 v1, 0x1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    .line 224
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 225
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v1, v7}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentVideo(Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_14

    .line 227
    :cond_11
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v3

    iget v4, v7, Lcom/narvii/model/ChatMessage;->clientRefId:I

    iget-object v5, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    goto/16 :goto_14

    .line 229
    :cond_12
    iget v3, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v3, v11, :cond_15

    .line 230
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->unread:Landroid/view/View;

    if-eqz v1, :cond_14

    iget v1, v7, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_14

    iget-object v1, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "messageRead"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/MessageReadManager;

    .line 232
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->unread:Landroid/view/View;

    invoke-virtual {v1, v7}, Lcom/narvii/chat/MessageReadManager;->isMessageRead(Lcom/narvii/model/ChatMessage;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x8

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "mediaPlayer"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/MediaPlayerManager;

    .line 235
    iget-object v2, v7, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    move-result-object v1

    .line 236
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v2, v7, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setVoiceNote(Lcom/narvii/model/ChatMessage;Lcom/narvii/media/MediaStatus;)V

    goto/16 :goto_14

    .line 238
    :cond_15
    iget-object v3, v7, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v3, :cond_22

    .line 239
    iget-object v3, v0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v3, v7}, Lcom/narvii/chat/util/ChatHelper;->getMentionedTextRange(Lcom/narvii/model/ChatMessage;)Ljava/util/ArrayList;

    move-result-object v3

    .line 240
    iget-object v4, v0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v4, v7}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    const-string v6, ""

    const-string/jumbo v12, "\u200e\u200f"

    .line 242
    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "\u202c\u202d"

    .line 243
    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    :cond_16
    invoke-static {v4}, Lcom/narvii/chat/ChatMessageItem;->safeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eq v6, v4, :cond_17

    const/4 v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    .line 246
    :goto_a
    iput-boolean v4, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    .line 247
    iget-object v4, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {v1, v7, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->getChatMessageBubbleId(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_18

    const v1, -0x4c000001

    goto :goto_b

    :cond_18
    const v1, -0xbaa97e

    :goto_b
    invoke-virtual {v4, v2, v1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleLinkColor(Ljava/lang/String;I)I

    move-result v1

    .line 248
    new-instance v2, Lcom/narvii/util/text/NVText;

    invoke-direct {v2, v6, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;I)V

    .line 249
    iput-boolean v9, v2, Lcom/narvii/util/text/NVText;->addPaddingForBoldMode:Z

    if-eqz v3, :cond_19

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x1

    goto :goto_c

    :cond_19
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_1b

    .line 252
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 253
    iget v13, v12, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 254
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    iget v15, v12, Lcom/narvii/chat/input/MentionedEditText$Range;->to:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-lt v13, v14, :cond_1a

    goto :goto_d

    .line 258
    :cond_1a
    new-instance v15, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;

    iget-object v12, v12, Lcom/narvii/chat/input/MentionedEditText$Range;->id:Ljava/lang/String;

    iget-object v9, v0, Lcom/narvii/chat/ChatMessageItem;->mentionedUserClickedListener:Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;

    invoke-direct {v15, v12, v1, v9}, Lcom/narvii/chat/ChatMessageItem$MentionClickableSpan;-><init>(Ljava/lang/String;ILcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V

    invoke-virtual {v2, v15, v13, v14, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v9, 0x0

    goto :goto_d

    .line 261
    :cond_1b
    sget-object v3, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    invoke-virtual {v2, v3}, Lcom/narvii/util/text/NVText;->markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    move-result v3

    if-gtz v3, :cond_1f

    if-eqz v4, :cond_1c

    goto :goto_10

    .line 270
    :cond_1c
    iget-boolean v2, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    if-eqz v2, :cond_1d

    .line 271
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 272
    invoke-direct {v0, v2, v1, v7}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/text/SpannableStringBuilder;ILcom/narvii/model/ChatMessage;)V

    goto :goto_e

    :cond_1d
    move-object v2, v6

    .line 275
    :goto_e
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-boolean v3, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    iget-object v4, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v5, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v5, v8, :cond_1e

    const/4 v5, 0x1

    goto :goto_f

    :cond_1e
    const/4 v5, 0x0

    :goto_f
    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    goto/16 :goto_14

    .line 263
    :cond_1f
    :goto_10
    iget-boolean v3, v0, Lcom/narvii/chat/ChatMessageItem;->isExpandable:Z

    if-eqz v3, :cond_20

    .line 264
    invoke-direct {v0, v2, v1, v7}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/text/SpannableStringBuilder;ILcom/narvii/model/ChatMessage;)V

    .line 266
    :cond_20
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    const/4 v3, 0x1

    iget-object v4, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v5, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v5, v8, :cond_21

    const/4 v5, 0x1

    goto :goto_11

    :cond_21
    const/4 v5, 0x0

    :goto_11
    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    goto :goto_14

    .line 279
    :cond_22
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->helper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v2, v7}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->getCallMessageType()I

    move-result v3

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isCancelMessage()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0186

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v2, v7, v3, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    goto :goto_14

    .line 284
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isDeclineMessage()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0187

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v2, v7, v3, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    goto :goto_14

    .line 287
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/ChatMessage;->isTimeOutMessage()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_25

    const v1, 0x7f0f0189

    goto :goto_12

    :cond_25
    const v1, 0x7f0f0ba7

    :goto_12
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v2, v7, v3, v1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    goto :goto_14

    .line 291
    :cond_26
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v5, v7, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v5, v8, :cond_27

    const/4 v5, 0x1

    goto :goto_13

    :cond_27
    const/4 v5, 0x0

    :goto_13
    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    .line 295
    :goto_14
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->progress:Landroid/view/View;

    iget v2, v7, Lcom/narvii/model/ChatMessage;->_status:I

    if-ne v2, v8, :cond_28

    const/4 v2, 0x0

    goto :goto_15

    :cond_28
    const/16 v2, 0x8

    :goto_15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v1, v0, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    iget v2, v7, Lcom/narvii/model/ChatMessage;->_status:I

    if-ne v2, v11, :cond_29

    const/4 v10, 0x0

    :cond_29
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

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

    .line 154
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    return-void
.end method

.method public setOnSeeAllClickedListener(Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItem;->seeAllClickedListener:Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;

    return-void
.end method

.method public setReverse(Z)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    .line 120
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l1:Landroid/widget/LinearLayout;

    const v1, 0x800005

    const v2, 0x800003

    if-eqz p1, :cond_0

    const v3, 0x800005

    goto :goto_0

    :cond_0
    const v3, 0x800003

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->l2:Lcom/narvii/widget/ReversibleLinearLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    .line 122
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x800003

    .line 123
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nickname:Lcom/narvii/widget/NicknameView;

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setReverse(Z)V

    :cond_3
    return-void
.end method

.method public setShowNickname(Z)V
    .locals 3

    .line 307
    iget-boolean v0, p0, Lcom/narvii/chat/ChatMessageItem;->hideNickname:Z

    xor-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_4

    xor-int/lit8 v0, p1, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/narvii/chat/ChatMessageItem;->hideNickname:Z

    .line 309
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->nicknameContainer:Lcom/narvii/widget/ReversibleLinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 310
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 313
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_2

    .line 314
    iput v2, p0, Lcom/narvii/chat/ChatMessageItem;->avatarMargin:I

    :cond_2
    if-eqz p1, :cond_3

    .line 316
    iget v1, p0, Lcom/narvii/chat/ChatMessageItem;->avatarMargin:I

    :cond_3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 317
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method public setbubbleColor(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getChatBubbleView()Lcom/narvii/chat/ChatBubbleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBubbleView;->getBubbleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lcom/narvii/chat/BubbleBitmapDrawable;

    if-eqz v1, :cond_0

    .line 136
    check-cast v0, Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/BubbleDrawable;->setColor(I)V

    :cond_0
    return-void
.end method
