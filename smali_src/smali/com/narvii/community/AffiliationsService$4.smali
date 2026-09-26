.class Lcom/narvii/community/AffiliationsService$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

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
    iget-object p1, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/community/AffiliationsService;->a(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/account/AccountService;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string p2, "affiliationsTime"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 3
    invoke-static {v0}, Lcom/narvii/community/AffiliationsService;->a(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "affiliations"

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 5
    iget-object v5, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/narvii/community/AffiliationsService;->e(Lcom/narvii/community/AffiliationsService;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 6
    invoke-static {v4}, Lcom/narvii/community/AffiliationsService;->c(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/util/Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 7
    invoke-static {v4}, Lcom/narvii/community/AffiliationsService;->c(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/util/Callback;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 9
    iget-object v4, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/narvii/community/AffiliationsService;->d(Lcom/narvii/community/AffiliationsService;Ljava/util/ArrayList;)V

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    iget-object p1, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 12
    iget-object v0, v0, Lcom/narvii/community/AffiliationsService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/community/AffiliationsService$4$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/community/AffiliationsService$4$1;-><init>(Lcom/narvii/community/AffiliationsService$4;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    iget-object p1, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 13
    iget-object p1, p1, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/community/AffiliationsService$4$2;

    invoke-direct {v0, p0}, Lcom/narvii/community/AffiliationsService$4$2;-><init>(Lcom/narvii/community/AffiliationsService$4;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    iget-object p1, p0, Lcom/narvii/community/AffiliationsService$4;->this$0:Lcom/narvii/community/AffiliationsService;

    .line 14
    invoke-static {p1}, Lcom/narvii/community/AffiliationsService;->b(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string/jumbo v0, "statistics"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 15
    invoke-interface {p1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "Communities Joined Total"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Communities Joined"

    iget-object p2, p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Ljava/util/Collection;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

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

    .line 1
    check-cast p2, Lcom/narvii/community/AffiliationsService$AffiliationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/AffiliationsService$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V

    return-void
.end method
