.class public Lcom/narvii/feed/FeedToolbarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    if-nez p2, :cond_0

    const p2, 0x7f120b8c

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0590

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/VoteIcon;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0591

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a058f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a058b

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentIcon:Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a058a

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
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a058d

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->shareIcon:Landroid/widget/ImageView;

    .line 70
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->darkTheme:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->darkTheme:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    const v2, 0x7f060127

    .line 27
    .line 28
    .line 29
    const v3, 0x7f060128

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    move v4, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v4, v2

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    move v2, v3

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    const v1, 0x7f060125

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 68
    move-result v0

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 71
    const/4 v2, -0x1

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    move v3, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v3, v0

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v1, v3}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentIcon:Landroid/widget/ImageView;

    .line 82
    .line 83
    instance-of v3, v1, Lcom/narvii/widget/TintButton;

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    move v3, v2

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move v3, v0

    .line 93
    .line 94
    .line 95
    :goto_2
    invoke-virtual {v1, v3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 96
    .line 97
    :cond_5
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->shareIcon:Landroid/widget/ImageView;

    .line 98
    .line 99
    instance-of v3, v1, Lcom/narvii/widget/TintButton;

    .line 100
    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    move v3, v2

    .line 107
    goto :goto_3

    .line 108
    :cond_6
    move v3, v0

    .line 109
    .line 110
    .line 111
    :goto_3
    invoke-virtual {v1, v3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 112
    .line 113
    :cond_7
    iget-object v1, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 114
    .line 115
    if-eqz p1, :cond_8

    .line 116
    move v0, v2

    .line 117
    .line 118
    .line 119
    :cond_8
    invoke-virtual {v1, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 120
    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedToolbarLayout;->feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/Blog;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    .line 43
    move-result v2

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    sget-object v2, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    goto :goto_4

    .line 81
    .line 82
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    check-cast p1, Lcom/narvii/model/Item;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 105
    move-result v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 109
    move-result v2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteCount:Landroid/widget/TextView;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 118
    move-result v2

    .line 119
    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    sget-object v2, Lcom/narvii/feed/FeedToolbarLayout;->likeStr:Ljava/lang/String;

    .line 123
    goto :goto_2

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 127
    move-result v2

    .line 128
    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->commentCount:Landroid/widget/TextView;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 140
    move-result v2

    .line 141
    .line 142
    if-nez v2, :cond_4

    .line 143
    goto :goto_3

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 147
    move-result p1

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_5
    :goto_4
    return-void
.end method

.method public setProgress(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/feed/FeedToolbarLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    move v1, v2

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    return-void
.end method
