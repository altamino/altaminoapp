.class public Lcom/narvii/story/detail/StoryLeftCollapseView;
.super Landroid/widget/LinearLayout;
.source "StoryLeftCollapseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private community:Lcom/narvii/model/Community;

.field private communityHelper:Lcom/narvii/community/CommunityHelper;

.field private dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field private isAnimating:Z

.field private isCollapse:Z

.field private isPreview:Z

.field mainPreClick:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private story:Lcom/narvii/model/Blog;

.field userPreClick:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isCollapse:Z

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isAnimating:Z

    .line 71
    new-instance p2, Lcom/narvii/story/detail/StoryLeftCollapseView$1;

    invoke-direct {p2, p0}, Lcom/narvii/story/detail/StoryLeftCollapseView$1;-><init>(Lcom/narvii/story/detail/StoryLeftCollapseView;)V

    iput-object p2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->mainPreClick:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    .line 78
    new-instance p2, Lcom/narvii/story/detail/StoryLeftCollapseView$2;

    invoke-direct {p2, p0}, Lcom/narvii/story/detail/StoryLeftCollapseView$2;-><init>(Lcom/narvii/story/detail/StoryLeftCollapseView;)V

    iput-object p2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->userPreClick:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/story/detail/StoryLeftCollapseView;Landroid/content/Intent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Blog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->community:Lcom/narvii/model/Community;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/community/CommunityHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->communityHelper:Lcom/narvii/community/CommunityHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/story/detail/StoryLeftCollapseView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isAnimating:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/story/detail/StoryLeftCollapseView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->updateView()V

    return-void
.end method

