.class public final Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "AggregationBaseFragment.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 267
    new-instance p2, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter$createErrorItem$1;

    invoke-direct {p2, p0}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter$createErrorItem$1;-><init>(Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo p2, "v"

    .line 268
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 302
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 304
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    goto :goto_0

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 306
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    goto :goto_0

    .line 308
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    :goto_0
    const-string v0, "if (position < list.size\u2026apter.ERROR\n            }"

    .line 301
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 317
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 331
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 332
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 334
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    .line 338
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

    .line 236
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 237
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x1

    const-string/jumbo v2, "v"

    if-eqz v0, :cond_5

    const v0, 0x7f0b01dd

    const-string v3, "community"

    .line 238
    invoke-virtual {p0, v0, p3, p2, v3}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 239
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 240
    instance-of v0, p3, Lcom/narvii/widget/CommunityIconView;

    if-eqz v0, :cond_0

    .line 241
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 242
    :cond_0
    instance-of v0, p3, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 243
    check-cast p3, Lcom/narvii/widget/NVImageView;

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    const-string p3, "cell"

    .line 245
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    const p3, 0x7f090314

    .line 246
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 247
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getSelectedNdcId()I

    move-result v0

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    const/4 v3, 0x0

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 248
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

    .line 249
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f06002a

    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 252
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_6

    const p1, 0x7f0b01de

    .line 253
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 256
    :cond_6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_7

    const p1, 0x7f0b0359

    .line 257
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {p2}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 259
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 261
    :cond_7
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

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

    .line 350
    invoke-virtual {p0, p1}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 351
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

    .line 346
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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

    .line 223
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 224
    invoke-virtual {p0}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/narvii/community/AggregationBaseFragment;->Companion:Lcom/narvii/community/AggregationBaseFragment$Companion;

    invoke-virtual {v4}, Lcom/narvii/community/AggregationBaseFragment$Companion;->getREFRESH_COMMUNITY_LIST_DURATION()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 227
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

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

    .line 232
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 355
    invoke-virtual {p0, p2}, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 356
    instance-of v1, v0, Lcom/narvii/model/Community;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    check-cast v0, Lcom/narvii/model/Community;

    iget v2, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2, v0}, Lcom/narvii/community/AggregationBaseFragment;->onItemSelected(ILcom/narvii/model/Community;)V

    goto :goto_0

    .line 358
    :cond_0
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "__communityId"

    .line 360
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 365
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 4

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0, p2}, Lcom/narvii/community/AggregationBaseFragment;->getBadgeCount(Lcom/narvii/model/Community;)I

    move-result v0

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f09078e

    .line 275
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 277
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 278
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x9

    if-le v0, v3, :cond_0

    const-string v3, "9+"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez v1, :cond_2

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_2
    if-lez v0, :cond_4

    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 290
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    const/16 v0, 0x8

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    if-nez p2, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    .line 295
    :cond_7
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/community/AggregationBaseFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    iget v0, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object p1

    .line 296
    :goto_2
    iget-object v0, p0, Lcom/narvii/community/AggregationBaseFragment$CommunityListAdapter;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-virtual {v0, p3, p2, p1}, Lcom/narvii/community/AggregationBaseFragment;->addReminderRequest(ZLcom/narvii/model/Community;Lcom/narvii/community/ReminderCheck;)V

    return-void
.end method
