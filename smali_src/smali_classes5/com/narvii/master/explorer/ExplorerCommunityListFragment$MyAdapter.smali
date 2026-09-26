.class Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;
.super Lcom/narvii/master/explorer/CommunityPageAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/ExplorerCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field bannerIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

.field ipc:Lcom/narvii/logging/Impression/ImpressionCollector;

.field final synthetic this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$1;

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a060b

    .line 11
    .line 12
    const-class v1, Lcom/narvii/model/Community;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0, v1, v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$1;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;Ljava/lang/Class;I)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->ipc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, v1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$2;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;Ljava/lang/Class;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->bannerIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->ipc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->bannerIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    .line 36
    return-void
.end method


# virtual methods
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
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getAminoListIpc()Lcom/narvii/logging/Impression/ImpressionCollector;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->ipc:Lcom/narvii/logging/Impression/ImpressionCollector;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "AminoList"

    return-object v0
.end method

.method public getBannerIpc()Lcom/narvii/logging/Impression/ImpressionCollector;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->bannerIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    return-object v0
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

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/master/explorer/CommunityPageAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 4
    iget-object p3, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->language:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->x(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->v(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->z(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->w(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/language/ContentLanguageService;->saveSuggestLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V

    return-void
.end method

.method protected shadowForFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
