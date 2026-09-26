.class public final Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/AggregationBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommunityListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/AggregationBaseFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/AggregationBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/community/AggregationBaseFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 15
    return-void
.end method

.method private static final createErrorItem$lambda$0(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->onErrorRetry()V

    .line 9
    return-void
.end method

.method public static synthetic f(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->createErrorItem$lambda$0(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance p2, Lcom/narvii/community/b;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/narvii/community/b;-><init>(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 16
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge p1, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 57
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    const/4 p1, 0x2

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 25
    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    const/4 p1, 0x3

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/4 p1, -0x1

    .line 30
    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d01fc

    .line 13
    .line 14
    const-string v2, "community"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p2, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const p3, 0x7f0a06d5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    check-cast p3, Landroid/widget/ImageView;

    .line 28
    .line 29
    instance-of v0, p3, Lcom/narvii/widget/CommunityIconView;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 34
    move-object v0, p1

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/model/Community;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    instance-of v0, p3, Lcom/narvii/widget/NVImageView;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 47
    move-object v0, p1

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/model/Community;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 58
    .line 59
    check-cast p1, Lcom/narvii/model/Community;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 63
    .line 64
    .line 65
    const p3, 0x7f0a03ec

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    .line 75
    move-result v0

    .line 76
    .line 77
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 78
    const/4 v2, 0x0

    .line 79
    .line 80
    if-ne v0, p1, :cond_2

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v1, v2

    .line 83
    .line 84
    :goto_1
    if-eqz v1, :cond_3

    .line 85
    move p1, v2

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_3
    const/16 p1, 0x8

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    const p3, 0x7f06002b

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 106
    move-result v2

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-object p2

    .line 116
    .line 117
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 118
    .line 119
    if-ne p1, v0, :cond_6

    .line 120
    .line 121
    .line 122
    const p1, 0x7f0d01fd

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 135
    return-object p1

    .line 136
    .line 137
    :cond_6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 138
    .line 139
    if-ne p1, v0, :cond_7

    .line 140
    .line 141
    .line 142
    const p1, 0x7f0d0393

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    iget-object p2, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 159
    return-object p1

    .line 160
    .line 161
    :cond_7
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 173
    move-result-object p1

    .line 174
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    :goto_0
    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->isListShown()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide v2

    .line 35
    .line 36
    sget-object v4, Lcom/narvii/community/AggregationBaseFragment;->Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/narvii/community/AggregationBaseFragment$Companion;->getREFRESH_COMMUNITY_LIST_DURATION()J

    .line 40
    move-result-wide v4

    .line 41
    sub-long/2addr v2, v4

    .line 42
    .line 43
    cmp-long v0, v0, v2

    .line 44
    .line 45
    if-gez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const/16 v1, 0x100

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    .line 10
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/Community;

    .line 13
    .line 14
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    const-string p2, "__communityId"

    .line 35
    const/4 p3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public final updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/narvii/community/AggregationBaseFragment;->getBadgeCount(Lcom/narvii/model/Community;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    const v2, 0x7f0a0a29

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_6

    .line 29
    .line 30
    instance-of v2, p1, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    move-object v2, p1

    .line 34
    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    const/16 v3, 0x9

    .line 38
    .line 39
    if-le v0, v3, :cond_0

    .line 40
    .line 41
    const-string v3, "9+"

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    :cond_1
    if-nez v1, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 55
    .line 56
    :cond_2
    if-lez v0, :cond_4

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    const v1, 0x7f010037

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    :cond_3
    const/4 v0, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_4
    if-eqz v1, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 89
    move-result v0

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f010039

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    .line 107
    :cond_5
    const/16 v0, 0x8

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    :cond_6
    :goto_1
    if-nez p2, :cond_7

    .line 113
    const/4 p1, 0x0

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_7
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iget v0, p2, Lcom/narvii/model/Community;->id:I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    :goto_2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p3, p2, p1}, Lcom/narvii/community/AggregationBaseFragment;->addReminderRequest(ZLcom/narvii/model/Community;Lcom/narvii/community/ReminderCheck;)V

    .line 132
    return-void
.end method
