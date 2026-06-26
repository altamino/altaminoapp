.class public final Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "PostListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/PostListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PostSectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostListAdapter.kt\ncom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter\n*L\n1#1,347:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final deviceId$delegate:Lkotlin/Lazy;

.field private final deviceService$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/narvii/topic/adapter/PostListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "deviceService"

    const-string v4, "getDeviceService()Lcom/narvii/util/deviceid/DeviceIDService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "deviceId"

    const-string v4, "getDeviceId()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/app/NVContext;)V
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

    .line 174
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 176
    new-instance p1, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceService$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceService$2;-><init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->deviceService$delegate:Lkotlin/Lazy;

    .line 177
    new-instance p1, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceId$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$deviceId$2;-><init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->deviceId$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 180
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$shouldShowDownloadMasterDialog(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;I)Z
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-super {p0, p1, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->completeLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 207
    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/ModuleLogUtils;->completeModuleExtraInfo(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->isReadyToRequest()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "contentModule.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->deviceId$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceService()Lcom/narvii/util/deviceid/DeviceIDService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->deviceService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    return-object v0
.end method

.method protected isHeadline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    .line 278
    new-instance v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$notifyDataSetChanged$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$notifyDataSetChanged$1;-><init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 293
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 294
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-static {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/PostListAdapter;)Lcom/narvii/util/EventDispatcher;

    move-result-object p1

    sget-object p2, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;->INSTANCE:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onFailResponse$1;

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 225
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904fe

    if-ne v1, v2, :cond_1

    .line 226
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const-string p2, "affiliations"

    .line 227
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "getService(\"affiliations\")"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/community/AffiliationsService;

    if-eqz p3, :cond_0

    .line 228
    move-object p4, p3

    check-cast p4, Lcom/narvii/model/Feed;

    iget p4, p4, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p2, p4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    const p2, 0x7f0f06d5

    const/4 p4, 0x0

    .line 229
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 230
    new-instance p2, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;

    invoke-direct {p2, p0, p3}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onItemClick$1;-><init>(Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 238
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v0

    .line 228
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.Feed"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_1
    instance-of v1, p3, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_4

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/Blog;

    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    if-eqz p5, :cond_2

    .line 243
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090571

    if-eq v2, v3, :cond_3

    :cond_2
    if-nez p5, :cond_4

    iget v2, v1, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v2, :cond_4

    .line 244
    :cond_3
    new-instance p1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    check-cast p3, Lcom/narvii/model/Feed;

    invoke-direct {p1, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 245
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string p2, "global-search-player"

    .line 246
    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 247
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 248
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 250
    new-instance p2, Lcom/narvii/story/StoryHelper;

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, p4}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2, p5, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    return v0

    .line 255
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLoginResult(ZLandroid/content/Intent;)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 0

    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    .line 285
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 286
    iget-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-static {p1}, Lcom/narvii/topic/adapter/PostListAdapter;->access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/PostListAdapter;)Lcom/narvii/util/EventDispatcher;

    move-result-object p1

    sget-object p2, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onPageResponse$1;->INSTANCE:Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter$onPageResponse$1;

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 174
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-static {v0, p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter;->access$onSubviewClick(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public resetEmptyList()V
    .locals 1

    .line 268
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 269
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 264
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->this$0:Lcom/narvii/topic/adapter/PostListAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/PostListAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/headlines/HeadlineListResponse;",
            ">;"
        }
    .end annotation

    .line 273
    const-class v0, Lcom/narvii/master/search/GlobalPostListResponse;

    return-object v0
.end method

.method protected showPromote()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
