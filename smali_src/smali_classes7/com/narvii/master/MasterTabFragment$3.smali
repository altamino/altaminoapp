.class Lcom/narvii/master/MasterTabFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTabFragment;->sendContentLanguageRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/ContentLanguageSettingResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTabFragment;

.field final synthetic val$oldDeviceStoredLan:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/master/MasterTabFragment$3;->val$oldDeviceStoredLan:Ljava/lang/String;

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
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/ContentLanguageSettingResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/master/ContentLanguageSettingResponse;->contentLanguageSettings:Lcom/narvii/master/setting/ContentLanguageSetting;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$3;->val$oldDeviceStoredLan:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/narvii/master/setting/ContentLanguageSetting;->language:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->t(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/language/ContentLanguageService;->saveDeviceStoredLanguage(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->t(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/master/ContentLanguageSettingResponse;->contentLanguageSettings:Lcom/narvii/master/setting/ContentLanguageSetting;

    iget-object p2, p2, Lcom/narvii/master/setting/ContentLanguageSetting;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/language/ContentLanguageService;->saveSuggestLanguage(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$3;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->y(Lcom/narvii/master/MasterTabFragment;)V

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
    check-cast p2, Lcom/narvii/master/ContentLanguageSettingResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/MasterTabFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/ContentLanguageSettingResponse;)V

    return-void
.end method
