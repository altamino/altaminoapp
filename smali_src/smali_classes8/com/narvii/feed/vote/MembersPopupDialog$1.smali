.class Lcom/narvii/feed/vote/MembersPopupDialog$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/vote/MembersPopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/feed/vote/VoterListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/vote/MembersPopupDialog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/vote/MembersPopupDialog;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

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
    iget-object p2, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-object p1, p2, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/feed/vote/MembersPopupDialog;->updateViews()V

    .line 13
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/vote/VoterListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    .line 2
    iget-object v1, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 4
    :cond_0
    iput-object p2, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/feed/vote/MembersPopupDialog;->updateViews()V

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
    check-cast p2, Lcom/narvii/feed/vote/VoterListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/vote/MembersPopupDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/vote/VoterListResponse;)V

    return-void
.end method
