.class public final Lcom/narvii/topic/TopicTabFragment;
.super Lcom/narvii/nested/CoordinateTabFragment;
.source "TopicTabFragment.kt"

# interfaces
.implements Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/TopicTabFragment$Behavior;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicTabFragment.kt\ncom/narvii/topic/TopicTabFragment\n*L\n1#1,424:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private bodyContent:Landroid/view/View;

.field private errorMessage:Ljava/lang/String;

.field private ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private isRequestSent:Z

.field public languageService:Lcom/narvii/language/ContentLanguageService;

.field private final numFmt:Ljava/text/NumberFormat;

.field private pageStatusView:Lcom/narvii/paging/state/PageStatusView;

.field private status:I

.field private subTopicAdapter:Lcom/narvii/topic/adapter/SubTopicAdapter;

.field private subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

.field private tabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/story/StoryTopicTab;",
            ">;"
        }
    .end annotation
.end field

.field private topic:Lcom/narvii/model/story/StoryTopic;

.field private topicBackground:Lcom/narvii/widget/NVImageView;

.field private topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

.field private topicId:I

.field private topicOnlineContainer:Landroid/view/View;

.field private topicOnlineCount:Landroid/widget/TextView;

.field private topicTitle:Landroid/widget/TextView;

.field private topicTitleTop:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->numFmt:Ljava/text/NumberFormat;

    .line 85
    new-instance v0, Lcom/narvii/topic/TopicTabFragment$ipc$1;

    const-class v1, Lcom/narvii/model/story/StoryTopic;

    invoke-direct {v0, v1}, Lcom/narvii/topic/TopicTabFragment$ipc$1;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    return-void
.end method

