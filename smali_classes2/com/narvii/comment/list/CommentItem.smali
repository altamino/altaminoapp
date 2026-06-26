.class public Lcom/narvii/comment/list/CommentItem;
.super Landroid/widget/RelativeLayout;
.source "CommentItem.java"


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

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/narvii/comment/list/CommentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    .line 57
    iput p2, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    .line 68
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/comment/list/CommentItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 70
    sget p2, Lcom/narvii/comment/list/CommentItem;->voteColorDark:I

    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b6

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->likeColorNormal:I

    const v0, 0x7f0600e2

    .line 73
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->likeColorVote:I

    const v0, 0x7f06021e

    .line 74
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->voteColorDark:I

    const v0, 0x7f06021f

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->voteColorGray:I

    const v0, 0x7f060220

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/narvii/comment/list/CommentItem;->voteColorGreen:I

    const v0, 0x7f060221

    .line 77
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sput p2, Lcom/narvii/comment/list/CommentItem;->voteColorRed:I

    .line 80
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

    .line 108
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v2, :cond_0

    const v2, 0x7f060209

    goto :goto_0

    :cond_0
    const v2, 0x7f060207

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 110
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const v1, -0xaaaaab

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->datetime:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    const v3, -0x7f000001

    const v4, -0x555556

    if-eqz v1, :cond_2

    const v1, -0x7f000001

    goto :goto_2

    :cond_2
    const v1, -0x555556

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const v3, -0x555556

    :goto_3
    invoke-virtual {v0, v3}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 113
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    iget v3, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v5}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    .line 114
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    goto :goto_4

    :cond_4
    const v1, -0x555556

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->commentReply:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const v2, -0x555556

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->images:Lcom/narvii/comment/list/CommentImagesLayout;

    if-eqz v0, :cond_6

    .line 117
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    invoke-virtual {v0, v1}, Lcom/narvii/comment/list/CommentImagesLayout;->setDarkTheme(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public disableVote()V
    .locals 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    const v0, 0x7f090981

    const/4 v1, 0x0

    .line 181
    invoke-static {p0, v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    return-void
.end method

.method public getComment()Lcom/narvii/model/Comment;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->comment:Lcom/narvii/model/Comment;

    return-object v0
.end method

.method public hasVotes()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 124
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090c10

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090764

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f09032e

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->datetime:Landroid/widget/TextView;

    const v0, 0x7f090cda

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    const v0, 0x7f090cd8

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    const v0, 0x7f090297

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->commentReply:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->commentReply:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0ede

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090ce1

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    const v0, 0x7f0902d0

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ExpandTextView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    const v0, 0x7f090293

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/comment/list/CommentImagesLayout;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->images:Lcom/narvii/comment/list/CommentImagesLayout;

    .line 137
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/narvii/comment/list/CommentItem;->nicknameMarginRight:I

    const v0, 0x7f090ab2

    .line 140
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    const v0, 0x7f0903de

    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EmojioneView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    .line 142
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentItem;->updateViews()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setComment(Lcom/narvii/model/Comment;Lcom/narvii/util/text/OnTagClickListener;)V
    .locals 6

    .line 189
    iput-object p1, p0, Lcom/narvii/comment/list/CommentItem;->comment:Lcom/narvii/model/Comment;

    .line 192
    iget v0, p1, Lcom/narvii/model/Comment;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v3, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    invoke-virtual {v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 194
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    iget-object v3, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    invoke-virtual {v2, v3}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 195
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->datetime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/narvii/comment/list/CommentItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v4, p1, Lcom/narvii/model/Comment;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/narvii/model/Comment;->votedValue:I

    if-lez v4, :cond_1

    const v4, 0x7f0f0530

    goto :goto_1

    :cond_1
    const v4, 0x7f0f0531

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    iget v3, p1, Lcom/narvii/model/Comment;->votedValue:I

    if-lez v3, :cond_2

    sget v3, Lcom/narvii/comment/list/CommentItem;->likeColorVote:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/narvii/comment/list/CommentItem;->likeColorNormal:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    iget v3, p1, Lcom/narvii/model/Comment;->votesSum:I

    const-string v4, ""

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/narvii/model/Comment;->votesSum:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v2, Lcom/narvii/util/text/NVText;

    if-eqz v0, :cond_4

    .line 202
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v3, p1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    :goto_3
    invoke-direct {v2, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    iget-boolean v3, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    invoke-virtual {v2, v3}, Lcom/narvii/util/text/NVText;->setDarkTheme(Z)V

    .line 204
    invoke-virtual {v2, p2}, Lcom/narvii/util/text/NVText;->markSimpleEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 205
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->isLegal()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f110e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v2

    :goto_4
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    invoke-virtual {p1}, Lcom/narvii/model/Comment;->isLegal()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    const/16 v2, 0x8

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->images:Lcom/narvii/comment/list/CommentImagesLayout;

    iget-object v2, p1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    invoke-virtual {p2, v2}, Lcom/narvii/comment/list/CommentImagesLayout;->setImages(Ljava/util/List;)V

    .line 209
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 211
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->isLegal()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 212
    invoke-virtual {p2}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 213
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object p2, p2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    if-nez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_7

    :cond_8
    const/16 v2, 0xf

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 216
    :goto_7
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    new-instance v3, Ljava/lang/String;

    invoke-static {p2}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    goto :goto_8

    .line 218
    :cond_9
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v2, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {v2, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    goto :goto_8

    .line 223
    :cond_a
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->stickerImageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object p2, p0, Lcom/narvii/comment/list/CommentItem;->emojioneView:Lcom/narvii/widget/EmojioneView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :goto_8
    iget-boolean p2, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    if-eqz p2, :cond_12

    const p2, 0x7f090ce3

    .line 229
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 230
    iget v2, p1, Lcom/narvii/model/Comment;->votedValue:I

    const/4 v3, -0x1

    if-lez v2, :cond_b

    sget v2, Lcom/narvii/comment/list/CommentItem;->voteColorGreen:I

    goto :goto_9

    :cond_b
    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v2, :cond_c

    const/4 v2, -0x1

    goto :goto_9

    :cond_c
    sget v2, Lcom/narvii/comment/list/CommentItem;->voteColorGray:I

    :goto_9
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f090cd9

    .line 231
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 232
    iget v2, p1, Lcom/narvii/model/Comment;->votedValue:I

    if-gez v2, :cond_d

    sget v2, Lcom/narvii/comment/list/CommentItem;->voteColorRed:I

    goto :goto_a

    :cond_d
    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v2, :cond_e

    const/4 v2, -0x1

    goto :goto_a

    :cond_e
    sget v2, Lcom/narvii/comment/list/CommentItem;->voteColorGray:I

    :goto_a
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f090cd7

    .line 233
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 234
    iget v2, p1, Lcom/narvii/model/Comment;->votesSum:I

    if-gez v2, :cond_f

    sget v2, Lcom/narvii/comment/list/CommentItem;->voteColorRed:I

    goto :goto_b

    :cond_f
    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v2, :cond_10

    const/4 v2, -0x1

    goto :goto_b

    :cond_10
    sget v2, Lcom/narvii/comment/list/CommentItem;->voteColorDark:I

    :goto_b
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget v2, p1, Lcom/narvii/model/Comment;->votesSum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090ce0

    .line 236
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SpinningView;

    if-eqz p2, :cond_12

    .line 238
    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v2, :cond_11

    goto :goto_c

    :cond_11
    const v3, -0x777778

    :goto_c
    invoke-virtual {p2, v3}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    :cond_12
    if-eqz p1, :cond_16

    .line 243
    iget p1, p1, Lcom/narvii/model/Comment;->votedValue:I

    const/high16 p2, 0x3f800000    # 1.0f

    if-gtz p1, :cond_15

    .line 244
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v2, :cond_13

    const v2, -0x77000001

    goto :goto_d

    :cond_13
    const v2, -0x555556

    :goto_d
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-eqz v2, :cond_14

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_e

    .line 247
    :cond_15
    iget-object p1, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    :cond_16
    :goto_e
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_17

    iget-boolean p2, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-nez p2, :cond_17

    const v1, -0x111112

    :cond_17
    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    if-ne v0, p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    return-void

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentItem;->darkTheme:Z

    .line 103
    iput p2, p0, Lcom/narvii/comment/list/CommentItem;->backgroundColor:I

    .line 104
    invoke-direct {p0}, Lcom/narvii/comment/list/CommentItem;->updateViews()V

    return-void
.end method

.method public setExpand(Z)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->content:Lcom/narvii/widget/ExpandTextView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/ExpandTextView;->setExpand(Z)V

    return-void
.end method

.method public setHasVotes(Z)V
    .locals 5

    .line 156
    iput-boolean p1, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    .line 157
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    iget v1, p0, Lcom/narvii/comment/list/CommentItem;->nicknameMarginRight:I

    iget-boolean v2, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    const v4, 0x7f0700ce

    goto :goto_0

    :cond_1
    const v4, 0x7f0700cc

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    .line 159
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v2, v4, :cond_2

    .line 160
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v2, v1, :cond_3

    .line 161
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 162
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 165
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 167
    iget-object v1, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    if-nez v0, :cond_8

    const v0, 0x7f09029b

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/16 v2, 0x8

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteCount:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/16 v2, 0x8

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public setIsMine(Z)V
    .locals 0

    return-void
.end method

.method public setIsOwner(Z)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->nickname:Lcom/narvii/widget/NicknameView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f02a0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v1, -0xcb6d25

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    return-void
.end method

.method public setVoting(Z)V
    .locals 4

    .line 266
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->voteDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/comment/list/CommentItem;->hasVotes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const v0, 0x7f090cd7

    .line 270
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090ce0

    .line 271
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteHeart:Landroid/widget/TextView;

    const/4 v2, 0x4

    if-eqz p1, :cond_4

    const/4 v3, 0x4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/narvii/comment/list/CommentItem;->voteProgress:Lcom/narvii/widget/SpinningView;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method
