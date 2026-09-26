.class public Lcom/narvii/community/widget/CommunitySummaryInfoLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

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
    const v0, 0x7f0a036b

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
    iput-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->imgIcon:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a037c

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
    iput-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0573

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
    iput-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvFeedTime:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public setCommunity(Lcom/narvii/model/Community;Lcom/narvii/model/Feed;Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->imgIcon:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvFeedTime:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    if-eqz p2, :cond_4

    .line 35
    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v0, "\u2022 "

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 47
    .line 48
    iget-object v1, p2, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvFeedTime:Landroid/widget/TextView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    iget-boolean p2, p2, Lcom/narvii/model/HeadlineStyle;->displayTimeIndicator:Z

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    const/4 p2, 0x0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_3
    const/16 p2, 0x8

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_4
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/widget/CommunitySummaryInfoLayout;->tvName:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    const p1, -0x3d3d3e

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    :cond_1
    return-void
.end method
