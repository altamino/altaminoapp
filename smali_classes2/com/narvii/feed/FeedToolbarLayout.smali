.class public Lcom/narvii/feed/FeedToolbarLayout;
.super Landroid/widget/LinearLayout;
.source "FeedToolbarLayout.java"


# static fields
.field private static likeStr:Ljava/lang/String;


# instance fields
.field commentCount:Landroid/widget/TextView;

.field commentIcon:Landroid/widget/ImageView;

.field private darkTheme:Ljava/lang/Boolean;

.field feed:Lcom/narvii/model/Feed;

.field shareIcon:Landroid/widget/ImageView;

.field voteCount:Landroid/widget/TextView;

.field voteIcon:Lcom/narvii/widget/VoteIcon;

.field voteProgress:Lcom/narvii/widget/SpinningView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object p2, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    if-nez p2, :cond_0

    const p2, 0x7f0f0ae0

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090459

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VoteIcon;

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    const v0, 0x7f09045a

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    const v0, 0x7f090458

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    const v0, 0x7f090454

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentIcon:Landroid/widget/ImageView;

    const v0, 0x7f090453

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    const v0, 0x7f090456

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->shareIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->darkTheme:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->darkTheme:Ljava/lang/Boolean;

    .line 65
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600e4

    const v3, 0x7f0600e3

    if-eqz p1, :cond_1

    const v4, 0x7f0600e4

    goto :goto_0

    :cond_1
    const v4, 0x7f0600e3

    :goto_0
    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v2, 0x7f0600e3

    :goto_1
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600e1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    const/4 v2, -0x1

    if-eqz p1, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {v1, v3}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 69
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentIcon:Landroid/widget/ImageView;

    instance-of v3, v1, Lcom/narvii/widget/TintButton;

    if-eqz v3, :cond_5

    .line 70
    check-cast v1, Lcom/narvii/widget/TintButton;

    if-eqz p1, :cond_4

    const/4 v3, -0x1

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    invoke-virtual {v1, v3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 72
    :cond_5
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->shareIcon:Landroid/widget/ImageView;

    instance-of v3, v1, Lcom/narvii/widget/TintButton;

    if-eqz v3, :cond_7

    .line 73
    check-cast v1, Lcom/narvii/widget/TintButton;

    if-eqz p1, :cond_6

    const/4 v3, -0x1

    goto :goto_4

    :cond_6
    move v3, v0

    :goto_4
    invoke-virtual {v1, v3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    if-eqz p1, :cond_8

    const/4 v0, -0x1

    :cond_8
    invoke-virtual {v1, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 79
    iput-object p1, p0, Lcom/narvii/feed/FeedToolbarLayout;->feed:Lcom/narvii/model/Feed;

    .line 80
    instance-of v0, p1, Lcom/narvii/model/Blog;

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 82
    check-cast p1, Lcom/narvii/model/Blog;

    .line 83
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 85
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 88
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_5

    .line 90
    check-cast p1, Lcom/narvii/model/Item;

    .line 91
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 93
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public setProgress(Z)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
