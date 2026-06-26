.class Lcom/narvii/account/LoginOrSignupFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LoginOrSignupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginOrSignupFragment;->requestMobileSignUpProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/account/AuthConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginOrSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginOrSignupFragment;Ljava/lang/Class;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$2;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

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

    .line 168
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuthConfigResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 159
    iget-object p1, p2, Lcom/narvii/account/AuthConfigResponse;->mobileSignUpProviderList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    sget p2, Lcom/narvii/account/LoginOrSignupFragment;->mobileSignUpProvider:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 162
    sput-boolean p1, Lcom/narvii/account/LoginOrSignupFragment;->showPhoneNumberItem:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 160
    sput-boolean p1, Lcom/narvii/account/LoginOrSignupFragment;->showPhoneNumberItem:Z

    :goto_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    check-cast p2, Lcom/narvii/account/AuthConfigResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginOrSignupFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuthConfigResponse;)V

    return-void
.end method
