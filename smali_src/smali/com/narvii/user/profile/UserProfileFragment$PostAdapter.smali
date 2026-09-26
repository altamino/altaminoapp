.class Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostAdapter"
.end annotation


# instance fields
.field adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 9
    .line 10
    const-string p1, "User Profile"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->shareSource:Ljava/lang/String;

    .line 15
    .line 16
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 19
    return-void
.end method

.method private createAdItem()Lcom/narvii/model/Blog;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 10
    return-object v0
.end method


# virtual methods
.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

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
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    const p3, 0x7f0d0777

    .line 28
    .line 29
    const-string v0, "blogEmpty"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 36
    .line 37
    .line 38
    const p3, 0x7f0a04eb

    .line 39
    .line 40
    .line 41
    const v0, -0x555556

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p1, p3, v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$100(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;II)V

    .line 45
    return-object p1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    new-instance p2, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter$1;

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p0}, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    if-lez p3, :cond_2

    .line 60
    .line 61
    const/16 p2, 0x8

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_2
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/blog"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "type"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "user"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "q"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->createAdItem()Lcom/narvii/model/Blog;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Posts"

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a09f9

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    const/16 p3, 0x8

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const p2, 0x7f0a0171

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const p2, 0x7f0a0f36

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const p2, 0x7f0a0f38

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p2

    .line 50
    const/4 p3, -0x1

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    .line 68
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 69
    const/4 v0, -0x2

    .line 70
    .line 71
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    const/high16 v1, 0x40800000    # 4.0f

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 81
    move-result v0

    .line 82
    float-to-int v0, v0

    .line 83
    .line 84
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const/high16 v1, 0x40c00000    # 6.0f

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 94
    move-result v0

    .line 95
    float-to-int v0, v0

    .line 96
    .line 97
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 98
    .line 99
    .line 100
    :cond_3
    const p2, 0x7f0a0d1a

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    instance-of p2, p2, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 107
    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$200(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    const-string p2, "FeedDetailFragment"

    .line 117
    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$300(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    const-string p1, "MediaLab MedRect - New ad view ready"

    .line 133
    .line 134
    .line 135
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    const p2, 0x7f070056

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 150
    move-result p1

    .line 151
    .line 152
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    .line 154
    mul-int/lit8 p1, p1, 0x2

    .line 155
    .line 156
    sget-object v0, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lai/medialab/medialabads2/data/AdSize;->getHeightPx(Landroid/content/Context;)I

    .line 164
    move-result v0

    .line 165
    add-int/2addr p1, v0

    .line 166
    .line 167
    .line 168
    invoke-direct {p2, p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 169
    .line 170
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$400(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 180
    .line 181
    .line 182
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$500(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-static {p1}, Lcom/narvii/util/MLUtilsKt;->centerMRECView(Lai/medialab/medialabads2/banners/MediaLabAdView;)Lw7/l0;

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$600(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 195
    .line 196
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$700(Lcom/narvii/user/profile/UserProfileFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    .line 203
    :cond_4
    const-string p1, "adView returns null"

    .line 204
    .line 205
    .line 206
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 209
    :cond_5
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/model/Blog;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 39
    return-void

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 43
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
