.class Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;
.super Lcom/narvii/master/explorer/CommunityPageAdapter;
.source "ExplorerCommunityListFragment.java"


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

    .line 396
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 397
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 349
    new-instance p1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$1;

    const-class v0, Lcom/narvii/model/Community;

    const v1, 0x7f0904c4

    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$1;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->ipc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 370
    new-instance p1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$2;

    const-class v0, Lcom/narvii/model/Community;

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter$2;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->bannerIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 398
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->ipc:Lcom/narvii/logging/Impression/ImpressionCollector;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 399
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->bannerIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    return-void
.end method


# virtual methods
.method protected getActionBarBackground()I
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageAdapter;->curCommunityCollection:Lcom/narvii/master/explorer/CommunityCollection;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityCollection;->pageUI:Lcom/narvii/master/explorer/PageUI;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/master/explorer/PageUI;->backgroundColor:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAminoListIpc()Lcom/narvii/logging/Impression/ImpressionCollector;
    .locals 1

    .line 414
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

    .line 409
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->bannerIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    return-object v0
.end method

.method protected getTextColor(Lcom/narvii/master/explorer/CommunityCollection;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityCollection;->inlineUI:Lcom/narvii/master/explorer/InlineUI;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/master/explorer/InlineUI;->textColor:I

    if-eqz p1, :cond_0

    return p1

    .line 455
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

.method public isEnabled(I)Z
    .locals 2

    .line 441
    invoke-virtual {p0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 442
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 445
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V
    .locals 0

    .line 426
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/master/explorer/CommunityPageAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V

    .line 427
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    iget-object p3, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->language:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->access$102(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->access$100(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->access$200(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->access$300(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/language/ContentLanguageService;->saveSuggestLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 347
    check-cast p2, Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/CommunityCollectionGroupResponse;I)V

    return-void
.end method

.method protected shadowForFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
