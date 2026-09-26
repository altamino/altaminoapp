.class public Lcom/narvii/feed/SubTypeFeedListFragment;
.super Lcom/narvii/feed/FeedListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;
    }
.end annotation


# static fields
.field public static final TYPE_BLOGS_RECENT:Ljava/lang/String; = "blogs-recent"

.field public static final TYPE_EXTERNAL_POST:Ljava/lang/String; = "external-posts-recent"

.field public static final TYPE_IMAGES_RECENT:Ljava/lang/String; = "images-recent"

.field public static final TYPE_LINK_RECENT:Ljava/lang/String; = "links-recent"

.field public static final TYPE_POLLS_RECENT:Ljava/lang/String; = "polls-recent"

.field public static final TYPE_QUESTIONS_RECENT:Ljava/lang/String; = "questions-recent"

.field public static final TYPE_QUIZZES_RECENT:Ljava/lang/String; = "quizzes-recent"

.field public static final TYPE_STORIES_RECENT:Ljava/lang/String; = "stories-recent"


# instance fields
.field private attachFragmentView:Landroid/view/View;

.field private externaleSourceCount:I

.field private feedAdapter:Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

.field private menuListener:Landroid/view/View$OnClickListener;

.field private selectedExternalSource:Lcom/narvii/model/ExternalSource;

.field private selectedFilterChannelId:Ljava/lang/String;

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeedListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/feed/SubTypeFeedListFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/feed/SubTypeFeedListFragment$1;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->menuListener:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method

.method private showChannelFilter()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_1
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/feed/SubTypeFeedListFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->sourceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/feed/SubTypeFeedListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->externaleSourceCount:I

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/feed/SubTypeFeedListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/SubTypeFeedListFragment;->showChannelFilter()V

    return-void
.end method


# virtual methods
.method public collapse(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/feed/SubTypeFeedListFragment$3;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/feed/SubTypeFeedListFragment$3;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;Landroid/view/View;I)V

    .line 10
    .line 11
    const-wide/16 v2, 0xc8

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    return-void
.end method

.method protected createFeedAdapter(Landroid/os/Bundle;)Lcom/narvii/feed/FeedListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->feedAdapter:Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

    .line 8
    return-object p1
.end method

.method public expand(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void

    .line 22
    :cond_0
    int-to-float v0, v0

    .line 23
    .line 24
    .line 25
    const v2, 0x3f4ccccd    # 0.8f

    .line 26
    mul-float/2addr v0, v2

    .line 27
    float-to-int v0, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/feed/SubTypeFeedListFragment$2;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/feed/SubTypeFeedListFragment$2;-><init>(Lcom/narvii/feed/SubTypeFeedListFragment;Landroid/view/View;I)V

    .line 43
    .line 44
    const-wide/16 v2, 0xc8

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    return-void
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a014b

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "title"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    :cond_0
    const-string v0, "external-posts-recent"

    .line 25
    .line 26
    const-string v1, "type"

    .line 27
    .line 28
    if-nez p1, :cond_8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string v3, "blogs-recent"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const-string v2, "Blogs"

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    const-string v3, "polls-recent"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const-string v2, "Polls"

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    const-string v3, "questions-recent"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    const-string v2, "Questions"

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    const-string v3, "images-recent"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    const-string v2, "Image Posts"

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_4
    const-string v3, "links-recent"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    const-string v2, "Link Posts"

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    const-string v2, "External Content"

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_6
    const-string v3, "stories-recent"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v2

    .line 103
    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    const-string v2, "Stories"

    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 v2, 0x0

    .line 109
    .line 110
    :goto_0
    if-eqz v2, :cond_8

    .line 111
    .line 112
    iput-object v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->sourceName:Ljava/lang/String;

    .line 113
    .line 114
    const-string v3, "statistics"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    check-cast v3, Lcom/narvii/util/statistics/StatisticsService;

    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v5, " Page Opened"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-interface {v3, v4}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    const-string v4, "Source"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v2, " Page Opened Total"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 172
    .line 173
    :cond_8
    if-eqz p1, :cond_9

    .line 174
    .line 175
    const-string v2, "selectedFilterChannelId"

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 180
    .line 181
    iput-object v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    .line 182
    .line 183
    const-string v2, "selectedSource"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    const-class v3, Lcom/narvii/model/ExternalSource;

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    check-cast v2, Lcom/narvii/model/ExternalSource;

    .line 196
    .line 197
    iput-object v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    .line 198
    .line 199
    .line 200
    :cond_9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v0

    .line 206
    .line 207
    if-eqz v0, :cond_b

    .line 208
    .line 209
    if-nez p1, :cond_a

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    new-instance v0, Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 216
    .line 217
    .line 218
    invoke-direct {v0}, Lcom/narvii/feed/ExternalChannelFilterFragment;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p0}, Lcom/narvii/feed/ExternalChannelFilterFragment;->setFilterChangeListener(Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    const v1, 0x7f0a014b

    .line 229
    .line 230
    const-string v2, "channelFilter"

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 238
    :cond_a
    const/4 p1, 0x1

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 242
    :cond_b
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f121019

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0d06a3

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    const v1, 0x7f0d06a4

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    const v0, 0x3f59999a    # 0.85f

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a04da

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 54
    move-result p2

    .line 55
    .line 56
    if-nez p2, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->menuListener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d032b

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onFilterChanged(Lcom/narvii/model/ExternalSource;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_1
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->feedAdapter:Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    .line 55
    const p1, 0x7f120e3f

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_4
    iget-object p1, p1, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    :goto_1
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    const-string p1, "statistics"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 79
    .line 80
    const-string v0, "External Content Filtered"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string v0, "External Content Filtered Total"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0d06a3

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/feed/SubTypeFeedListFragment;->showChannelFilter()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d06a3

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->externaleSourceCount:I

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    .line 36
    const v0, 0x7f121019

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    iget-object v0, v0, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    :goto_1
    const v1, 0x7f0a0e51

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Landroid/widget/TextView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 56
    move-result v4

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_3
    const/16 v3, 0x8

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "selectedFilterChannelId"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedFilterChannelId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->selectedExternalSource:Lcom/narvii/model/ExternalSource;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "selectedSource"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a014b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 19
    move-result p1

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0701ed

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0700d1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    move-result v0

    .line 45
    add-int/2addr p1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move p1, p2

    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment;->attachFragmentView:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2, p1, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    return-void
.end method

.method protected optinAds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
