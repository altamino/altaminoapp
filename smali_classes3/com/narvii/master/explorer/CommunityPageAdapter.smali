.class public abstract Lcom/narvii/master/explorer/CommunityPageAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "CommunityPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;,
        Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;,
        Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/master/explorer/CommunityCollection;",
        "Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ACTIONBAR_COLOR:I = -0xa9a9a9

.field public static final DEFAULT_ACTIONBAR_TEXT_COLOR:I = -0x1

.field public static final DEFAULT_SUB_BACK_COLOR:I = -0xfbdece

.field public static final DEFAULT_TBACKGROUD_COLOR:I = 0x0

.field public static final DEFAULT_TEXT_COLOR:I = -0x1


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

.field public featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

.field public pageBackGround:I

.field protected requestLanguage:Ljava/lang/String;

.field public startWithFeature:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    .line 78
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->onCommunityCollectionClicked(Lcom/narvii/master/explorer/CommunityCollection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V

    return-void
.end method

.method private getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 697
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/master/explorer/InlineUI;->backgroundColor:I

    if-eqz p1, :cond_0

    return p1

    .line 701
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    if-eqz p1, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onCommunityCollectionClicked(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 3

    .line 654
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-nez v0, :cond_0

    return-void

    .line 655
    :cond_0
    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->displayMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 656
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 657
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/master/explorer/CommunityCollection;->community:Lcom/narvii/model/Community;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object v1

    .line 659
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    .line 660
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 662
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 663
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "explored-featured"

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->community:Lcom/narvii/model/Community;

    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 665
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->communityList(Lcom/narvii/master/explorer/CommunityCollection;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 667
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 670
    :cond_4
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->communityPage(Lcom/narvii/master/explorer/CommunityCollection;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public actionbarTextColorSeted()Z
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->textColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method communityList(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 634
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/master/explorer/CommunityListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    const-string v1, "categoryName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method communityPage(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 643
    :cond_0
    const-class v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 644
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 646
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getSubBackGround(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "#%06X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "pageBackground"

    .line 647
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array v1, v1, [Ljava/lang/Object;

    .line 648
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getSubFrontColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "frontColor"

    .line 649
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Lcom/narvii/app/NVFragment;

    const-string v1, "slug"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/app/NVFragment;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 121
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "/sections"

    if-nez v1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "community-collection/view/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "community-collection/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "community-collection/view/explore/sections"

    .line 128
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 134
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;"
        }
    .end annotation

    .line 85
    const-class v0, Lcom/narvii/master/explorer/CommunityCollection;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/master/explorer/CommunityCollection;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/master/explorer/CommunityCollection;

    .line 353
    iget-object v1, p2, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    iget v1, v1, Lcom/narvii/master/explorer/InlineUI;->displayMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 355
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getActionBarBackground()I
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const v0, -0xa9a9a9

    return v0
.end method

.method public getActionbarTextColor()I
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->actionbarTextColorSeted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->textColor:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getAminoListIpc()Lcom/narvii/logging/Impression/ImpressionCollector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 174
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 148
    instance-of v0, p1, Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz v0, :cond_2

    .line 149
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 150
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    iget p1, p1, Lcom/narvii/master/explorer/InlineUI;->displayMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 210
    instance-of v0, p1, Lcom/narvii/master/explorer/CommunityCollection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 211
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 212
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_8

    const v0, 0x7f0b0351

    .line 215
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->shadowForFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const v0, 0x7f0b0352

    .line 219
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 220
    iget-object p3, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v0, p3, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_4

    .line 221
    check-cast p3, Lcom/narvii/app/NVFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p3

    .line 222
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x44480000    # 800.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 223
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43660000    # 230.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 224
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 225
    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 226
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 227
    :goto_1
    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f2e147b    # 0.68f

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-eqz v3, :cond_3

    add-int/2addr v1, v0

    .line 229
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget p3, p3, Landroid/graphics/Point;->x:I

    invoke-direct {v0, p3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const p3, 0x7f09049a

    .line 231
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/Flipper;

    .line 232
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->shadowForFeature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    invoke-virtual {p3, v4}, Lcom/narvii/widget/Flipper;->setIsallowInterceptTouchEvent(Z)V

    .line 235
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->childCommunityCollectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/master/explorer/CommunityCollection;

    .line 237
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    :cond_6
    new-instance v1, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    invoke-direct {v1, p0, p3, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/widget/Flipper;Ljava/util/List;)V

    iput-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 240
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    iput-object p1, v1, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->item:Lcom/narvii/master/explorer/CommunityCollection;

    .line 241
    invoke-virtual {p3, v1}, Lcom/narvii/widget/Flipper;->setAdapter(Lcom/narvii/widget/Flipper$FlipperAdapter;)V

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 243
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/narvii/widget/Flipper;->setCurrentItem(Ljava/lang/Object;)V

    .line 245
    :cond_7
    invoke-static {p2, p0}, Lcom/narvii/logging/LogUtils;->flipperShownInAdapter(Landroid/view/View;Lcom/narvii/list/NVAdapter;)V

    return-object p2

    :cond_8
    if-ne v0, v3, :cond_19

    const v0, 0x7f0b0348

    .line 249
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->shadowForFeature()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_9
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_b

    const v0, 0x7f0b0349

    .line 253
    :cond_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0909f4

    .line 254
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_c

    .line 256
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const p3, 0x7f0904c4

    .line 258
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/RecyclerView;

    .line 259
    invoke-static {p2, p3, p0}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Area;)V

    if-eqz p3, :cond_e

    .line 261
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_d

    .line 262
    new-instance v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/master/explorer/CommunityCollection;)V

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_4

    .line 264
    :cond_d
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->setCommunityCollection(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 265
    invoke-virtual {p3, v4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 268
    :goto_4
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 269
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 270
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_e
    const p3, 0x7f090b9a

    .line 275
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_f

    .line 277
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    const p3, 0x7f0909fa

    .line 281
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_10

    .line 283
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    const p3, 0x7f0909f3

    .line 286
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/TintButton;

    if-eqz p3, :cond_11

    .line 288
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    :cond_11
    const p3, 0x7f0902a2

    .line 291
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_12

    .line 293
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_12
    const p3, 0x7f0901b8

    .line 296
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_17

    .line 299
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_13

    .line 303
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 304
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v2

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_5

    :cond_13
    const/4 v1, 0x0

    .line 306
    :goto_5
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_15

    .line 307
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    const/4 v1, 0x0

    :goto_6
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_15
    if-eqz v3, :cond_16

    .line 310
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v0

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_17
    if-eqz v3, :cond_18

    goto :goto_8

    .line 312
    :cond_18
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    move-result v4

    :goto_8
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2

    :cond_19
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1a

    :cond_1a
    return-object v1
.end method

.method protected getSubBackGround(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 715
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    if-eqz p1, :cond_0

    return p1

    :cond_0
    const p1, -0xfbdece

    return p1
.end method

.method protected getSubFrontColor(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 723
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->textColor:I

    if-eqz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 686
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/master/explorer/InlineUI;->textColor:I

    if-eqz p1, :cond_0

    return p1

    .line 690
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->textColor:I

    if-eqz p1, :cond_1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p3, :cond_1

    .line 179
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz v0, :cond_1

    .line 180
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 181
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :goto_0
    instance-of v0, p3, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_1

    .line 186
    move-object v0, p3

    check-cast v0, Lcom/narvii/widget/NVListView;

    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    iget-object v1, v1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    iget v1, v1, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 187
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    if-eqz v1, :cond_1

    .line 188
    check-cast v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionBarBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageFragment;->setActionbarBg(I)V

    .line 189
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionbarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageFragment;->setActionbarTextColor(I)V

    .line 194
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 195
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_2

    .line 196
    instance-of p1, p3, Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p3}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    .line 197
    sget p1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 199
    :cond_2
    sget p1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    return-object p2
.end method

.method public onAttach()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_1

    .line 363
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0909f4

    if-ne v0, v1, :cond_1

    .line 364
    invoke-virtual {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz p1, :cond_0

    .line 365
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p3}, Lcom/narvii/master/explorer/CommunityCollection;->id()Ljava/lang/String;

    move-result-object p3

    const-string p4, "collectionId"

    invoke-virtual {p1, p4, p3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p3, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 367
    invoke-virtual {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->communityList(Lcom/narvii/master/explorer/CommunityCollection;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 376
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V
    .locals 1

    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 336
    iget-object p3, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 337
    iget-object p3, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->communityCollectionSections:Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 338
    iget-object p1, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->communityCollectionSections:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 339
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionBarBackground()I

    move-result p1

    iput p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    .line 342
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 60
    check-cast p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/explorer/CommunityPageAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pageBackGround"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    const-string v0, "startWithFeature"

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 95
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    iget v2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageBackGround"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-boolean v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    const-string v2, "startWithFeature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    return-void
.end method

.method public resetRecylerViewAdapter(Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f0904c4

    .line 611
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 612
    instance-of v0, p1, Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v0, :cond_0

    .line 613
    check-cast p1, Lcom/narvii/widget/HorizontalRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 614
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;",
            ">;"
        }
    .end annotation

    .line 90
    const-class v0, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    return-void
.end method

.method protected shadowForFeature()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
