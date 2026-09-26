.class Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->A(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d03a8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0ee5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->A(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    .line 27
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 28
    move-result p3

    .line 29
    .line 30
    if-nez p3, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    move-result p3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->A(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    move v2, v1

    .line 47
    .line 48
    :goto_0
    if-ge v2, v0, :cond_2

    .line 49
    .line 50
    if-ge v2, p3, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_0
    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 60
    .line 61
    .line 62
    const v4, 0x7f0d03ac

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    check-cast v3, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    .line 78
    :goto_1
    iget-object v4, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->A(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    add-int/lit8 v5, v0, -0x1

    .line 85
    sub-int/2addr v5, v2

    .line 86
    .line 87
    .line 88
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    check-cast v4, Lcom/narvii/model/story/StoryTopic;

    .line 92
    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    iget-object v5, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 96
    .line 97
    .line 98
    invoke-static {v5}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 99
    move-result-object v5

    .line 100
    .line 101
    iget v6, v4, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 102
    .line 103
    .line 104
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v6

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 109
    move-result v5

    .line 110
    .line 111
    if-eqz v5, :cond_1

    .line 112
    const/4 v5, 0x1

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    move v5, v1

    .line 115
    .line 116
    .line 117
    :goto_2
    invoke-virtual {v3, v4}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v5}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Lcom/narvii/suggest/interest/InterestTopicView;->getTopicData()Lcom/narvii/model/story/StoryTopic;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->D(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 68
    .line 69
    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->D(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->z(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/list/MergeAdapter;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->E(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    .line 104
    const/4 p1, 0x1

    .line 105
    return p1

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 109
    move-result p1

    .line 110
    return p1
.end method
