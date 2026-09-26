.class public Lcom/narvii/comment/list/CommentItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field static likeColorNormal:I

.field static likeColorVote:I

.field static voteColorDark:I

.field static voteColorGray:I

.field static voteColorGreen:I

.field static voteColorRed:I


# instance fields
.field backgroundColor:I

.field comment:Lcom/narvii/model/Comment;

.field commentReply:Landroid/widget/TextView;

.field content:Lcom/narvii/widget/ExpandTextView;

.field darkTheme:Z

.field datetime:Landroid/widget/TextView;

.field emojioneView:Lcom/narvii/widget/EmojioneView;

.field formatter:Lcom/narvii/util/DateTimeFormatter;

.field gd:Landroid/view/GestureDetector;

.field hasVotes:Z

.field images:Lcom/narvii/comment/list/CommentImagesLayout;

.field nickname:Lcom/narvii/widget/NicknameView;

.field nicknameMarginRight:I

.field stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field public voteCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/comment/list/CommentItem;",
            ">;"
        }
    .end annotation
.end field

.field voteCount:Landroid/widget/TextView;

.field voteDisabled:Z

.field voteHeart:Landroid/widget/TextView;

.field voteProgress:Lcom/narvii/widget/SpinningView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/comment/list/CommentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    iput p2, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    .line 3
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/comment/list/CommentItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    sget p2, Lcom/narvii/comment/list/CommentItem;->voteColorDark:I

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600d6

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->likeColorNormal:I

    const v0, 0x7f060126

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->likeColorVote:I

    const v0, 0x7f0604ac

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->voteColorDark:I

    const v0, 0x7f0604ad

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->voteColorGray:I

    const v0, 0x7f0604ae

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->voteColorGreen:I

    const v0, 0x7f0604af

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sput p2, Lcom/narvii/comment/list/CommentItem;->voteColorRed:I

    .line 11
    :cond_0
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/narvii/comment/list/CommentItem$1;

    invoke-direct {v0, p0}, Lcom/narvii/comment/list/CommentItem$1;-><init>(Lcom/narvii/comment/list/CommentItem;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/comment/list/CommentItem;->gd:Landroid/view/GestureDetector;

    return-void
.end method

.method private updateViews()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    .line 13
    const v2, 0x7f060493

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const v2, 0x7f060491

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 36
    const/4 v2, -0x1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    move v1, v2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_1
    const v1, -0xaaaaab

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->datetime:Landroid/widget/TextView;

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 51
    .line 52
    .line 53
    const v3, -0x7f000001

    .line 54
    .line 55
    .line 56
    const v4, -0x555556

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    move v1, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v1, v4

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v3, v4

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {v0, v3}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 80
    .line 81
    iget v3, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    .line 82
    const/4 v5, 0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v3, v5}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    .line 88
    .line 89
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    move v1, v2

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    move v1, v4

    .line 95
    .line 96
    .line 97
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->commentReply:Landroid/widget/TextView;

    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    move v2, v4

    .line 106
    .line 107
    .line 108
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->images:Lcom/narvii/comment/list/CommentImagesLayout;

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentImagesLayout;->setDarkTheme(Z)V

    .line 118
    :cond_6
    return-void
.end method


# virtual methods
.method public disableVote()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0c44

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 11
    return-void
.end method

.method public getComment()Lcom/narvii/model/Comment;
    .locals 1

    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->comment:Lcom/narvii/model/Comment;

    return-object v0
.end method

