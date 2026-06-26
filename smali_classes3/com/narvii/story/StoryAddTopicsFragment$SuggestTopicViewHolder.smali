.class public Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestTopicViewHolder"
.end annotation


# instance fields
.field public itemView:Landroid/view/View;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;

.field topicTag:Lcom/narvii/model/TopicTag;

.field tvTopic:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    new-instance p1, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder$1;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder$1;-><init>(Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;)V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 605
    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f090bfb

    .line 607
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->tvTopic:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setTopic(Lcom/narvii/model/TopicTag;Ljava/lang/String;)V
    .locals 3

    .line 611
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->topicTag:Lcom/narvii/model/TopicTag;

    .line 612
    iget-object v0, p1, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p1, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 616
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 618
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object p1, p1, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 619
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0xb36e

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 620
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->tvTopic:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->tvTopic:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->tvTopic:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
