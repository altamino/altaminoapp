.class Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "InterestPickerSubInterestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchedTopicsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 459
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$700(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const p1, 0x7f0b036d

    .line 479
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090bc8

    .line 480
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    if-eqz p2, :cond_2

    .line 481
    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$700(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 482
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    .line 483
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$700(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ge v2, p3, :cond_0

    .line 487
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/suggest/interest/InterestTopicView;

    goto :goto_1

    .line 489
    :cond_0
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0371

    invoke-virtual {v3, v4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 490
    iget-object v4, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 493
    :goto_1
    iget-object v4, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v4}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$700(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/story/StoryTopic;

    if-eqz v4, :cond_1

    .line 494
    iget-object v5, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {v5}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, v4, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 495
    :goto_2
    invoke-virtual {v3, v4}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    .line 496
    invoke-virtual {v3, v5}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 504
    instance-of v0, p5, Lcom/narvii/suggest/interest/InterestTopicView;

    if-eqz v0, :cond_1

    .line 505
    check-cast p5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 506
    invoke-virtual {p5}, Lcom/narvii/suggest/interest/InterestTopicView;->getTopicData()Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    .line 507
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object p2

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 508
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object p2

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$300(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object p2

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    :cond_0
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object p2

    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$300(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object p2

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$600(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 516
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->access$400(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    const/4 p1, 0x1

    return p1

    .line 519
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
