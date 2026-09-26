.class public Lcom/narvii/feed/FeedSummaryItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field itemCardView:Lcom/narvii/widget/CardView;

.field thumbImage:Lcom/narvii/widget/NVImageView;

.field tvContent:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06eb

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
    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0586

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
    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0572

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
    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0756

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->itemCardView:Lcom/narvii/widget/CardView;

    .line 54
    :cond_0
    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v2

    .line 74
    .line 75
    if-nez v2, :cond_5

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_5
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    :cond_6
    :goto_2
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->itemCardView:Lcom/narvii/widget/CardView;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    check-cast p1, Lcom/narvii/model/Item;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/feed/FeedSummaryItem;->itemCardView:Lcom/narvii/widget/CardView;

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a0e9e

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p1

    .line 109
    const/4 v0, 0x4

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_7
    return-void
.end method