.method private doCollapseAnimator()V
    .locals 5

    .line 354
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 357
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 358
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->updateView()V

    .line 359
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/LinearLayout;->measure(II)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v3

    .line 361
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 362
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 363
    new-instance v2, Lcom/narvii/story/detail/StoryLeftCollapseView$6;

    invoke-direct {v2, p0, v0}, Lcom/narvii/story/detail/StoryLeftCollapseView$6;-><init>(Lcom/narvii/story/detail/StoryLeftCollapseView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 371
    new-instance v0, Lcom/narvii/story/detail/StoryLeftCollapseView$7;

    invoke-direct {v0, p0}, Lcom/narvii/story/detail/StoryLeftCollapseView$7;-><init>(Lcom/narvii/story/detail/StoryLeftCollapseView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-boolean v1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isPreview:Z

    invoke-static {p0, v0, v1}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;Z)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->nvContext:Lcom/narvii/app/NVContext;

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f0b0660

    .line 104
    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance p1, Lcom/narvii/story/detail/StoryLeftCollapseView$3;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p0, v0}, Lcom/narvii/story/detail/StoryLeftCollapseView$3;-><init>(Lcom/narvii/story/detail/StoryLeftCollapseView;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->communityHelper:Lcom/narvii/community/CommunityHelper;

    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 300
    invoke-static {p0}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1}, Lcom/narvii/paging/PageView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const v1, 0x7f090aef

    .line 160
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/story/widgets/StoryTopicView;

    const/4 v2, 0x1

    .line 161
    invoke-virtual {v1, v2}, Lcom/narvii/story/widgets/StoryTopicView;->enableBlink(Z)V

    .line 162
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 163
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->mainPreClick:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    invoke-virtual {v1, v3}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 164
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getPromotedTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    invoke-virtual {v1, v3}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 169
    iget-boolean v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isPreview:Z

    invoke-virtual {v1, v3}, Lcom/narvii/story/widgets/StoryTopicView;->setPreview(Z)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    const v1, 0x7f090ae6

    .line 174
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090ad6

    .line 178
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 179
    iget-boolean v5, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isCollapse:Z

    const v6, 0x7f090ad9

    const v7, 0x7f090adb

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isAnimating:Z

    if-nez v5, :cond_2

    .line 180
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 181
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0802a2

    .line 183
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    const v5, 0x7fffffff

    .line 186
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 187
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0802a1

    .line 189
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f090af3

    .line 192
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 193
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    const v1, 0x7f09032e

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 200
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v5, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v5, v5, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v3, v5}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090c98

    .line 202
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v1, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 203
    iget-object v1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const v1, 0x7f090c97

    .line 204
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Feed;->viewCount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v1, 0x7f090ad7

    .line 207
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 209
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 211
    :cond_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    new-instance v3, Lcom/narvii/util/text/NVText;

    iget-object v5, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v3, v2}, Lcom/narvii/util/text/NVText;->setDarkTheme(Z)V

    .line 214
    new-instance v5, Lcom/narvii/story/detail/StoryLeftCollapseView$4;

    invoke-direct {v5, p0}, Lcom/narvii/story/detail/StoryLeftCollapseView$4;-><init>(Lcom/narvii/story/detail/StoryLeftCollapseView;)V

    invoke-virtual {v3, v5}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 223
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 224
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v1, 0x7f090ad8

    .line 229
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 230
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x8

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Blog;->credits:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090af0

    .line 234
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 235
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v3, v3, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 236
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 238
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 239
    iget-object v5, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v5, v5, Lcom/narvii/model/Blog;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/story/StoryTopic;

    const v7, 0x7f0b0675

    .line 240
    invoke-virtual {v3, v7, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/story/widgets/StoryTopicView;

    .line 241
    iget-object v8, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->userPreClick:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    invoke-virtual {v7, v8}, Lcom/narvii/story/widgets/StoryTopicView;->setOnPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    .line 242
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 243
    invoke-virtual {v7, v6}, Lcom/narvii/story/widgets/StoryTopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 244
    iget-boolean v6, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isPreview:Z

    invoke-virtual {v7, v6}, Lcom/narvii/story/widgets/StoryTopicView;->setPreview(Z)V

    const v6, 0x33ffffff

    .line 245
    invoke-virtual {v7, v6}, Lcom/narvii/widget/TagRoundView;->setBackgroundColor(I)V

    .line 246
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 249
    :cond_8
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    const v1, 0x7f0902a9

    .line 252
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 253
    new-instance v2, Lcom/narvii/story/detail/StoryLeftCollapseView$5;

    invoke-direct {v2, p0, v1}, Lcom/narvii/story/detail/StoryLeftCollapseView$5;-><init>(Lcom/narvii/story/detail/StoryLeftCollapseView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->community:Lcom/narvii/model/Community;

    if-eqz v2, :cond_a

    const v2, 0x7f0902a3

    .line 289
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/CommunityIconView;

    .line 290
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->community:Lcom/narvii/model/Community;

    invoke-virtual {v2, v3}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    const v2, 0x7f0902b6

    .line 291
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 292
    iget-object v3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->community:Lcom/narvii/model/Community;

    iget-object v3, v3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 295
    :cond_a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090af3

    if-ne p1, v1, :cond_5

    .line 315
    iget-boolean p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isPreview:Z

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "StoryInfo"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 324
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->communityHelper:Lcom/narvii/community/CommunityHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const-string v2, "UserIcon"

    invoke-virtual {p1, v1, v2}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 328
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p1, v1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 329
    iget-object v1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v2, "__communityId"

    .line 330
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 334
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "__model"

    .line 335
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 342
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isAnimating:Z

    if-eqz p1, :cond_6

    return-void

    .line 346
    :cond_6
    iget-boolean p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isCollapse:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isCollapse:Z

    .line 347
    iget-boolean p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isCollapse:Z

    if-nez p1, :cond_7

    .line 348
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkStoryInfo:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 350
    :cond_7
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->doCollapseAnimator()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0909c5

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ScrollViewWithMaxHeight2;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ScrollViewWithMaxHeight;->setInterceptParent(Z)V

    :cond_0
    return-void
.end method

.method public setCollapseState(Z)V
    .locals 2

    .line 141
    iput-boolean p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isCollapse:Z

    .line 142
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->updateView()V

    .line 144
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    if-nez p1, :cond_0

    .line 146
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 148
    :cond_0
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setStoryInfo(Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Z)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->story:Lcom/narvii/model/Blog;

    .line 135
    iput-object p2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->community:Lcom/narvii/model/Community;

    .line 136
    iput-boolean p3, p0, Lcom/narvii/story/detail/StoryLeftCollapseView;->isPreview:Z

    .line 137
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->updateView()V

    return-void
.end method
