.class Lcom/narvii/community/AffiliationsService$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AffiliationsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/AffiliationsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/AffiliationsService$AffiliationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/AffiliationsService;


# direct methods
.method constructor <init>(Lcom/narvii/community/AffiliationsService;Ljava/lang/Class;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

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

    .line 213
    iget-object p1, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    invoke-static {p1}, Lcom/narvii/community/AffiliationsService;->access$000(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 214
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "affiliationsTime"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object p1, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    invoke-static {v0}, Lcom/narvii/community/AffiliationsService;->access$000(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "affiliations"

    .line 179
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    iget-object v4, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    iget-object v5, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/narvii/community/AffiliationsService;->access$102(Lcom/narvii/community/AffiliationsService;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    invoke-static {v4}, Lcom/narvii/community/AffiliationsService;->access$200(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/util/Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    invoke-static {v4}, Lcom/narvii/community/AffiliationsService;->access$200(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/util/Callback;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    iget-object v4, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/narvii/community/AffiliationsService;->access$302(Lcom/narvii/community/AffiliationsService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    iget-object p1, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    .line 191
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    iget-object v0, v0, Lcom/narvii/community/AffiliationsService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v2, Lcom/narvii/community/AffiliationsService$4$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/community/AffiliationsService$4$1;-><init>(Lcom/narvii/community/AffiliationsService$4;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 198
    iget-object p1, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    iget-object p1, p1, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/community/AffiliationsService$4$2;

    invoke-direct {v0, p0}, Lcom/narvii/community/AffiliationsService$4$2;-><init>(Lcom/narvii/community/AffiliationsService$4;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    check-cast p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/AffiliationsService$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V

    return-void
.end method
