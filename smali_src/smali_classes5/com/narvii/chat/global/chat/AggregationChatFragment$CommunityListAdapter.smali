.class public final Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/AggregationChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommunityListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/AggregationChatFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/global/chat/AggregationChatFragment;
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
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

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

.method private static final createErrorItem$lambda$0(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->onErrorRetry()V

    .line 9
    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->createErrorItem$lambda$0(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;Landroid/view/View;)V

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
    new-instance p2, Lcom/narvii/chat/global/chat/c;

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/c;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;)V

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

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
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getSelectedNdcId()I

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
    .line 96
    const v2, 0x10ffffff

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-object p2

    .line 106
    .line 107
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 108
    .line 109
    if-ne p1, v0, :cond_6

    .line 110
    .line 111
    .line 112
    const p1, 0x7f0d01fd

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 125
    return-object p1

    .line 126
    .line 127
    :cond_6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 128
    .line 129
    if-ne p1, v0, :cond_7

    .line 130
    .line 131
    .line 132
    const p1, 0x7f0d0393

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 149
    return-object p1

    .line 150
    .line 151
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 163
    move-result-object p1

    .line 164
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
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->isListShown()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    sget-object v4, Lcom/narvii/chat/global/chat/AggregationChatFragment;->Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;->getREFRESH_COMMUNITY_LIST_DURATION()J

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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
    invoke-virtual {p0, p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/Community;

    .line 13
    .line 14
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onItemSelected(ILcom/narvii/model/Community;)V

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
    invoke-static {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

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
    .locals 3
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
    const-string p3, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p3, 0x0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    move v0, p3

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    :goto_0
    const v1, 0x7f0a0a29

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    instance-of v1, p1, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    move-object v1, p1

    .line 35
    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    .line 38
    const/16 v2, 0x9

    .line 39
    .line 40
    if-le v0, v2, :cond_1

    .line 41
    .line 42
    const-string v2, "9+"

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    :cond_2
    if-nez p1, :cond_3

    .line 53
    goto :goto_3

    .line 54
    .line 55
    :cond_3
    if-lez v0, :cond_4

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_4
    const/16 p3, 0x8

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    :goto_3
    if-eqz p2, :cond_5

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 87
    :cond_5
    return-void
.end method
