.class public abstract Lcom/narvii/master/explorer/CommunityPageAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;,
        Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;,
        Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryViewHolder;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 12
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/narvii/master/explorer/CommunityPageAdapter;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V

    .line 4
    return-void
.end method

.method private getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/master/explorer/InlineUI;->backgroundColor:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    return p1

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method static bridge synthetic m(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->onCommunityCollectionClicked(Lcom/narvii/master/explorer/CommunityCollection;)V

    return-void
.end method

.method private onCommunityCollectionClicked(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->displayMode:I

    .line 8
    const/4 v1, 0x3

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iget-object v2, p1, Lcom/narvii/master/explorer/CommunityCollection;->community:Lcom/narvii/model/Community;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    const-string v1, "explored-featured"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->community:Lcom/narvii/model/Community;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x2

    .line 70
    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->communityList(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v1, 0x1

    .line 77
    .line 78
    if-ne v0, v1, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->communityPage(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 97
    :cond_5
    :goto_0
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public actionbarTextColorSeted()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->textColor:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method communityList(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-class v2, Lcom/narvii/master/explorer/CommunityListActivity;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    const-string v1, "id"

    .line 17
    .line 18
    iget-object v2, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "title"

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "categoryName"

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method communityPage(Lcom/narvii/master/explorer/CommunityCollection;)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-class v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "id"

    .line 12
    .line 13
    iget-object v2, p1, Lcom/narvii/master/explorer/CommunityCollection;->collectionId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    const-string v1, "title"

    .line 19
    .line 20
    iget-object v2, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    new-array v2, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getSubBackGround(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 30
    move-result v3

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    aput-object v3, v2, v4

    .line 38
    .line 39
    const-string v3, "#%06X"

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-string v5, "pageBackground"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getSubFrontColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 54
    move-result p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    aput-object p1, v1, v4

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string v1, "frontColor"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    const-string v1, "slug"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 19
    .line 20
    const-string v2, "id"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    move-object v1, v0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    const-string v3, "/sections"

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "community-collection/view/"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v2, "community-collection/"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_2
    const-string v0, "community-collection/view/explore/sections"

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    .line 96
    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    iput-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    .line 106
    .line 107
    :cond_3
    const-string v1, "language"

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 123
    move-result-object p1

    .line 124
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result p2

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/master/explorer/CommunityCollection;

    .line 41
    .line 42
    iget-object v1, p2, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    .line 43
    .line 44
    iget v1, v1, Lcom/narvii/master/explorer/InlineUI;->displayMode:I

    .line 45
    const/4 v2, 0x1

    .line 46
    .line 47
    if-eq v1, v2, :cond_0

    .line 48
    const/4 v2, 0x3

    .line 49
    .line 50
    if-eq v1, v2, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

.method protected getActionBarBackground()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    const v0, -0xa9a9a9

    .line 17
    return v0
.end method

.method public getActionbarTextColor()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->actionbarTextColorSeted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->textColor:I

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemId(I)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    .line 9
    .line 10
    iget p1, p1, Lcom/narvii/master/explorer/InlineUI;->displayMode:I

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x2

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_19

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItemType(Ljava/lang/Object;)I

    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x3

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    if-ne v0, v2, :cond_8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->shadowForFeature()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v3, v4

    .line 39
    .line 40
    :goto_0
    if-eqz v3, :cond_1

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0d038c

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_1
    const v0, 0x7f0d038b

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    iget-object p3, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    instance-of v0, p3, Lcom/narvii/app/NVFragment;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    check-cast p3, Lcom/narvii/app/NVFragment;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    .line 70
    invoke-static {p3}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    const/high16 v1, 0x44480000    # 800.0f

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
    .line 85
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    const/high16 v2, 0x43660000    # 230.0f

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 92
    move-result v1

    .line 93
    float-to-int v1, v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 102
    .line 103
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 111
    move-result v0

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    move v0, v4

    .line 114
    .line 115
    :goto_2
    iget v1, p3, Landroid/graphics/Point;->x:I

    .line 116
    int-to-float v1, v1

    .line 117
    .line 118
    .line 119
    const v2, 0x3f2e147b    # 0.68f

    .line 120
    mul-float/2addr v1, v2

    .line 121
    float-to-int v1, v1

    .line 122
    .line 123
    if-eqz v3, :cond_3

    .line 124
    add-int/2addr v1, v0

    .line 125
    .line 126
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 127
    .line 128
    iget p3, p3, Landroid/graphics/Point;->x:I

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, p3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    const p3, 0x7f0a05db

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object p3

    .line 142
    .line 143
    check-cast p3, Lcom/narvii/widget/Flipper;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->shadowForFeature()Z

    .line 147
    move-result v0

    .line 148
    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, v4}, Lcom/narvii/widget/Flipper;->setIsallowInterceptTouchEvent(Z)V

    .line 153
    .line 154
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    iget-object v1, p1, Lcom/narvii/master/explorer/CommunityCollection;->childCommunityCollectionList:Ljava/util/List;

    .line 160
    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v2

    .line 168
    .line 169
    if-eqz v2, :cond_6

    .line 170
    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    check-cast v2, Lcom/narvii/master/explorer/CommunityCollection;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_3

    .line 180
    .line 181
    :cond_6
    new-instance v1, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 182
    .line 183
    .line 184
    invoke-direct {v1, p0, p3, v0}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/widget/Flipper;Ljava/util/List;)V

    .line 185
    .line 186
    iput-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 187
    .line 188
    iput-object p1, v1, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->item:Lcom/narvii/master/explorer/CommunityCollection;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, v1}, Lcom/narvii/widget/Flipper;->setAdapter(Lcom/narvii/widget/Flipper$FlipperAdapter;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 195
    move-result p1

    .line 196
    .line 197
    if-lez p1, :cond_7

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3, p1}, Lcom/narvii/widget/Flipper;->setCurrentItem(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    invoke-static {p2, p0}, Lcom/narvii/logging/LogUtils;->flipperShownInAdapter(Landroid/view/View;Lcom/narvii/list/NVAdapter;)V

    .line 210
    return-object p2

    .line 211
    .line 212
    :cond_8
    if-ne v0, v3, :cond_19

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->shadowForFeature()Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    if-eqz v0, :cond_9

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 228
    move-result-object v0

    .line 229
    .line 230
    .line 231
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    .line 235
    :cond_9
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    move-result v0

    .line 237
    .line 238
    if-eqz v0, :cond_a

    .line 239
    goto :goto_4

    .line 240
    :cond_a
    move v3, v4

    .line 241
    .line 242
    :goto_4
    if-eqz v3, :cond_b

    .line 243
    .line 244
    .line 245
    const v0, 0x7f0d0383

    .line 246
    goto :goto_5

    .line 247
    .line 248
    .line 249
    :cond_b
    const v0, 0x7f0d0382

    .line 250
    .line 251
    .line 252
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 253
    move-result-object v1

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 257
    move-result-object p2

    .line 258
    .line 259
    .line 260
    const p3, 0x7f0a0cbb

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    move-result-object p3

    .line 265
    .line 266
    check-cast p3, Landroid/widget/LinearLayout;

    .line 267
    .line 268
    if-eqz p3, :cond_c

    .line 269
    .line 270
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    :cond_c
    const p3, 0x7f0a060b

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    move-result-object p3

    .line 281
    .line 282
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 283
    .line 284
    .line 285
    invoke-static {p2, p3, p0}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Area;)V

    .line 286
    .line 287
    if-eqz p3, :cond_e

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    if-nez v0, :cond_d

    .line 294
    .line 295
    new-instance v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageAdapter;Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 302
    goto :goto_6

    .line 303
    .line 304
    .line 305
    :cond_d
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    check-cast v0, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$GalleryRecycleViewAdapter;->setCommunityCollection(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 315
    .line 316
    .line 317
    :goto_6
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    if-nez v0, :cond_e

    .line 321
    .line 322
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 326
    move-result-object v1

    .line 327
    .line 328
    .line 329
    invoke-direct {v0, v1, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 333
    .line 334
    .line 335
    :cond_e
    const p3, 0x7f0a0e9e

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 339
    move-result-object p3

    .line 340
    .line 341
    check-cast p3, Landroid/widget/TextView;

    .line 342
    .line 343
    if-eqz p3, :cond_f

    .line 344
    .line 345
    iget-object v0, p1, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 352
    move-result v0

    .line 353
    .line 354
    .line 355
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    .line 357
    .line 358
    :cond_f
    const p3, 0x7f0a0cc0

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 362
    move-result-object p3

    .line 363
    .line 364
    check-cast p3, Landroid/widget/TextView;

    .line 365
    .line 366
    if-eqz p3, :cond_10

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 370
    move-result v0

    .line 371
    .line 372
    .line 373
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    .line 375
    .line 376
    :cond_10
    const p3, 0x7f0a0cba

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 380
    move-result-object p3

    .line 381
    .line 382
    check-cast p3, Lcom/narvii/widget/TintButton;

    .line 383
    .line 384
    if-eqz p3, :cond_11

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 388
    move-result v0

    .line 389
    .line 390
    .line 391
    invoke-virtual {p3, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 392
    .line 393
    .line 394
    :cond_11
    const p3, 0x7f0a036a

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 398
    move-result-object p3

    .line 399
    .line 400
    if-eqz p3, :cond_12

    .line 401
    .line 402
    .line 403
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 404
    move-result v0

    .line 405
    .line 406
    .line 407
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 408
    .line 409
    .line 410
    :cond_12
    const p3, 0x7f0a0269

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 414
    move-result-object p3

    .line 415
    .line 416
    if-eqz p3, :cond_17

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 420
    move-result-object v0

    .line 421
    .line 422
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 423
    .line 424
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 425
    .line 426
    if-eqz v2, :cond_13

    .line 427
    .line 428
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 432
    move-result v2

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 436
    move-result v1

    .line 437
    add-int/2addr v2, v1

    .line 438
    goto :goto_7

    .line 439
    :cond_13
    move v2, v4

    .line 440
    .line 441
    :goto_7
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 442
    .line 443
    if-eqz v1, :cond_15

    .line 444
    .line 445
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 446
    .line 447
    if-eqz v3, :cond_14

    .line 448
    goto :goto_8

    .line 449
    :cond_14
    move v2, v4

    .line 450
    .line 451
    :goto_8
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 452
    .line 453
    :cond_15
    if-eqz v3, :cond_16

    .line 454
    .line 455
    .line 456
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 457
    move-result v0

    .line 458
    goto :goto_9

    .line 459
    :cond_16
    move v0, v4

    .line 460
    .line 461
    .line 462
    :goto_9
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 463
    .line 464
    :cond_17
    if-eqz v3, :cond_18

    .line 465
    goto :goto_a

    .line 466
    .line 467
    .line 468
    :cond_18
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getBackgroundColor(Lcom/narvii/master/explorer/CommunityCollection;)I

    .line 469
    move-result v4

    .line 470
    .line 471
    .line 472
    :goto_a
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 473
    return-object p2

    .line 474
    :cond_19
    return-object v1
.end method

.method protected getSubBackGround(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    const p1, -0xfbdece

    .line 15
    return p1
.end method

.method protected getSubFrontColor(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->textColor:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    return p1
.end method

.method protected getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p1, Lcom/narvii/master/explorer/InlineUI;->textColor:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    return p1

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget p1, p1, Lcom/narvii/master/explorer/PageUI;->textColor:I

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, -0x1

    .line 26
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 13
    .line 14
    iget v1, v1, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    instance-of v0, p3, Lcom/narvii/widget/NVListView;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    move-object v0, p3

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    .line 32
    .line 33
    iget v1, v1, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    instance-of v1, v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionBarBackground()I

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageFragment;->setActionbarBg(I)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/master/explorer/CommunityPageFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionbarTextColor()I

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageFragment;->setActionbarTextColor(I)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    instance-of p1, p3, Lcom/narvii/master/explorer/CommunityCollection;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p3}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItemType(Ljava/lang/Object;)I

    .line 80
    move-result p1

    .line 81
    const/4 p3, 0x3

    .line 82
    .line 83
    if-ne p1, p3, :cond_1

    .line 84
    .line 85
    sget p1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 86
    .line 87
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_1
    sget p1, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 94
    const/4 p3, 0x0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    :goto_0
    return-object p2
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0cbb

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    instance-of p1, p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    check-cast p3, Lcom/narvii/master/explorer/CommunityCollection;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Lcom/narvii/master/explorer/CommunityCollection;->id()Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    const-string p4, "collectionId"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p4, p3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    sget-object p3, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->communityList(Lcom/narvii/master/explorer/CommunityCollection;)V

    .line 62
    .line 63
    const-string p1, "statistics"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 70
    .line 71
    const-string p3, "Explore Communities - Categories See All"

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, p3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string p3, "Baseline Categories See All Opened Total"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    check-cast p2, Lcom/narvii/master/explorer/CommunityCollection;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/narvii/master/explorer/CommunityCollection;->label:Ljava/lang/String;

    .line 90
    .line 91
    const-string p3, "Category Type"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 95
    :cond_0
    const/4 p1, 0x1

    .line 96
    return p1

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 100
    move-result p1

    .line 101
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    iget-object p3, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->communityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    .line 4
    iget-object p3, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->communityCollectionSections:Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->communityCollectionSections:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/explorer/CommunityCollection;

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionBarBackground()I

    move-result p1

    iput p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/explorer/CommunityPageAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "pageBackGround"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    .line 16
    .line 17
    const-string v0, "startWithFeature"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 24
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    const-string v2, "#%08X"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "pageBackGround"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    const-string v1, "startWithFeature"

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 7
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 7
    return-void
.end method

.method public resetRecylerViewAdapter(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a060b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
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

    const-class v0, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->requestLanguage:Ljava/lang/String;

    return-void
.end method

.method protected shadowForFeature()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
