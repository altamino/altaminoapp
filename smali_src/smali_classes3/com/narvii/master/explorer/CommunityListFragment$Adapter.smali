.class Lcom/narvii/master/explorer/CommunityListFragment$Adapter;
.super Lcom/narvii/master/explorer/CommunityListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/CommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field private isTrendingCommunity:Z

.field final synthetic this$0:Lcom/narvii/master/explorer/CommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/explorer/CommunityListFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "explore-category"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->source:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 14
    .line 15
    const-string v0, "categoryName"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->categoryName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "isTrending"

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->isTrendingCommunity:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iput v1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 35
    .line 36
    :cond_0
    new-instance v0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;

    .line 37
    .line 38
    const-class v1, Lcom/narvii/model/Community;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;-><init>(Lcom/narvii/master/explorer/CommunityListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/master/explorer/CommunityListFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected completeBuilder(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/master/explorer/CommunityListAdapter;->completeBuilder(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    .line 6
    .line 7
    const-string v1, "id"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "collectionId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->isTrendingCommunity:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string p1, "content_language"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 18
    .line 19
    const-string v1, "/community/trending"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "language"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    .line 41
    .line 42
    const-string v0, "id"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 56
    const/4 p1, 0x0

    .line 57
    return-object p1

    .line 58
    .line 59
    :cond_1
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v2, "community-collection/"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p1, "/communities"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    .line 3
    .line 4
    const-string v1, "isTrending"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "AminoList"

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    const-string v0, "SeeAllAminoList"

    .line 17
    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->itemViewLayoutId()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/community/BaseCommunityListAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 19
    .line 20
    .line 21
    const p1, 0x7f0a0376

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    instance-of p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    const/4 p3, 0x0

    .line 43
    .line 44
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 45
    :cond_0
    return-object p2

    .line 46
    :cond_1
    return-object v1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected itemViewLayoutId()I
    .locals 1

    const v0, 0x7f0d03eb

    return v0
.end method

.method protected showDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
