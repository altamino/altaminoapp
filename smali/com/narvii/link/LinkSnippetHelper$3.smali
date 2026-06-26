.class Lcom/narvii/link/LinkSnippetHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LinkSnippetHelper.java"


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

    .line 197
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iput-object p3, p0, Lcom/narvii/link/LinkSnippetHelper$3;->val$snippetListener:Lcom/narvii/link/LinkSnippetListener;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 226
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/narvii/link/LinkSnippetHelper;->access$100(Lcom/narvii/link/LinkSnippetHelper;I)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->access$000(Lcom/narvii/link/LinkSnippetHelper;)V

    return-void

    .line 205
    :cond_0
    iget-boolean v0, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    if-nez v0, :cond_1

    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    invoke-static {p1}, Lcom/narvii/link/LinkSnippetHelper;->access$000(Lcom/narvii/link/LinkSnippetHelper;)V

    return-void

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    new-instance v0, Lcom/narvii/link/snippet/CommunityLinkSnippet;

    iget-object v1, p1, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    iget-object p2, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    invoke-direct {v0, v1, p2}, Lcom/narvii/link/snippet/CommunityLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)V

    iput-object v0, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    .line 211
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$3;->this$0:Lcom/narvii/link/LinkSnippetHelper;

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

    .line 197
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/link/LinkSnippetHelper$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
