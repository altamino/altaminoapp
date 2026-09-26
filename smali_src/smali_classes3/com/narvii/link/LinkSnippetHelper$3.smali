.class Lcom/narvii/link/LinkSnippetHelper$3;
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
        "Lcom/narvii/master/invitation/CommunityInviteResponse;",
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
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/link/LinkSnippetHelper$3;->val$snippetListener:Lcom/narvii/link/LinkSnippetListener;

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
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 3
    const/4 p2, 0x3

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/link/LinkSnippetHelper;->b(Lcom/narvii/link/LinkSnippetHelper;I)V

    .line 7
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 3
    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->a(Lcom/narvii/link/LinkSnippetHelper;)V

    return-void

    .line 4
    :cond_0
    iget-boolean p2, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    if-nez p2, :cond_1

    iget p2, p1, Lcom/narvii/model/Community;->joinType:I

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 5
    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->a(Lcom/narvii/link/LinkSnippetHelper;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 6
    new-instance v0, Lcom/narvii/link/snippet/CommunityLinkSnippet;

    iget-object v1, p2, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, p1}, Lcom/narvii/link/snippet/CommunityLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)V

    iput-object v0, p2, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 7
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    new-instance p2, Lcom/narvii/link/LinkSnippetHelper$3$1;

    invoke-direct {p2, p0}, Lcom/narvii/link/LinkSnippetHelper$3$1;-><init>(Lcom/narvii/link/LinkSnippetHelper$3;)V

    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetMedia(Lcom/narvii/util/Callback;)V

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
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/link/LinkSnippetHelper$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
