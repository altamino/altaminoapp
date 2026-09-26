.class Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;
.super Lcom/narvii/feed/FeaturedFeedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/FrontFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrontFeaturedAdapter"
.end annotation


# instance fields
.field pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

.field refreshFlags:I

.field final synthetic this$0:Lcom/narvii/feed/FrontFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/FrontFeedListFragment;I)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/feed/FeaturedFeedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter$1;

    .line 8
    .line 9
    const-class v0, Lcom/narvii/model/Feed;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter$1;-><init>(Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

    .line 15
    .line 16
    iput p2, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 17
    .line 18
    const-string p1, "Front Page Feed"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 21
    .line 22
    const-wide/16 p1, 0x4b0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->setRefreshWaitTime(J)V

    .line 26
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->errorMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    return v0
.end method

.method public isListShown()Z
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    :cond_0
    move v1, v2

    .line 38
    :cond_1
    return v1

    .line 39
    :cond_2
    return v2

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    move-result v0

    .line 54
    .line 55
    if-lez v0, :cond_4

    .line 56
    move v1, v2

    .line 57
    :cond_4
    return v1
.end method

.method protected logFeedClickEvent(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

    .line 10
    .line 11
    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    .line 23
    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/feed/FeatureLayoutImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/Feed;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/feed/FeatureLayoutImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->pinIPC:Lcom/narvii/feed/PinLayoutImpressionCollector;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    .line 20
    return-void
.end method

.method public onErrorRetry()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/feed/FeaturedFeedAdapter;->resetList()V

    .line 4
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/FeaturedFeedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 8
    .line 9
    iget-boolean p3, p1, Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;->pendingForFeatured:Z

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 17
    .line 18
    iget-object p3, p1, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-eqz p3, :cond_3

    .line 23
    .line 24
    iget-boolean p3, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->featureLoadFinished:Z

    .line 25
    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/feed/FeaturedFeedAdapter;->getTopCellCount()I

    .line 56
    move-result p1

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->setShowStyle(I)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->setShowStyle(I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    move-result p1

    .line 88
    .line 89
    if-lez p1, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    check-cast p1, Lcom/narvii/model/Feed;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    check-cast p1, Lcom/narvii/model/Feed;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->featureType()I

    .line 119
    move-result p1

    .line 120
    .line 121
    if-ne p1, v0, :cond_4

    .line 122
    .line 123
    iget p1, p0, Lcom/narvii/feed/FeaturedFeedAdapter;->displayMode:I

    .line 124
    const/4 p3, 0x4

    .line 125
    .line 126
    if-eq p1, p3, :cond_4

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    move v0, v1

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 142
    move-result p1

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    if-nez v0, :cond_5

    .line 147
    goto :goto_2

    .line 148
    .line 149
    :cond_5
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 150
    .line 151
    .line 152
    const p2, 0x3f19999a    # 0.6f

    .line 153
    .line 154
    iput p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->targetAlpha:F

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 158
    .line 159
    const/high16 p2, 0x3f800000    # 1.0f

    .line 160
    .line 161
    iput p2, p1, Lcom/narvii/feed/FrontFeedListFragment;->targetAlpha:F

    .line 162
    .line 163
    :goto_3
    iget-object p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcom/narvii/feed/FrontFeedListFragment;->u(Lcom/narvii/feed/FrontFeedListFragment;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 170
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/feed/FrontFeedListFragment;->mFeaturedAdapter:Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;

    .line 13
    .line 14
    const-string v2, "frontPageLayout"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/feed/FeaturedFeedAdapter;->setDisplayMode(I)V

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->refreshFlags:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 27
    .line 28
    or-int/lit16 p2, p1, 0x200

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/feed/FrontFeedListFragment;->mNewestAdapter:Lcom/narvii/feed/FrontFeedListFragment$NewestAdapter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/feed/FrontFeedListFragment$FrontFeaturedAdapter;->this$0:Lcom/narvii/feed/FrontFeedListFragment;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/narvii/feed/FrontFeedListFragment;->mHistoryFeaturedFeedAdapter:Lcom/narvii/feed/FrontFeedListFragment$HistoryFeaturedFeedAdapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 50
    return-void
.end method

.method protected useDefaultImpressionCollector()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
