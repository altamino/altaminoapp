.class Lcom/narvii/feed/vote/MembersPopupDialog$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembersPopupDialog.java"


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

    .line 93
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

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

    .line 105
    iget-object p2, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object p3, p2, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    .line 106
    iput-object p1, p2, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    invoke-virtual {p1}, Lcom/narvii/feed/vote/MembersPopupDialog;->updateViews()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/vote/VoterListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iget-object v1, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 97
    iput-object p1, v0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog$1;->this$0:Lcom/narvii/feed/vote/MembersPopupDialog;

    iput-object p2, p1, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    .line 100
    invoke-virtual {p1}, Lcom/narvii/feed/vote/MembersPopupDialog;->updateViews()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    check-cast p2, Lcom/narvii/feed/vote/VoterListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/vote/MembersPopupDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/vote/VoterListResponse;)V

    return-void
.end method