.method public hasVotes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

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
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a09f9

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0408

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
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->datetime:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a1000

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0ffe

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
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a035f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->commentReply:Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    const v2, 0x7f120ff7

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0a1007

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 95
    .line 96
    .line 97
    const v0, 0x7f0a039d

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    check-cast v0, Lcom/narvii/widget/ExpandTextView;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0a035b

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    check-cast v0, Lcom/narvii/comment/list/CommentImagesLayout;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->images:Lcom/narvii/comment/list/CommentImagesLayout;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 125
    .line 126
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    .line 128
    iput v0, p0, Lcom/narvii/comment/list/CommentItem;->nicknameMarginRight:I

    .line 129
    .line 130
    .line 131
    const v0, 0x7f0a0dac

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 138
    .line 139
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 140
    .line 141
    .line 142
    const v0, 0x7f0a04dd

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    check-cast v0, Lcom/narvii/widget/EmojioneView;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentItem;->updateViews()V

    .line 154
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->gd:Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public setComment(Lcom/narvii/model/Comment;Lcom/narvii/util/text/OnTagClickListener;)V
    .locals 6

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentItem;->comment:Lcom/narvii/model/Comment;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/Comment;->type:I

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->datetime:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/comment/list/CommentItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 36
    .line 37
    iget-object v4, p1, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    iget v4, p1, Lcom/narvii/model/Comment;->votedValue:I

    .line 53
    .line 54
    if-lez v4, :cond_1

    .line 55
    .line 56
    .line 57
    const v4, 0x7f1205db

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_1
    const v4, 0x7f1205dc

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 71
    .line 72
    iget v3, p1, Lcom/narvii/model/Comment;->votedValue:I

    .line 73
    .line 74
    if-lez v3, :cond_2

    .line 75
    .line 76
    sget v3, Lcom/narvii/comment/list/CommentItem;->likeColorVote:I

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_2
    sget v3, Lcom/narvii/comment/list/CommentItem;->likeColorNormal:I

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    .line 85
    .line 86
    iget v3, p1, Lcom/narvii/model/Comment;->votesSum:I

    .line 87
    .line 88
    const-string v4, ""

    .line 89
    .line 90
    if-lez v3, :cond_3

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    iget v5, p1, Lcom/narvii/model/Comment;->votesSum:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    new-instance v1, Lcom/narvii/util/text/NVText;

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    .line 121
    const v4, 0x7f1202e9

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    goto :goto_3

    .line 127
    .line 128
    :cond_4
    iget-object v3, p1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    :goto_3
    invoke-direct {v1, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    iget-boolean v3, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v3}, Lcom/narvii/util/text/NVText;->setDarkTheme(Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p2}, Lcom/narvii/util/text/NVText;->markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->isLegal()Z

    .line 145
    move-result v3

    .line 146
    .line 147
    if-nez v3, :cond_5

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    .line 154
    const v4, 0x7f121219

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    move-result-object v3

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    move-object v3, v1

    .line 161
    .line 162
    .line 163
    :goto_4
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->isLegal()Z

    .line 169
    move-result v3

    .line 170
    .line 171
    const/16 v4, 0x8

    .line 172
    .line 173
    if-eqz v3, :cond_7

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    move-result v1

    .line 178
    .line 179
    if-nez v1, :cond_6

    .line 180
    goto :goto_5

    .line 181
    :cond_6
    move v1, v4

    .line 182
    goto :goto_6

    .line 183
    :cond_7
    :goto_5
    move v1, v2

    .line 184
    .line 185
    .line 186
    :goto_6
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->images:Lcom/narvii/comment/list/CommentImagesLayout;

    .line 189
    .line 190
    iget-object v1, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImages(Ljava/util/List;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 197
    move-result-object p2

    .line 198
    .line 199
    if-eqz p2, :cond_a

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->isLegal()Z

    .line 203
    move-result v1

    .line 204
    .line 205
    if-eqz v1, :cond_a

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    .line 209
    move-result v1

    .line 210
    .line 211
    if-eqz v1, :cond_9

    .line 212
    .line 213
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    iget-object p2, p2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 224
    .line 225
    if-nez p2, :cond_8

    .line 226
    const/4 p2, 0x0

    .line 227
    goto :goto_7

    .line 228
    .line 229
    :cond_8
    const/16 v1, 0xf

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 233
    move-result-object p2

    .line 234
    .line 235
    :goto_7
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 236
    .line 237
    new-instance v3, Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    .line 241
    move-result-object p2

    .line 242
    .line 243
    .line 244
    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v3}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 248
    goto :goto_8

    .line 249
    .line 250
    :cond_9
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 264
    goto :goto_8

    .line 265
    .line 266
    :cond_a
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    :goto_8
    iget-boolean p2, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    .line 277
    .line 278
    if-eqz p2, :cond_12

    .line 279
    .line 280
    .line 281
    const p2, 0x7f0a1008

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    move-result-object p2

    .line 286
    .line 287
    check-cast p2, Landroid/widget/TextView;

    .line 288
    .line 289
    iget v1, p1, Lcom/narvii/model/Comment;->votedValue:I

    .line 290
    const/4 v3, -0x1

    .line 291
    .line 292
    if-lez v1, :cond_b

    .line 293
    .line 294
    sget v1, Lcom/narvii/comment/list/CommentItem;->voteColorGreen:I

    .line 295
    goto :goto_9

    .line 296
    .line 297
    :cond_b
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 298
    .line 299
    if-eqz v1, :cond_c

    .line 300
    move v1, v3

    .line 301
    goto :goto_9

    .line 302
    .line 303
    :cond_c
    sget v1, Lcom/narvii/comment/list/CommentItem;->voteColorGray:I

    .line 304
    .line 305
    .line 306
    :goto_9
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    .line 308
    .line 309
    const p2, 0x7f0a0fff

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    move-result-object p2

    .line 314
    .line 315
    check-cast p2, Landroid/widget/TextView;

    .line 316
    .line 317
    iget v1, p1, Lcom/narvii/model/Comment;->votedValue:I

    .line 318
    .line 319
    if-gez v1, :cond_d

    .line 320
    .line 321
    sget v1, Lcom/narvii/comment/list/CommentItem;->voteColorRed:I

    .line 322
    goto :goto_a

    .line 323
    .line 324
    :cond_d
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 325
    .line 326
    if-eqz v1, :cond_e

    .line 327
    move v1, v3

    .line 328
    goto :goto_a

    .line 329
    .line 330
    :cond_e
    sget v1, Lcom/narvii/comment/list/CommentItem;->voteColorGray:I

    .line 331
    .line 332
    .line 333
    :goto_a
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    .line 335
    .line 336
    const p2, 0x7f0a0ffd

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    move-result-object p2

    .line 341
    .line 342
    check-cast p2, Landroid/widget/TextView;

    .line 343
    .line 344
    iget v1, p1, Lcom/narvii/model/Comment;->votesSum:I

    .line 345
    .line 346
    if-gez v1, :cond_f

    .line 347
    .line 348
    sget v1, Lcom/narvii/comment/list/CommentItem;->voteColorRed:I

    .line 349
    goto :goto_b

    .line 350
    .line 351
    :cond_f
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 352
    .line 353
    if-eqz v1, :cond_10

    .line 354
    move v1, v3

    .line 355
    goto :goto_b

    .line 356
    .line 357
    :cond_10
    sget v1, Lcom/narvii/comment/list/CommentItem;->voteColorDark:I

    .line 358
    .line 359
    .line 360
    :goto_b
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    .line 362
    iget v1, p1, Lcom/narvii/model/Comment;->votesSum:I

    .line 363
    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 366
    move-result-object v1

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    .line 371
    .line 372
    const p2, 0x7f0a1006

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    move-result-object p2

    .line 377
    .line 378
    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 379
    .line 380
    if-eqz p2, :cond_12

    .line 381
    .line 382
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 383
    .line 384
    if-eqz v1, :cond_11

    .line 385
    goto :goto_c

    .line 386
    .line 387
    .line 388
    :cond_11
    const v3, -0x777778

    .line 389
    .line 390
    .line 391
    :goto_c
    invoke-virtual {p2, v3}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 392
    .line 393
    :cond_12
    iget p1, p1, Lcom/narvii/model/Comment;->votedValue:I

    .line 394
    .line 395
    const/high16 p2, 0x3f800000    # 1.0f

    .line 396
    .line 397
    if-gtz p1, :cond_15

    .line 398
    .line 399
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 400
    .line 401
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 402
    .line 403
    if-eqz v1, :cond_13

    .line 404
    .line 405
    .line 406
    const v1, -0x77000001

    .line 407
    goto :goto_d

    .line 408
    .line 409
    .line 410
    :cond_13
    const v1, -0x555556

    .line 411
    .line 412
    .line 413
    :goto_d
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    .line 415
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 416
    .line 417
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 418
    .line 419
    if-eqz v1, :cond_14

    .line 420
    .line 421
    const/high16 p2, 0x3f000000    # 0.5f

    .line 422
    .line 423
    .line 424
    :cond_14
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 425
    goto :goto_e

    .line 426
    .line 427
    :cond_15
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 431
    .line 432
    :goto_e
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 433
    .line 434
    if-eqz v0, :cond_16

    .line 435
    .line 436
    iget-boolean p2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 437
    .line 438
    if-nez p2, :cond_16

    .line 439
    .line 440
    .line 441
    const v2, -0x111112

    .line 442
    .line 443
    .line 444
    :cond_16
    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentItem;->updateViews()V

    .line 23
    return-void
