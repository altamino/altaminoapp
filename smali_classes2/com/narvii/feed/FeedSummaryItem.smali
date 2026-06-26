.class public Lcom/narvii/feed/FeedSummaryItem;
.super Landroid/widget/LinearLayout;
.source "FeedSummaryItem.java"


# instance fields
.field itemCardView:Lcom/narvii/widget/CardView;

.field thumbImage:Lcom/narvii/widget/NVImageView;

.field tvContent:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090571

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09044f

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09043b

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0905d7

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CardView;

    iput-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->itemCardView:Lcom/narvii/widget/CardView;

    :cond_0
    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 53
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->thumbImage:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 67
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 69
    iget-object v1, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_6
    :goto_2
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/feed/FeedSummaryItem;->itemCardView:Lcom/narvii/widget/CardView;

    if-eqz v0, :cond_7

    .line 75
    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 76
    iget-object p1, p0, Lcom/narvii/feed/FeedSummaryItem;->itemCardView:Lcom/narvii/widget/CardView;

    const v0, 0x7f090b9a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
