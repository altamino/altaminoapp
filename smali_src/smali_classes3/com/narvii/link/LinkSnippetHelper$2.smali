.class Lcom/narvii/link/LinkSnippetHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/LinkSnippetHelper;->getLinkSnippet(Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/share/LinkV2TranslationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/LinkSnippetHelper;

.field final synthetic val$snippetListener:Lcom/narvii/link/LinkSnippetListener;


# direct methods
.method constructor <init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/Class;Lcom/narvii/link/LinkSnippetListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/link/LinkSnippetHelper$2;->val$snippetListener:Lcom/narvii/link/LinkSnippetListener;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/link/LinkSnippetHelper;->b(Lcom/narvii/link/LinkSnippetHelper;I)V

    .line 10
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/share/LinkV2TranslationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/link/LinkSnippetHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/share/LinkV2TranslationResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/share/LinkV2TranslationResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p2, Lcom/narvii/share/LinkV2TranslationResponse;->linkInfoV2:Lcom/narvii/share/LinkInfoV2;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 5
    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->a(Lcom/narvii/link/LinkSnippetHelper;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 6
    iget-object v0, p2, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/link/LinkSnippetFactory;->getLinkSnippet(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)Lcom/narvii/link/snippet/NVLinkSnippet;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    iget-object p2, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 7
    iget-object v0, p2, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 8
    invoke-static {p2, p1}, Lcom/narvii/link/LinkSnippetHelper;->b(Lcom/narvii/link/LinkSnippetHelper;I)V

    return-void

    .line 9
    :cond_2
    iget p1, p1, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 10
    iget-object p2, p2, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 11
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-eqz p1, :cond_7

    if-ne p1, p2, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p2, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 12
    iget-object p2, p2, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "community"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/CommunityService;

    .line 13
    invoke-virtual {p2, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 14
    iget-object v0, p2, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_6

    .line 15
    iget v0, p2, Lcom/narvii/model/Community;->joinType:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 16
    iget-object v0, v0, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "affiliations"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 18
    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->a(Lcom/narvii/link/LinkSnippetHelper;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 19
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    instance-of v0, p1, Lcom/narvii/link/snippet/NVLinkSnippet;

    if-eqz v0, :cond_5

    .line 20
    check-cast p1, Lcom/narvii/link/snippet/NVLinkSnippet;

    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/NVLinkSnippet;->setOtherCommunity(Lcom/narvii/model/Community;)V

    :cond_5
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 21
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    new-instance p2, Lcom/narvii/link/LinkSnippetHelper$2$2;

    invoke-direct {p2, p0}, Lcom/narvii/link/LinkSnippetHelper$2$2;-><init>(Lcom/narvii/link/LinkSnippetHelper$2;)V

    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetMedia(Lcom/narvii/util/Callback;)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 22
    iget-object p2, p2, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 23
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/community/info"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/narvii/link/LinkSnippetHelper$2$3;

    const-class v1, Lcom/narvii/community/FullCommunityResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/link/LinkSnippetHelper$2$3;-><init>(Lcom/narvii/link/LinkSnippetHelper$2;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 25
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    new-instance p2, Lcom/narvii/link/LinkSnippetHelper$2$1;

    invoke-direct {p2, p0}, Lcom/narvii/link/LinkSnippetHelper$2$1;-><init>(Lcom/narvii/link/LinkSnippetHelper$2;)V

    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetMedia(Lcom/narvii/util/Callback;)V

    :goto_2
    return-void
.end method
