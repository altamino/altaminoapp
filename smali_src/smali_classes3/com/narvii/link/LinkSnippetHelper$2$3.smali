.class Lcom/narvii/link/LinkSnippetHelper$2$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/LinkSnippetHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/share/LinkV2TranslationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/FullCommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/link/LinkSnippetHelper$2;


# direct methods
.method constructor <init>(Lcom/narvii/link/LinkSnippetHelper$2;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2$3;->this$1:Lcom/narvii/link/LinkSnippetHelper$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2$3;->this$1:Lcom/narvii/link/LinkSnippetHelper$2;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->a(Lcom/narvii/link/LinkSnippetHelper;)V

    .line 11
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2$3;->this$1:Lcom/narvii/link/LinkSnippetHelper$2;

    .line 3
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    instance-of v0, p1, Lcom/narvii/link/snippet/NVLinkSnippet;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/narvii/link/snippet/NVLinkSnippet;

    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/link/snippet/NVLinkSnippet;->setOtherCommunity(Lcom/narvii/model/Community;)V

    .line 5
    :cond_0
    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_2

    iget-boolean p2, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-nez p2, :cond_1

    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2$3;->this$1:Lcom/narvii/link/LinkSnippetHelper$2;

    .line 6
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    new-instance p2, Lcom/narvii/link/LinkSnippetHelper$2$3$1;

    invoke-direct {p2, p0}, Lcom/narvii/link/LinkSnippetHelper$2$3$1;-><init>(Lcom/narvii/link/LinkSnippetHelper$2$3;)V

    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetMedia(Lcom/narvii/util/Callback;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$2$3;->this$1:Lcom/narvii/link/LinkSnippetHelper$2;

    .line 7
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper$2;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->a(Lcom/narvii/link/LinkSnippetHelper;)V

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
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/link/LinkSnippetHelper$2$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
