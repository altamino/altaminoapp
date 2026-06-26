.class public Lcom/narvii/widget/FeedBottomLayout;
.super Landroid/widget/RelativeLayout;
.source "FeedBottomLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;
    }
.end annotation


# static fields
.field public static final BOTTOM_ANIMATION_MODE_0:I = 0x0

.field public static final BOTTOM_ANIMATION_MODE_1:I = 0x1

.field public static final BOTTOM_ANIMATION_MODE_2:I = 0x2

.field public static final SSB_MODE_CURATOR:I = 0x2

.field public static final SSB_MODE_HEADLINE_VIEWER:I = 0x3

.field public static final SSB_MODE_LEADER:I = 0x1

.field public static final SSB_MODE_NORMAL_USER:I


# instance fields
.field bottomAnimationListener:Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;

.field private broadcastView:Landroid/view/View;

.field private broadcastViewHint:Landroid/widget/TextView;

.field private btnHeadlineCommentContainer:Landroid/view/View;

.field private btnHeadlineMoreContainer:Landroid/view/View;

.field private btnHeadlineShareContainer:Landroid/view/View;

.field private btnHeadlineVoteContainer:Landroid/view/View;

.field private displayMode:I

.field private featureView:Landroid/view/View;

.field private featureViewHint:Landroid/widget/TextView;

.field private goNextHint:Landroid/widget/TextView;

.field goNextLeaderIcon:Lcom/narvii/widget/TintButton;

.field private goNextLeaderView:Landroid/view/View;

.field private goNextNomalView:Landroid/view/View;

.field private goNextNormalHint:Landroid/widget/TextView;

.field goNextNormalIcon:Lcom/narvii/widget/TintButton;

.field headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

.field headlineCommentIcon:Lcom/narvii/widget/TintButton;

.field private headlineViewerContainer:Landroid/view/View;

.field healineMoreIcon:Lcom/narvii/widget/TintButton;

.field healineShareIcon:Lcom/narvii/widget/TintButton;

.field private isAnimating:Z

.field private leaderContainer:Landroid/view/View;

.field private likeHint:Landroid/widget/TextView;

.field private modeMenuView:Landroid/view/View;

.field private modeMenuViewHint:Landroid/widget/TextView;

.field private normalUserContainer:Landroid/view/View;

.field private realHeartView:Lcom/narvii/widget/BottomVoteIcon;

.field private saveHint:Landroid/widget/TextView;

.field private saveView:Landroid/view/View;

.field private shareHint:Landroid/widget/TextView;

.field private shareView:Landroid/view/View;

.field private tipHint:Landroid/widget/TextView;

.field private tipView:Landroid/view/View;

.field tvVoteCount:Landroid/widget/TextView;

.field private voteView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/FeedBottomLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/widget/FeedBottomLayout;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/narvii/widget/FeedBottomLayout;->isAnimating:Z

    return p1
.end method


# virtual methods
.method public configureBottomBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->shareView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tipView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->saveView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->voteView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNomalView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineCommentContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineVoteContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineShareContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineMoreContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public hideFeatureButton()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090cdc

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    const v0, 0x7f09015e

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->shareView:Landroid/view/View;

    const v0, 0x7f090162

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tipView:Landroid/view/View;

    const v0, 0x7f090165

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->voteView:Landroid/view/View;

    const v0, 0x7f09015d

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->saveView:Landroid/view/View;

    const v0, 0x7f090cd7

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tvVoteCount:Landroid/widget/TextView;

    const v0, 0x7f090155

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNomalView:Landroid/view/View;

    const v0, 0x7f090159

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuView:Landroid/view/View;

    const v0, 0x7f090151

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureView:Landroid/view/View;

    const v0, 0x7f09014a

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastView:Landroid/view/View;

    const v0, 0x7f090153

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderView:Landroid/view/View;

    const v0, 0x7f09015a

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuViewHint:Landroid/widget/TextView;

    const v0, 0x7f090152

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->featureViewHint:Landroid/widget/TextView;

    const v0, 0x7f09014b

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastViewHint:Landroid/widget/TextView;

    const v0, 0x7f090154

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextHint:Landroid/widget/TextView;

    const v0, 0x7f09015f

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->shareHint:Landroid/widget/TextView;

    const v0, 0x7f090163

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->tipHint:Landroid/widget/TextView;

    const v0, 0x7f090149

    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->saveHint:Landroid/widget/TextView;

    const v0, 0x7f090166

    .line 119
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->likeHint:Landroid/widget/TextView;

    const v0, 0x7f090156

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalHint:Landroid/widget/TextView;

    const v0, 0x7f09077a

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    const v0, 0x7f09064b

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    const v0, 0x7f0904fc

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    const v0, 0x7f090760

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalIcon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f09075f

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderIcon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f0904fa

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineCommentIcon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090501

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->healineShareIcon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090500

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->healineMoreIcon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090503

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

    const v0, 0x7f090505

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineCommentContainer:Landroid/view/View;

    const v0, 0x7f090508

    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineVoteContainer:Landroid/view/View;

    const v0, 0x7f090506

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineMoreContainer:Landroid/view/View;

    const v0, 0x7f090507

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->btnHeadlineShareContainer:Landroid/view/View;

    return-void
