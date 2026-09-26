.class Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onboarding/RecommendedFeedsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onboarding/RecommendedFeedsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onboarding/RecommendedFeedsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedFeedsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private hasVoted(Lcom/narvii/model/Feed;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 15
    move-result p1

    .line 16
    .line 17
    if-lez p1, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/Item;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->isGlobalInteractionScope()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 32
    move-result p1

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    return v1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private isProcessing(Lcom/narvii/model/Feed;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    instance-of p3, p2, Lcom/narvii/feed/FeedListItem;

    .line 7
    .line 8
    if-eqz p3, :cond_7

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/Feed;

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/feed/FeedListItem;

    .line 13
    .line 14
    .line 15
    const p3, 0x7f0a0588

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    const p3, 0x7f0a0587

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const p3, 0x7f0a09f9

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    .line 44
    .line 45
    .line 46
    const v1, -0xb5b5b6

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    instance-of v0, p3, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    check-cast p3, Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    const p3, 0x7f0a0a4c

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x1

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 76
    .line 77
    .line 78
    const v2, 0x7f0d04d4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->hasVoted(Lcom/narvii/model/Feed;)Z

    .line 89
    move-result v0

    .line 90
    const/4 v2, 0x4

    .line 91
    const/4 v3, 0x0

    .line 92
    .line 93
    if-nez v0, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->isProcessing(Lcom/narvii/model/Feed;)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v0, v2

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    :goto_1
    move v0, v3

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    const p3, 0x7f0a0a4b

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p3

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->hasVoted(Lcom/narvii/model/Feed;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->isProcessing(Lcom/narvii/model/Feed;)Z

    .line 123
    move-result v0

    .line 124
    .line 125
    if-nez v0, :cond_5

    .line 126
    move v0, v3

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    move v0, v2

    .line 129
    .line 130
    .line 131
    :goto_3
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    const p3, 0x7f0a0a4d

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object p3

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->isProcessing(Lcom/narvii/model/Feed;)Z

    .line 142
    move-result p1

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    move v2, v3

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 152
    move-result p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 156
    move-result-object p3

    .line 157
    .line 158
    const/high16 v0, 0x41000000    # 8.0f

    .line 159
    .line 160
    .line 161
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 162
    move-result p3

    .line 163
    float-to-int p3, p3

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 167
    move-result v2

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 171
    move-result-object v4

    .line 172
    .line 173
    .line 174
    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 175
    move-result v0

    .line 176
    float-to-int v0, v0

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, p1, p3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 183
    .line 184
    iput-boolean v1, p2, Lcom/narvii/feed/FeedListItem;->disableClick:Z

    .line 185
    :cond_7
    return-object p2
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedFeedsFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/onboarding/RecommendedFeedsFragment;->feeds:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    .line 13
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/narvii/onboarding/RecommendedFeedsFragment$Adapter;->hasVoted(Lcom/narvii/model/Feed;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x4

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p3, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V

    .line 30
    :goto_0
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
