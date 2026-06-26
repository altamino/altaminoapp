.class Lcom/narvii/account/LeaderThirdPartyLoginFragment$2;
.super Lcom/narvii/account/AccountResponseListener;
.source "LeaderThirdPartyLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LeaderThirdPartyLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LeaderThirdPartyLoginFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LeaderThirdPartyLoginFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/account/LeaderThirdPartyLoginFragment$2;->this$0:Lcom/narvii/account/LeaderThirdPartyLoginFragment;

    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 6
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

    .line 146
    iget-object v0, p0, Lcom/narvii/account/LeaderThirdPartyLoginFragment$2;->this$0:Lcom/narvii/account/LeaderThirdPartyLoginFragment;

    const-string p3, "key_third_part_secret"

    invoke-virtual {v0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->finishThirdPartLoginWithResult(Ljava/lang/String;ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 137
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 139
    iget-object p1, p0, Lcom/narvii/account/LeaderThirdPartyLoginFragment$2;->this$0:Lcom/narvii/account/LeaderThirdPartyLoginFragment;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LeaderThirdPartyLoginFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