.end method

.method public setBottomAnimationListener(Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->bottomAnimationListener:Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;

    return-void
.end method

.method public setBottomLayoutDisplayMode(I)V
    .locals 4

    .line 143
    iput p1, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 154
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 149
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->leaderContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineViewerContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v3, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastView:Landroid/view/View;

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 5

    .line 237
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f0601c6

    goto :goto_0

    :cond_0
    const v1, 0x7f0601c5

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 241
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->modeMenuViewHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 242
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->featureViewHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 243
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->broadcastViewHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->tvVoteCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 246
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->shareHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 247
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->tipHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 248
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->saveHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 249
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->likeHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 252
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextLeaderIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601c7

    const v3, 0x7f0601c8

    if-nez p1, :cond_1

    const v4, 0x7f0601c7

    goto :goto_1

    :cond_1
    const v4, 0x7f0601c8

    :goto_1
    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 253
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->goNextNormalIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0x7f0601c8

    :goto_2
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    if-nez p1, :cond_3

    const v0, 0x7f0601c9

    goto :goto_3

    :cond_3
    const v0, 0x7f0601ca

    .line 256
    :goto_3
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineCommentIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 257
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->healineShareIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 258
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->healineMoreIcon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_4

    const v0, 0x7f0802bf

    goto :goto_4

    :cond_4
    const v0, 0x7f0802be

    :goto_4
    const p1, 0x7f0802c0

    .line 261
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/BottomVoteIcon;->setVoteNormalId(I)V

    .line 262
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->headlineBottomVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/BottomVoteIcon;->setVotedId(I)V

    return-void
.end method

.method public showTipping(Z)V
    .locals 3

    .line 198
    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    const v1, 0x7f09015e

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 200
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->normalUserContainer:Landroid/view/View;

    const v1, 0x7f090162

    invoke-static {v0, v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public startLikeAnimation(I)V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/narvii/widget/FeedBottomLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/narvii/widget/FeedBottomLayout;->isAnimating:Z

    .line 166
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    .line 167
    iget-object v1, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    new-instance v2, Lcom/narvii/widget/FeedBottomLayout$1;

    invoke-direct {v2, p0}, Lcom/narvii/widget/FeedBottomLayout$1;-><init>(Lcom/narvii/widget/FeedBottomLayout;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public updateBottomView(IZII)V
    .locals 0

    .line 232
    invoke-virtual {p0, p1, p2, p4}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteIcon(IZI)V

    .line 233
    invoke-virtual {p0, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateCommentView(I)V

    return-void
.end method

.method public updateCommentView(I)V
    .locals 3

    .line 205
    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f0904f9

    .line 206
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-lez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateVoteCountView(I)V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 v0, 0x0

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteCountView(Ljava/lang/String;)V

    return-void
.end method

.method public updateVoteCountView(Ljava/lang/String;)V
    .locals 5

    .line 212
    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const v0, 0x7f090502

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const v0, 0x7f090cd7

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public updateVoteIcon(IZI)V
    .locals 4

    .line 179
    iget v0, p0, Lcom/narvii/widget/FeedBottomLayout;->displayMode:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const v0, 0x7f090503

    .line 180
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    .line 181
    invoke-virtual {v0, p1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    const p1, 0x7f090504

    .line 182
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 183
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    const/4 v2, 0x4

    .line 184
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    invoke-virtual {p0, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteCountView(I)V

    goto :goto_2

    :cond_2
    const v0, 0x7f090cdc

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BottomVoteIcon;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    const p1, 0x7f090ce0

    .line 188
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 189
    iget-object v0, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    .line 190
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/narvii/widget/FeedBottomLayout;->realHeartView:Lcom/narvii/widget/BottomVoteIcon;

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    invoke-virtual {p0, p3}, Lcom/narvii/widget/FeedBottomLayout;->updateVoteCountView(I)V

    :cond_6
    :goto_2
    return-void
.end method
