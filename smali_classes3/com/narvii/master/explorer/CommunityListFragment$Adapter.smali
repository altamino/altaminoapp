.class Lcom/narvii/master/explorer/CommunityListFragment$Adapter;
.super Lcom/narvii/master/explorer/CommunityListAdapter;
.source "CommunityListFragment.java"


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

    .line 129
    iput-object p1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    .line 130
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "explore-category"

    .line 131
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->source:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Explore:Lcom/narvii/util/logging/LoggingOrigin;

    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    const-string v0, "categoryName"

    .line 133
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityListAdapter;->categoryName:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "isTrending"

    .line 134
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->isTrendingCommunity:Z

    .line 136
    iget-boolean v1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->isTrendingCommunity:Z

    if-eqz v1, :cond_0

    .line 138
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 141
    :cond_0
    new-instance v0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;

    const-class v1, Lcom/narvii/model/Community;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/master/explorer/CommunityListFragment$Adapter$1;-><init>(Lcom/narvii/master/explorer/CommunityListFragment$Adapter;Ljava/lang/Class;Lcom/narvii/master/explorer/CommunityListFragment;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method


# virtual methods
.method protected completeBuilder(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Lcom/narvii/master/explorer/CommunityListAdapter;->completeBuilder(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 153
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "collectionId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 212
    iget-boolean p1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->isTrendingCommunity:Z

    if-eqz p1, :cond_0

    const-string p1, "content_language"

    .line 213
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 214
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/community/trending"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object p1

    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    const/4 p1, 0x0

    return-object p1

    .line 224
    :cond_1
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "community-collection/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/communities"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->this$0:Lcom/narvii/master/explorer/CommunityListFragment;

    const-string v1, "isTrending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AminoList"

    return-object v0

    :cond_0
    const-string v0, "SeeAllAminoList"

    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 176
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 178
    check-cast p1, Lcom/narvii/model/Community;

    .line 179
    invoke-virtual {p0}, Lcom/narvii/master/explorer/CommunityListFragment$Adapter;->itemViewLayoutId()I

    move-result v0

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 181
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/community/BaseCommunityListAdapter;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    const p1, 0x7f0902b0

    .line 192
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p3, 0x0

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    return-object p2

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

    const v0, 0x7f0b03b4

    return v0
.end method

.method protected showDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