.end method

.method public setExpand(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ExpandTextView;->setExpand(Z)V

    .line 6
    return-void
.end method

.method public setHasVotes(Z)V
    .locals 5

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/comment/list/CommentItem;->nicknameMarginRight:I

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    move v2, v3

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    .line 28
    const v4, 0x7f070108

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v2

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_1
    const v4, 0x7f070106

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    add-int/2addr v1, v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eq v2, v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    .line 55
    .line 56
    if-nez v0, :cond_7

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a0363

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    move v2, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v2, v1

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    move v2, v1

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    move v2, v3

    .line 81
    .line 82
    .line 83
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    move v2, v1

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    move v2, v3

    .line 91
    .line 92
    .line 93
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    move v3, v1

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_7
    return-void
.end method

.method public setIsMine(Z)V
    .locals 0

    return-void
.end method

.method public setIsOwner(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v1, 0x7f1202eb

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    const v1, -0xcb6d25

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public setVoting(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a0ffd

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    move v3, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a1006

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v1, v2

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    goto :goto_4

    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    move v3, v2

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move v3, v1

    .line 51
    .line 52
    .line 53
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    goto :goto_3

    .line 59
    :cond_5
    move v1, v2

    .line 60
    .line 61
    .line 62
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :goto_4
    return-void
.end method
