.class public Lcom/narvii/poll/PollOptionListLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/poll/PollService$VoteListener;
.implements Lcom/narvii/util/Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/narvii/poll/PollService$VoteListener;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/widget/LongPushButton;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field autoAdjust:Z

.field blockTouch:Z

.field forceShowResult:Ljava/lang/Boolean;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field notBlockArea:Landroid/graphics/RectF;

.field options:[Landroid/view/ViewGroup;

.field pendingAnim:Z

.field final pendingEnd:Ljava/lang/Runnable;

.field pendingPoll:Lcom/narvii/model/Blog;

.field poll:Lcom/narvii/model/Blog;

.field pollService:Lcom/narvii/poll/PollService;

.field public preview:Z

.field previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

.field public statSource:Ljava/lang/String;

.field text:Landroid/widget/TextView;

.field voteCallback:Lcom/narvii/util/Callback;

.field voters:Lcom/narvii/poll/VotersSummaryResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/poll/PollOptionListLayout$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/narvii/poll/PollOptionListLayout$1;-><init>(Lcom/narvii/poll/PollOptionListLayout;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingEnd:Ljava/lang/Runnable;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string p2, "poll"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/poll/PollService;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    .line 25
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static setViewVisibility(Landroid/view/View;IZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eq v0, p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    const p2, 0x7f010037

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    const p2, 0x7f010038

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/widget/LongPushButton;)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/narvii/influencer/InfluencerHelper;

    invoke-direct {v1, v0}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    const-string v3, "Page Detailed View"

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const v1, 0x7f0a0714

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->voteCallback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 8
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 9
    iget-object v1, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PollOption;

    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    iget-object v2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 10
    iget-object v3, p1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object v5, p0, Lcom/narvii/poll/PollOptionListLayout;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/narvii/poll/PollService;->vote(Lcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V

    const-string v1, "statistics"

    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    const-string v1, "Votes on a Poll"

    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->statSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v0

    iget p1, p1, Lcom/narvii/model/PollOption;->type:I

    if-nez p1, :cond_3

    const-string p1, "Plain"

    goto :goto_0

    :cond_3
    const-string p1, "wiki"

    :goto_0
    const-string v1, "Type"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Votes Poll Total"

    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_4
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/widget/LongPushButton;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollOptionListLayout;->call(Lcom/narvii/widget/LongPushButton;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/influencer/InfluencerHelper;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 16
    .line 17
    const-string v2, "Page Detailed View"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a06eb

    .line 32
    .line 33
    .line 34
    const v2, 0x7f0a0714

    .line 35
    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/model/PollOption;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 60
    move-result-object v1

    .line 61
    const/4 v3, 0x0

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    const v1, 0x7f120c3e

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 86
    move-result v1

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    iget-object v3, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 95
    .line 96
    const-class v4, Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v3, v4}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v0}, Lcom/narvii/poll/PollOptionListLayout;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    new-instance v0, Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v4

    .line 119
    .line 120
    const-class v5, Lcom/narvii/media/MediaGalleryOptionActivity;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .line 125
    iget-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 126
    .line 127
    .line 128
    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    const-string v5, "parent"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    const-string v4, "parentClass"

    .line 137
    .line 138
    const-class v5, Lcom/narvii/model/Feed;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    .line 143
    const-string v4, "list"

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    const-string v1, "position"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v0}, Lcom/narvii/poll/PollOptionListLayout;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 166
    move-result v0

    .line 167
    .line 168
    .line 169
    const v1, 0x7f0a0756

    .line 170
    .line 171
    if-ne v0, v1, :cond_4

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    check-cast p1, Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 181
    move-result p1

    .line 182
    .line 183
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    check-cast p1, Lcom/narvii/model/PollOption;

    .line 192
    .line 193
    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 194
    .line 195
    .line 196
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    const-string v0, "Source"

    .line 200
    .line 201
    const-string v1, "Poll"

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    invoke-static {v0, p1}, Lcom/narvii/poll/PollOptionListLayout;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 212
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    .line 16
    :goto_0
    if-ge v3, v1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 24
    move-result v5

    .line 25
    .line 26
    .line 27
    const v6, 0x7f0a0b12

    .line 28
    .line 29
    if-eq v5, v6, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 33
    move-result v5

    .line 34
    .line 35
    .line 36
    const v6, 0x7f0a0b13

    .line 37
    .line 38
    if-eq v5, v6, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 42
    move-result v5

    .line 43
    .line 44
    .line 45
    const v6, 0x7f0a0b14

    .line 46
    .line 47
    if-eq v5, v6, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 51
    move-result v5

    .line 52
    .line 53
    .line 54
    const v6, 0x7f0a0b15

    .line 55
    .line 56
    if-eq v5, v6, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 60
    move-result v5

    .line 61
    .line 62
    .line 63
    const v6, 0x7f0a0b16

    .line 64
    .line 65
    if-ne v5, v6, :cond_0

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 70
    move-result v5

    .line 71
    .line 72
    .line 73
    const v6, 0x7f0a0b1c

    .line 74
    .line 75
    if-ne v5, v6, :cond_2

    .line 76
    .line 77
    check-cast v4, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v5

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4, v5}, Lcom/narvii/poll/PollOptionListLayout;->setupCell(Landroid/view/View;I)V

    .line 88
    .line 89
    check-cast v4, Landroid/view/ViewGroup;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 99
    move-result v1

    .line 100
    .line 101
    new-array v1, v1, [Landroid/view/ViewGroup;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    check-cast v0, [Landroid/view/ViewGroup;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 110
    array-length v0, v0

    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    const/4 v2, 0x1

    .line 114
    .line 115
    :cond_4
    iput-boolean v2, p0, Lcom/narvii/poll/PollOptionListLayout;->autoAdjust:Z

    .line 116
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result p2

    .line 10
    .line 11
    iget-object p3, p0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p3, 0x0

    .line 20
    :goto_0
    sub-int/2addr p2, p3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    move-result p3

    .line 25
    sub-int/2addr p2, p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    .line 32
    const p4, 0x7f070434

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    move-result p3

    .line 37
    sub-int/2addr p2, p3

    .line 38
    int-to-float p2, p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    move-result p3

    .line 43
    int-to-float p3, p3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    move-result p4

    .line 48
    int-to-float p4, p4

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v0, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->notBlockArea:Landroid/graphics/RectF;

    .line 55
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/poll/PollOptionListLayout;->blockTouch:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->notBlockArea:Landroid/graphics/RectF;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    :cond_0
    return v1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onVoteFail(Lcom/narvii/model/Blog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 17
    array-length p2, p1

    .line 18
    const/4 v0, 0x0

    .line 19
    move v1, v0

    .line 20
    .line 21
    :goto_0
    if-ge v1, p2, :cond_0

    .line 22
    .line 23
    aget-object v2, p1, v1

    .line 24
    .line 25
    .line 26
    const v3, 0x7f0a0ba7

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/widget/LongPushButton;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/widget/LongPushButton;->reset()V

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p3, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 53
    :cond_1
    return-void
.end method

.method public onVoteFinish(Lcom/narvii/model/Blog;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingEnd:Ljava/lang/Runnable;

    .line 25
    .line 26
    const-wide/16 v0, 0x3e8

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    :cond_0
    return-void
.end method

.method polloptSize(Lcom/narvii/model/Blog;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    :cond_2
    :goto_0
    return v0
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/high16 v0, 0x33000000

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    const/high16 v0, 0x8000000

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    const/4 p1, -0x1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_1
    const p1, -0x777778

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    :cond_2
    return-void
.end method

.method public setPoll(Lcom/narvii/model/Blog;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    iput-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->forceShowResult:Ljava/lang/Boolean;

    iget-boolean p2, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {p2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingEnd:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    .line 4
    :cond_1
    invoke-virtual {p0, p3}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    :goto_0
    return-void
.end method

.method public setPreviewBlockListener(Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    return-void
.end method

.method public setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0a06eb

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v4}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 23
    .line 24
    .line 25
    const v4, 0x7f0a0756

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Landroid/view/ViewGroup;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    .line 36
    const v4, 0x7f0a06fa

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public setVoteCallback(Lcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->voteCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setVotersSummary(ZLcom/narvii/poll/VotersSummaryResponse;Z)V
    .locals 8

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->voters:Lcom/narvii/poll/VotersSummaryResponse;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/poll/PollOptionListLayout;->polloptSize(Lcom/narvii/model/Blog;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    .line 12
    :goto_0
    iget-object v3, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 13
    array-length v3, v3

    .line 14
    .line 15
    if-ge v2, v3, :cond_5

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    iget-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Lcom/narvii/model/PollOption;

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move-object v4, v3

    .line 31
    .line 32
    :goto_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    goto :goto_2

    .line 36
    .line 37
    :cond_1
    iget-object v3, v4, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v3}, Lcom/narvii/poll/VotersSummaryResponse;->getVoter(Ljava/lang/String;)Lcom/narvii/poll/Voter;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 44
    .line 45
    aget-object v5, v5, v2

    .line 46
    .line 47
    .line 48
    const v6, 0x7f0a0b19

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v7

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    check-cast v5, Lcom/narvii/poll/VotersLayout;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 64
    .line 65
    if-nez v4, :cond_3

    .line 66
    move v4, v1

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_3
    iget v4, v4, Lcom/narvii/model/PollOption;->votesCount:I

    .line 70
    .line 71
    .line 72
    :goto_3
    invoke-virtual {v5, v6, v3, v4}, Lcom/narvii/poll/VotersLayout;->setVoter(Lcom/narvii/model/Blog;Lcom/narvii/poll/Voter;I)V

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    iget-object v4, v3, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 79
    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    new-instance v4, Lcom/narvii/util/FilterHelper;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-static {v6}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    .line 93
    invoke-direct {v4, v6}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 94
    .line 95
    iget-object v3, v3, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 103
    move-result v3

    .line 104
    .line 105
    if-nez v3, :cond_4

    .line 106
    move v3, v1

    .line 107
    goto :goto_4

    .line 108
    :cond_4
    move v3, p1

    .line 109
    .line 110
    .line 111
    :goto_4
    invoke-virtual {v5, v3, p3}, Lcom/narvii/poll/VotersLayout;->setExpand(ZZ)V

    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    return-void
.end method

.method setupCell(Landroid/view/View;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0ba7

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/LongPushButton;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0a0714

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 20
    .line 21
    iput-object p0, v0, Lcom/narvii/widget/LongPushButton;->longPressCallback:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a06eb

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0756

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method updateView(Z)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/narvii/poll/PollOptionListLayout;->polloptSize(Lcom/narvii/model/Blog;)I

    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v5, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v5

    .line 22
    move v6, v4

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v7

    .line 27
    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v7

    .line 33
    .line 34
    check-cast v7, Lcom/narvii/model/PollOption;

    .line 35
    .line 36
    iget v7, v7, Lcom/narvii/model/PollOption;->votesCount:I

    .line 37
    add-int/2addr v6, v7

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v6, v4

    .line 40
    .line 41
    :cond_1
    iget-object v5, v0, Lcom/narvii/poll/PollOptionListLayout;->forceShowResult:Ljava/lang/Boolean;

    .line 42
    const/4 v7, 0x1

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result v5

    .line 49
    goto :goto_2

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->isPollEnded()Z

    .line 53
    move-result v5

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->isPollVoted()Z

    .line 59
    move-result v5

    .line 60
    .line 61
    if-eqz v5, :cond_3

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v5, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    :goto_1
    move v5, v7

    .line 66
    .line 67
    :goto_2
    xor-int/lit8 v8, v5, 0x1

    .line 68
    .line 69
    iput-boolean v8, v0, Lcom/narvii/poll/PollOptionListLayout;->blockTouch:Z

    .line 70
    move v8, v4

    .line 71
    .line 72
    :goto_3
    if-ge v8, v3, :cond_6

    .line 73
    .line 74
    iget-object v9, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v9

    .line 79
    .line 80
    check-cast v9, Lcom/narvii/model/PollOption;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 84
    move-result-object v9

    .line 85
    .line 86
    if-eqz v9, :cond_5

    .line 87
    move v8, v4

    .line 88
    goto :goto_4

    .line 89
    .line 90
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    move v8, v7

    .line 93
    .line 94
    :goto_4
    iget-boolean v9, v0, Lcom/narvii/poll/PollOptionListLayout;->autoAdjust:Z

    .line 95
    .line 96
    if-eqz v9, :cond_9

    .line 97
    .line 98
    iget-object v9, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 99
    array-length v9, v9

    .line 100
    .line 101
    if-eq v9, v3, :cond_9

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v9

    .line 106
    .line 107
    .line 108
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 109
    move-result-object v9

    .line 110
    .line 111
    new-instance v10, Ljava/util/ArrayList;

    .line 112
    .line 113
    iget-object v11, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 114
    .line 115
    .line 116
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 117
    move-result-object v11

    .line 118
    .line 119
    .line 120
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .line 122
    .line 123
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 124
    move-result v11

    .line 125
    .line 126
    if-ge v11, v3, :cond_7

    .line 127
    .line 128
    .line 129
    const v11, 0x7f0d0622

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v11, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    move-result-object v11

    .line 134
    .line 135
    check-cast v11, Landroid/view/ViewGroup;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 139
    move-result v12

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 146
    move-result v12

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v11, v12}, Lcom/narvii/poll/PollOptionListLayout;->setupCell(Landroid/view/View;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_5

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 157
    move-result v9

    .line 158
    .line 159
    if-le v9, v3, :cond_8

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 163
    move-result v9

    .line 164
    sub-int/2addr v9, v7

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    move-result-object v9

    .line 169
    .line 170
    check-cast v9, Landroid/view/View;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    goto :goto_6

    .line 175
    .line 176
    .line 177
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 178
    move-result v9

    .line 179
    .line 180
    new-array v9, v9, [Landroid/view/ViewGroup;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 184
    move-result-object v9

    .line 185
    .line 186
    check-cast v9, [Landroid/view/ViewGroup;

    .line 187
    .line 188
    iput-object v9, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 189
    .line 190
    :cond_9
    if-eqz v2, :cond_d

    .line 191
    .line 192
    iget-object v10, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 193
    .line 194
    if-eqz v10, :cond_d

    .line 195
    .line 196
    .line 197
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    move-result-object v10

    .line 199
    move v12, v4

    .line 200
    const/4 v11, 0x0

    .line 201
    .line 202
    .line 203
    :cond_a
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v13

    .line 205
    .line 206
    if-eqz v13, :cond_e

    .line 207
    .line 208
    .line 209
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v13

    .line 211
    .line 212
    check-cast v13, Lcom/narvii/model/PollOption;

    .line 213
    .line 214
    iget v14, v13, Lcom/narvii/model/PollOption;->votesCount:I

    .line 215
    .line 216
    if-lez v14, :cond_a

    .line 217
    .line 218
    if-nez v11, :cond_b

    .line 219
    :goto_8
    move v12, v4

    .line 220
    move-object v11, v13

    .line 221
    goto :goto_7

    .line 222
    .line 223
    :cond_b
    iget v15, v11, Lcom/narvii/model/PollOption;->votesCount:I

    .line 224
    .line 225
    if-le v14, v15, :cond_c

    .line 226
    goto :goto_8

    .line 227
    .line 228
    :cond_c
    if-ne v14, v15, :cond_a

    .line 229
    move v12, v7

    .line 230
    goto :goto_7

    .line 231
    :cond_d
    move v12, v4

    .line 232
    const/4 v11, 0x0

    .line 233
    .line 234
    :cond_e
    if-nez v2, :cond_f

    .line 235
    const/4 v10, 0x0

    .line 236
    goto :goto_9

    .line 237
    .line 238
    :cond_f
    iget-object v10, v0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    .line 239
    .line 240
    iget-object v13, v2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v13}, Lcom/narvii/poll/PollService;->getVotingOption(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object v10

    .line 245
    :goto_9
    move v13, v4

    .line 246
    .line 247
    :goto_a
    iget-object v14, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 248
    array-length v14, v14

    .line 249
    .line 250
    if-ge v13, v14, :cond_29

    .line 251
    .line 252
    if-ge v13, v3, :cond_10

    .line 253
    .line 254
    iget-object v14, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 255
    .line 256
    .line 257
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    move-result-object v14

    .line 259
    .line 260
    check-cast v14, Lcom/narvii/model/PollOption;

    .line 261
    goto :goto_b

    .line 262
    :cond_10
    const/4 v14, 0x0

    .line 263
    .line 264
    :goto_b
    if-eqz v14, :cond_11

    .line 265
    .line 266
    iget-object v15, v14, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-static {v15, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    move-result v15

    .line 271
    .line 272
    if-eqz v15, :cond_11

    .line 273
    move v15, v7

    .line 274
    goto :goto_c

    .line 275
    :cond_11
    move v15, v4

    .line 276
    .line 277
    :goto_c
    iget-object v9, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 278
    .line 279
    aget-object v9, v9, v13

    .line 280
    .line 281
    const/16 v16, 0x8

    .line 282
    .line 283
    if-nez v14, :cond_12

    .line 284
    .line 285
    move/from16 v4, v16

    .line 286
    .line 287
    .line 288
    :cond_12
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 289
    .line 290
    .line 291
    const v4, 0x7f0a06eb

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    move-result-object v4

    .line 296
    .line 297
    if-eqz v14, :cond_13

    .line 298
    .line 299
    iget v7, v14, Lcom/narvii/model/PollOption;->type:I

    .line 300
    .line 301
    if-nez v7, :cond_14

    .line 302
    .line 303
    :cond_13
    if-nez v8, :cond_14

    .line 304
    const/4 v7, 0x0

    .line 305
    goto :goto_d

    .line 306
    .line 307
    :cond_14
    move/from16 v7, v16

    .line 308
    .line 309
    .line 310
    :goto_d
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    if-eqz v14, :cond_16

    .line 313
    .line 314
    iget v7, v14, Lcom/narvii/model/PollOption;->type:I

    .line 315
    .line 316
    if-eqz v7, :cond_15

    .line 317
    goto :goto_e

    .line 318
    .line 319
    .line 320
    :cond_15
    invoke-virtual {v14}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 321
    move-result-object v7

    .line 322
    .line 323
    move/from16 v19, v3

    .line 324
    goto :goto_f

    .line 325
    .line 326
    :cond_16
    :goto_e
    move/from16 v19, v3

    .line 327
    const/4 v7, 0x0

    .line 328
    .line 329
    :goto_f
    instance-of v3, v4, Lcom/narvii/widget/SecretImageView;

    .line 330
    .line 331
    if-eqz v3, :cond_17

    .line 332
    .line 333
    check-cast v4, Lcom/narvii/widget/SecretImageView;

    .line 334
    .line 335
    iget-boolean v3, v2, Lcom/narvii/model/Feed;->needHidden:Z

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v7, v3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 339
    goto :goto_10

    .line 340
    .line 341
    :cond_17
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v7}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 345
    .line 346
    .line 347
    :goto_10
    const v3, 0x7f0a0756

    .line 348
    .line 349
    .line 350
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 351
    move-result-object v3

    .line 352
    .line 353
    if-eqz v14, :cond_18

    .line 354
    .line 355
    iget v4, v14, Lcom/narvii/model/PollOption;->type:I

    .line 356
    const/4 v7, 0x1

    .line 357
    .line 358
    if-ne v4, v7, :cond_19

    .line 359
    const/4 v4, 0x0

    .line 360
    goto :goto_11

    .line 361
    :cond_18
    const/4 v7, 0x1

    .line 362
    .line 363
    :cond_19
    move/from16 v4, v16

    .line 364
    .line 365
    .line 366
    :goto_11
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    check-cast v3, Lcom/narvii/widget/CardView;

    .line 369
    .line 370
    if-eqz v14, :cond_1b

    .line 371
    .line 372
    iget v4, v14, Lcom/narvii/model/PollOption;->type:I

    .line 373
    .line 374
    if-eq v4, v7, :cond_1a

    .line 375
    goto :goto_12

    .line 376
    .line 377
    :cond_1a
    iget-object v4, v14, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 378
    .line 379
    check-cast v4, Lcom/narvii/model/Item;

    .line 380
    goto :goto_13

    .line 381
    :cond_1b
    :goto_12
    const/4 v4, 0x0

    .line 382
    .line 383
    .line 384
    :goto_13
    invoke-virtual {v3, v4}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 385
    .line 386
    if-eqz v14, :cond_1c

    .line 387
    .line 388
    iget v3, v14, Lcom/narvii/model/PollOption;->type:I

    .line 389
    .line 390
    if-nez v3, :cond_1c

    .line 391
    .line 392
    iget-object v3, v14, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 393
    const/4 v7, 0x1

    .line 394
    goto :goto_14

    .line 395
    .line 396
    :cond_1c
    if-eqz v14, :cond_1d

    .line 397
    .line 398
    iget v3, v14, Lcom/narvii/model/PollOption;->type:I

    .line 399
    const/4 v7, 0x1

    .line 400
    .line 401
    if-ne v3, v7, :cond_1e

    .line 402
    .line 403
    iget-object v3, v14, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 404
    .line 405
    if-eqz v3, :cond_1e

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 409
    move-result-object v3

    .line 410
    goto :goto_14

    .line 411
    :cond_1d
    const/4 v7, 0x1

    .line 412
    :cond_1e
    const/4 v3, 0x0

    .line 413
    .line 414
    .line 415
    :goto_14
    const v4, 0x7f0a0e9f

    .line 416
    .line 417
    .line 418
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 419
    move-result-object v4

    .line 420
    .line 421
    check-cast v4, Landroid/widget/TextView;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    const v4, 0x7f0a0ea0

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 431
    move-result-object v18

    .line 432
    .line 433
    move-object/from16 v7, v18

    .line 434
    .line 435
    check-cast v7, Landroid/widget/TextView;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    .line 440
    if-nez v12, :cond_1f

    .line 441
    .line 442
    if-ne v14, v11, :cond_1f

    .line 443
    const/4 v7, 0x1

    .line 444
    goto :goto_15

    .line 445
    :cond_1f
    const/4 v7, 0x0

    .line 446
    .line 447
    .line 448
    :goto_15
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 449
    move-result-object v3

    .line 450
    .line 451
    check-cast v3, Landroid/widget/TextView;

    .line 452
    .line 453
    .line 454
    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 455
    move-result-object v4

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 459
    .line 460
    .line 461
    const v3, 0x7f0a0ffa

    .line 462
    .line 463
    .line 464
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 465
    move-result-object v3

    .line 466
    .line 467
    check-cast v3, Landroid/widget/TextView;

    .line 468
    .line 469
    .line 470
    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 471
    move-result-object v4

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 475
    .line 476
    .line 477
    const v3, 0x7f0a02c7

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 481
    move-result-object v3

    .line 482
    .line 483
    if-eqz v14, :cond_20

    .line 484
    .line 485
    iget v4, v14, Lcom/narvii/model/PollOption;->votedValue:I

    .line 486
    .line 487
    if-lez v4, :cond_20

    .line 488
    const/4 v4, 0x0

    .line 489
    goto :goto_16

    .line 490
    .line 491
    :cond_20
    move/from16 v4, v16

    .line 492
    .line 493
    .line 494
    :goto_16
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    const v3, 0x7f0a0ba7

    .line 498
    .line 499
    .line 500
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 501
    move-result-object v3

    .line 502
    .line 503
    check-cast v3, Lcom/narvii/widget/LongPushButton;

    .line 504
    .line 505
    if-eqz v3, :cond_21

    .line 506
    .line 507
    new-instance v4, Lcom/narvii/poll/PollOptionListLayout$2;

    .line 508
    .line 509
    .line 510
    invoke-direct {v4, v0}, Lcom/narvii/poll/PollOptionListLayout$2;-><init>(Lcom/narvii/poll/PollOptionListLayout;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3, v4}, Lcom/narvii/widget/LongPushButton;->setAllowLongPushListener(Lcom/narvii/widget/LongPushButton$AllowLongPushListener;)V

    .line 514
    :cond_21
    const/4 v4, 0x4

    .line 515
    .line 516
    if-eqz v5, :cond_22

    .line 517
    move v7, v4

    .line 518
    goto :goto_17

    .line 519
    :cond_22
    const/4 v7, 0x0

    .line 520
    .line 521
    .line 522
    :goto_17
    invoke-static {v3, v7, v1}, Lcom/narvii/poll/PollOptionListLayout;->setViewVisibility(Landroid/view/View;IZ)V

    .line 523
    .line 524
    if-eqz v1, :cond_23

    .line 525
    .line 526
    if-nez v15, :cond_23

    .line 527
    goto :goto_18

    .line 528
    .line 529
    .line 530
    :cond_23
    invoke-virtual {v3, v15}, Lcom/narvii/widget/LongPushButton;->lock(Z)V

    .line 531
    .line 532
    .line 533
    :goto_18
    const v3, 0x7f0a0b8a

    .line 534
    .line 535
    .line 536
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 537
    move-result-object v3

    .line 538
    .line 539
    if-eqz v15, :cond_24

    .line 540
    const/4 v7, 0x0

    .line 541
    goto :goto_19

    .line 542
    :cond_24
    move v7, v4

    .line 543
    .line 544
    .line 545
    :goto_19
    invoke-static {v3, v7, v1}, Lcom/narvii/poll/PollOptionListLayout;->setViewVisibility(Landroid/view/View;IZ)V

    .line 546
    .line 547
    .line 548
    const v3, 0x7f0a0ff9

    .line 549
    .line 550
    .line 551
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 552
    move-result-object v3

    .line 553
    .line 554
    check-cast v3, Lcom/narvii/poll/VoteBar;

    .line 555
    .line 556
    if-eqz v5, :cond_25

    .line 557
    const/4 v4, 0x0

    .line 558
    .line 559
    .line 560
    :cond_25
    invoke-static {v3, v4, v1}, Lcom/narvii/poll/PollOptionListLayout;->setViewVisibility(Landroid/view/View;IZ)V

    .line 561
    move v7, v5

    .line 562
    .line 563
    const-wide/16 v4, 0x0

    .line 564
    .line 565
    if-nez v14, :cond_26

    .line 566
    const/4 v9, 0x0

    .line 567
    const/4 v15, 0x0

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3, v15, v9, v4, v5}, Lcom/narvii/poll/VoteBar;->setValue(ZFJ)V

    .line 571
    move v14, v6

    .line 572
    goto :goto_1c

    .line 573
    :cond_26
    const/4 v15, 0x0

    .line 574
    .line 575
    iget v9, v14, Lcom/narvii/model/PollOption;->votesCount:I

    .line 576
    int-to-float v9, v9

    .line 577
    .line 578
    const/high16 v16, 0x3f800000    # 1.0f

    .line 579
    .line 580
    mul-float v9, v9, v16

    .line 581
    int-to-float v4, v6

    .line 582
    div-float/2addr v9, v4

    .line 583
    .line 584
    iget v4, v14, Lcom/narvii/model/PollOption;->votedValue:I

    .line 585
    .line 586
    if-lez v4, :cond_27

    .line 587
    const/4 v4, 0x1

    .line 588
    goto :goto_1a

    .line 589
    :cond_27
    move v4, v15

    .line 590
    .line 591
    :goto_1a
    if-eqz v1, :cond_28

    .line 592
    .line 593
    const-wide/16 v16, 0x1f4

    .line 594
    move v14, v6

    .line 595
    .line 596
    move-wide/from16 v5, v16

    .line 597
    goto :goto_1b

    .line 598
    :cond_28
    move v14, v6

    .line 599
    .line 600
    const-wide/16 v5, 0x0

    .line 601
    .line 602
    .line 603
    :goto_1b
    invoke-virtual {v3, v4, v9, v5, v6}, Lcom/narvii/poll/VoteBar;->setValue(ZFJ)V

    .line 604
    .line 605
    :goto_1c
    add-int/lit8 v13, v13, 0x1

    .line 606
    move v5, v7

    .line 607
    move v6, v14

    .line 608
    move v4, v15

    .line 609
    .line 610
    move/from16 v3, v19

    .line 611
    const/4 v7, 0x1

    .line 612
    .line 613
    goto/16 :goto_a

    .line 614
    .line 615
    :cond_29
    iget-object v1, v0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    .line 616
    .line 617
    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 619
    move-result-object v3

    .line 620
    .line 621
    .line 622
    invoke-static {v2, v3}, Lcom/narvii/util/BlogUtils;->getPollDurationText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    .line 623
    move-result-object v2

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method
