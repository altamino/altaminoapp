.class public Lcom/narvii/community/widget/CommunitySummaryInfoLayout;
.super Landroid/widget/LinearLayout;
.source "CommunitySummaryInfoLayout.java"


# instance fields
.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field imgIcon:Lcom/narvii/widget/NVImageView;

.field tvCommunityMemberNumber:Landroid/widget/TextView;

.field tvFeedTime:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0902a3

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->imgIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0902b6

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    const v0, 0x7f09043c

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvFeedTime:Landroid/widget/TextView;

    return-void
.end method

.method public setCommunity(Lcom/narvii/model/Community;Lcom/narvii/model/Feed;Landroid/graphics/Typeface;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->imgIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 58
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    .line 60
    iget-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvFeedTime:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u2022 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v1, p2, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvFeedTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    move-result-object p2

    iget-boolean p2, p2, Lcom/narvii/model/HeadlineStyle;->displayTimeIndicator:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const p1, -0x3d3d3e

    .line 74
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
