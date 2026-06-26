.class public final Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "AggregationChatFragment.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 218
    new-instance p2, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter$createErrorItem$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter$createErrorItem$1;-><init>(Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo p2, "v"

    .line 219
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 240
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 244
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    goto :goto_0

    .line 246
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    :goto_0
    const-string v0, "if (position < list.size\u2026apter.ERROR\n            }"

    .line 239
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 255
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 269
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 270
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 272
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    .line 276
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 187
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 188
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x1

    const-string/jumbo v2, "v"

    if-eqz v0, :cond_5

    const v0, 0x7f0b01dd

    const-string v3, "community"

    .line 189
    invoke-virtual {p0, v0, p3, p2, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 190
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 191
    instance-of v0, p3, Lcom/narvii/widget/CommunityIconView;

    if-eqz v0, :cond_0

    .line 192
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 193
    :cond_0
    instance-of v0, p3, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 194
    check-cast p3, Lcom/narvii/widget/NVImageView;

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    const-string p3, "cell"

    .line 196
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    const p3, 0x7f090314

    .line 197
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 198
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getSelectedNdcId()I

    move-result v0

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    const/4 v3, 0x0

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 199
    :goto_1
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_4

    const v3, 0x10ffffff

    .line 200
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 201
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 203
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_6

    const p1, 0x7f0b01de

    .line 204
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 207
    :cond_6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_7

    const p1, 0x7f0b0359

    .line 208
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 210
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

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

    .line 288
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 289
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 6

    .line 174
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 175
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/narvii/chat/global/chat/AggregationChatFragment;->Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    invoke-virtual {v4}, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;->getREFRESH_COMMUNITY_LIST_DURATION()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 178
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 293
    invoke-virtual {p0, p2}, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 294
    instance-of v1, v0, Lcom/narvii/model/Community;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    check-cast v0, Lcom/narvii/model/Community;

    iget v2, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    goto :goto_0

    .line 296
    :cond_0
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "__communityId"

    .line 298
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 303
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 3

    const-string p3, "cell"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v0

    :goto_0
    const v1, 0x7f09078e

    .line 225
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 226
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 227
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x9

    if-le v0, v2, :cond_1

    const-string v2, "9+"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p1, :cond_4

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 p3, 0x8

    .line 230
    :goto_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p2, :cond_5

    .line 232
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 233
    iget-object p1, p0, Lcom/narvii/chat/global/chat/AggregationChatFragment$CommunityListAdapter;->this$0:Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment;->getChatService()Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    :cond_5
    return-void
.end method