.method public static final synthetic access$updateHeaderViews(Lcom/narvii/topic/TopicTabFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/topic/TopicTabFragment;->updateHeaderViews()V

    return-void
.end method

.method private final updateHeaderViews()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {v0, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_5

    .line 333
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/narvii/model/story/StoryTopic;->style:Lcom/narvii/model/story/StoryTopic$Style;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/narvii/model/story/StoryTopic$Style;->backgroundImage:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_7
    return-void
.end method

.method private final updateTabLayout()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final clearSubTopicImpression()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    invoke-static {v0, p0}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 361
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    .line 364
    :cond_0
    iget p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    :goto_0
    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 8

    .line 287
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v3, Lcom/narvii/app/NVFragment;

    aput-object v3, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v4, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/story/StoryTopicTab;

    .line 295
    iget-object v6, v5, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/narvii/topic/model/TopicTabHelper;->getMappedTitle(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v6, v5, Lcom/narvii/model/story/StoryTopicTab;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v5, v5, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/topic/model/TopicTabHelper;->getMappedClzz(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 299
    iget v6, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    const-string v7, "key_topic_id"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    iget-object v6, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "topic"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<out com.narvii.app.NVFragment>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_2
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1

    .line 377
    new-instance v0, Lcom/narvii/nested/tab/ScrollTabViewDelegate;

    invoke-direct {v0}, Lcom/narvii/nested/tab/ScrollTabViewDelegate;-><init>()V

    return-object v0
.end method

.method protected defaultTabIndex()I
    .locals 6

    const-string v0, "key_default_tab"

    .line 222
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/narvii/model/story/StoryTopicTab;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    :cond_1
    check-cast v2, Lcom/narvii/model/story/StoryTopicTab;

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 226
    :cond_3
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    move-result v0

    return v0
.end method

.method public final getBodyContent()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getIpc()Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    return-object v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "languageService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNumFmt()Ljava/text/NumberFormat;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->numFmt:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopicView"

    return-object v0
.end method

.method public final getPageStatusView()Lcom/narvii/paging/state/PageStatusView;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    return v0
.end method

.method public final getSubTopicAdapter()Lcom/narvii/topic/adapter/SubTopicAdapter;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicAdapter:Lcom/narvii/topic/adapter/SubTopicAdapter;

    return-object v0
.end method

.method public final getSubTopicRecycleView()Lcom/narvii/widget/recycleview/NVRecyclerView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-object v0
.end method

.method public final getTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/story/StoryTopicTab;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0682

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090b41

    .line 350
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final getTopicBackground()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getTopicBookmarkView()Lcom/narvii/topic/widgets/TopicSubscribeView;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    return-object v0
.end method

.method public final getTopicId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    return v0
.end method

.method public final getTopicOnlineContainer()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    return-object v0
.end method

.method public final getTopicOnlineCount()Landroid/widget/TextView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTopicTitle()Landroid/widget/TextView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTopicTitleTop()Landroid/widget/TextView;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isRequestSent()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    return v0
.end method

.method public final logSubTopicImpression()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    invoke-static {v0, v1, p0}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 390
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->logSubTopicImpression()V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->clearSubTopicImpression()V

    :goto_0
    return-void
.end method

.method public onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 2

    .line 369
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 374
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onCollapseStatusChanged(Z)V
    .locals 0

    .line 408
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onCollapseStatusChanged(Z)V

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->clearSubTopicImpression()V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->logSubTopicImpression()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "topic"

    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/story/StoryTopic;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    iput-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 96
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    const-string v2, "key_topic_id"

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/story/StoryTopic;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/story/StoryTopic;

    iput-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 99
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    const-string v0, "isRequestSent"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    const-string v0, "errorMessage"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "content_language"

    .line 104
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 105
    new-instance p1, Lcom/narvii/topic/adapter/SubTopicAdapter;

    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    invoke-direct {p1, p0, v0}, Lcom/narvii/topic/adapter/SubTopicAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicAdapter:Lcom/narvii/topic/adapter/SubTopicAdapter;

    .line 106
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicAdapter:Lcom/narvii/topic/adapter/SubTopicAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/narvii/topic/adapter/SubTopicAdapter;->setTopicPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V

    :cond_3
    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    .line 206
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0804da

    .line 207
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 208
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0303

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    .line 213
    sget-object p1, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ShareIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 214
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromTopic(Lcom/narvii/app/NVContext;Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    const/4 p1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 399
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "SubTopic"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 400
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    invoke-virtual {v0, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 402
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    .line 404
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "topic"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    const-string v1, "key_topic_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-boolean v0, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    const-string v1, "isRequestSent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    const-string v1, "errorMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09093b

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/recycleview/NVRecyclerView;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 131
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicAdapter:Lcom/narvii/topic/adapter/SubTopicAdapter;

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 134
    :cond_1
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p2, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->setListView(Landroid/view/ViewGroup;)V

    .line 135
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz p2, :cond_2

    new-instance v1, Lcom/narvii/topic/TopicTabFragment$onViewCreated$1;

    invoke-direct {v1, p0}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$1;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    const p2, 0x7f090817

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/paging/state/PageStatusView;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 145
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    .line 146
    :cond_3
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p2, :cond_4

    const v1, 0x7f0b049c

    invoke-virtual {p2, v1}, Lcom/narvii/paging/state/PageStatusView;->setEmptyView(I)Landroid/view/View;

    .line 147
    :cond_4
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p2, :cond_5

    new-instance v1, Lcom/narvii/topic/TopicTabFragment$onViewCreated$2;

    invoke-direct {v1, p0}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$2;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/paging/state/PageStatusView;->setErrorRetryListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_5
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p2, :cond_6

    new-instance v1, Lcom/narvii/topic/TopicTabFragment$onViewCreated$3;

    invoke-direct {v1, p0}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$3;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/paging/state/PageStatusView;->setEmptyRetryListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_6
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p2, :cond_7

    const-wide v1, 0xffd7d3d3L

    long-to-int v2, v1

    invoke-virtual {p2, v2}, Lcom/narvii/paging/state/PageStatusView;->setDarkThemeColor(I)V

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->sendTopicMetadataRequest()V

    const p2, 0x7f09013e

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    const-wide v1, 0xff130e43L

    long-to-int p2, v1

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_a

    .line 159
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    if-eqz p2, :cond_9

    check-cast p2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p2

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v1

    const v2, 0x7f0902e6

    .line 161
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "view.findViewById<View>(\u2026d.coordinate_top_content)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p2, v1

    invoke-virtual {v2, p2}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 160
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_0
    const p2, 0x7f090bc5

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    .line 165
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_b

    sget-object v1, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;->INSTANCE:Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    :cond_b
    const p2, 0x7f090bcf

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    const p2, 0x7f090bd0

    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    const p2, 0x7f0907b5

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    const p2, 0x7f0907b6

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineCount:Landroid/widget/TextView;

    const p2, 0x7f090bc6

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/topic/widgets/TopicSubscribeView;

    iput-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 181
    invoke-direct {p0}, Lcom/narvii/topic/TopicTabFragment;->updateHeaderViews()V

    .line 182
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz p2, :cond_c

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_c
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    if-eqz p2, :cond_d

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    :cond_d
    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    if-eqz p2, :cond_e

    new-instance v1, Lcom/narvii/topic/TopicTabFragment$onViewCreated$5;

    invoke-direct {v1, p0}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$5;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    invoke-virtual {p2, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V

    .line 190
    :cond_e
    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->updateTabView(I)V

    .line 192
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_story_topic"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    const-string v1, "key_entry"

    .line 194
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v0, 0x7f090889

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntryView;

    const-wide v0, 0xff6d43ebL

    long-to-int v1, v0

    .line 196
    invoke-virtual {p1, v1}, Lcom/narvii/post/entry/PostEntryView;->setButtonColor(I)V

    .line 197
    new-instance v0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;

    invoke-direct {v0, p0, p2}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$6;-><init>(Lcom/narvii/topic/TopicTabFragment;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lcom/narvii/post/entry/PostEntryView;->setOnPostButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final sendTopicMetadataRequest()V
    .locals 4

    const/4 v0, 0x1

    .line 230
    iput v0, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    .line 231
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->updateViews()V

    .line 232
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 236
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 237
    new-instance v2, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;

    const-class v3, Lcom/narvii/model/story/StoryTopicMetaResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;-><init>(Lcom/narvii/topic/TopicTabFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_0
    const-string v0, "languageService"

    .line 235
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setBodyContent(Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    return-void
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    return-void
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setPageStatusView(Lcom/narvii/paging/state/PageStatusView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    return-void
.end method

.method public final setRequestSent(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/narvii/topic/TopicTabFragment;->isRequestSent:Z

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    return-void
.end method

.method public final setSubTopicAdapter(Lcom/narvii/topic/adapter/SubTopicAdapter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicAdapter:Lcom/narvii/topic/adapter/SubTopicAdapter;

    return-void
.end method

.method public final setSubTopicRecycleView(Lcom/narvii/widget/recycleview/NVRecyclerView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-void
.end method

.method public final setTabList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/story/StoryTopicTab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->tabList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method

.method public final setTopicBackground(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicBackground:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public final setTopicBookmarkView(Lcom/narvii/topic/widgets/TopicSubscribeView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicBookmarkView:Lcom/narvii/topic/widgets/TopicSubscribeView;

    return-void
.end method

.method public final setTopicId(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicId:I

    return-void
.end method

.method public final setTopicOnlineContainer(Landroid/view/View;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineContainer:Landroid/view/View;

    return-void
.end method

.method public final setTopicOnlineCount(Landroid/widget/TextView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicOnlineCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setTopicTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setTopicTitleTop(Landroid/widget/TextView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment;->topicTitleTop:Landroid/widget/TextView;

    return-void
.end method

.method public final updateViews()V
    .locals 4

    .line 308
    invoke-direct {p0}, Lcom/narvii/topic/TopicTabFragment;->updateTabLayout()V

    .line 309
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->subTopicRecycleView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/narvii/topic/TopicTabFragment;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/narvii/model/story/StoryTopic;->subTopicList:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-lez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    invoke-virtual {v0, v3}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/narvii/topic/TopicTabFragment;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    :cond_6
    iget-object v0, p0, Lcom/narvii/topic/TopicTabFragment;->bodyContent:Landroid/view/View;

    if-eqz v0, :cond_8

    iget v3, p0, Lcom/narvii/topic/TopicTabFragment;->status:I

    if-nez v3, :cond_7

    const/4 v1, 0x0

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method
