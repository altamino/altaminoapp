.class Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterestPickerSubInterestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/InterestData;",
        "Lcom/narvii/suggest/interest/SubInterestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 3
    const/4 p1, -0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    return-void
.end method

.method private checkAndShowSkip()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    iget-object v4, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :cond_1
    if-eqz v1, :cond_3

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :cond_3
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/persona/interest-detail"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "language"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getData()Landroid/os/Bundle;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v1, "selectedInterest"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v1, ""

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, ","

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    const-string v1, "interestIds"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 101
    move-result-object p1

    .line 102
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/InterestData;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/InterestData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result p2

    .line 18
    .line 19
    if-eqz p2, :cond_8

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/model/InterestData;

    .line 26
    .line 27
    if-eqz p2, :cond_7

    .line 28
    .line 29
    iget-object v1, p2, Lcom/narvii/model/InterestData;->foldedTopicList:Ljava/util/List;

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    move v1, v2

    .line 44
    .line 45
    :goto_2
    iget-object v4, p2, Lcom/narvii/model/InterestData;->visibleTopicList:Ljava/util/List;

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v4, v3

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    :goto_3
    move v4, v2

    .line 58
    .line 59
    :goto_4
    iget-object p2, p2, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 65
    move-result p2

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    goto :goto_5

    .line 69
    :cond_5
    move v2, v3

    .line 70
    .line 71
    :cond_6
    :goto_5
    if-eqz v1, :cond_0

    .line 72
    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 83
    goto :goto_0

    .line 84
    :cond_8
    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d03ab

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    instance-of p3, p1, Lcom/narvii/model/InterestData;

    .line 10
    .line 11
    if-eqz p3, :cond_8

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/InterestData;

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a0732

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/InterestData;->getDisplayName()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    new-instance p3, Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p1, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    .line 47
    .line 48
    .line 49
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/InterestData;->visibleTopicList:Ljava/util/List;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p1, Lcom/narvii/model/InterestData;->visibleTopicList:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/InterestData;->foldedTopicList:Ljava/util/List;

    .line 67
    const/4 v1, 0x0

    .line 68
    const/4 v2, 0x1

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-nez v0, :cond_2

    .line 77
    move v0, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move v0, v1

    .line 80
    .line 81
    :goto_0
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->y(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    iget-object v4, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v3

    .line 94
    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iget-object v3, p1, Lcom/narvii/model/InterestData;->foldedTopicList:Ljava/util/List;

    .line 98
    .line 99
    .line 100
    invoke-interface {p3, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    .line 102
    :cond_3
    if-eqz v0, :cond_4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->y(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iget-object p1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    new-instance p1, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;

    .line 119
    .line 120
    .line 121
    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_4
    const p1, 0x7f0a0ee5

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    check-cast p1, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 134
    .line 135
    .line 136
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 137
    move-result v0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 141
    move-result v3

    .line 142
    move v4, v1

    .line 143
    .line 144
    :goto_1
    if-ge v4, v0, :cond_7

    .line 145
    .line 146
    if-ge v4, v3, :cond_5

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 150
    move-result-object v5

    .line 151
    .line 152
    check-cast v5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :cond_5
    iget-object v5, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 156
    .line 157
    .line 158
    const v6, 0x7f0d03ac

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v6, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 162
    move-result-object v5

    .line 163
    .line 164
    check-cast v5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 165
    .line 166
    iget-object v6, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v6

    .line 177
    .line 178
    check-cast v6, Lcom/narvii/model/story/StoryTopic;

    .line 179
    .line 180
    if-eqz v6, :cond_6

    .line 181
    .line 182
    iget-object v7, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 183
    .line 184
    .line 185
    invoke-static {v7}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 186
    move-result-object v7

    .line 187
    .line 188
    iget v8, v6, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 189
    .line 190
    .line 191
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v8

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 196
    move-result v7

    .line 197
    .line 198
    if-eqz v7, :cond_6

    .line 199
    move v7, v2

    .line 200
    goto :goto_3

    .line 201
    :cond_6
    move v7, v1

    .line 202
    .line 203
    .line 204
    :goto_3
    invoke-virtual {v5, v6}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v7}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 208
    .line 209
    add-int/lit8 v4, v4, 0x1

    .line 210
    goto :goto_1

    .line 211
    .line 212
    .line 213
    :cond_7
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 214
    move-result p3

    .line 215
    .line 216
    if-ge v0, p3, :cond_8

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 220
    move-result p3

    .line 221
    sub-int/2addr p3, v2

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 225
    goto :goto_4

    .line 226
    :cond_8
    return-object p2
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->checkAndShowSkip()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 3
    .line 4
    if-eqz v0, :cond_3

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
    instance-of p2, p1, Lcom/narvii/suggest/interest/InterestTopicView$MoreTopicMock;

    .line 13
    const/4 p4, 0x0

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    instance-of p1, p3, Lcom/narvii/model/InterestData;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/model/InterestData;

    .line 23
    .line 24
    iget-object p1, p3, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->y(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p2, p3, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->C(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 47
    return v0

    .line 48
    :cond_0
    return p4

    .line 49
    .line 50
    :cond_1
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 57
    .line 58
    .line 59
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    move-result p2

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 75
    .line 76
    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->D(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {p5, p4}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_2
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 103
    .line 104
    .line 105
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 109
    .line 110
    .line 111
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->D(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {p5, v0}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 134
    .line 135
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->z(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/list/MergeAdapter;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 143
    .line 144
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->E(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    .line 148
    return v0

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 152
    move-result p1

    .line 153
    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/suggest/interest/SubInterestResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/SubInterestResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/SubInterestResponse;I)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->checkAndShowSkip()V

    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->x(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 5
    iget-object p1, p2, Lcom/narvii/suggest/interest/SubInterestResponse;->interestDetails:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/InterestData;

    .line 6
    iget-object p2, p2, Lcom/narvii/model/InterestData;->topicList:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/story/StoryTopic;

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 8
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 9
    invoke-static {v0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->D(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;

    move-result-object v0

    iget p3, p3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 10
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->E(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/suggest/interest/SubInterestResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/suggest/interest/SubInterestResponse;

    return-object v0
.end method
