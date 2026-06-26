.class Lcom/narvii/services/EventLogProfileService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "EventLogProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/logging/EventLogProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/EventLogProfileService;

.field final synthetic val$accountChange:Z

.field final synthetic val$curLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/services/EventLogProfileService;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    iput-object p3, p0, Lcom/narvii/services/EventLogProfileService$2;->val$curLanguage:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFail$1$EventLogProfileService$2(ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    iget-object v0, v0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;->onRequestFailed(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onFinish$0$EventLogProfileService$2(ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    iget-object v0, v0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    invoke-interface {p2, v0, p1}, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;->onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V

    return-void
.end method

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

    .line 164
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 165
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    iput-object p4, p1, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    const/4 p2, 0x0

    .line 166
    invoke-static {p1, p2}, Lcom/narvii/services/EventLogProfileService;->access$002(Lcom/narvii/services/EventLogProfileService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 167
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    iget-boolean p2, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    new-instance p3, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$uTsiBIO-IMtQtsSO0cq1YQ8WctQ;

    invoke-direct {p3, p0, p2}, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$uTsiBIO-IMtQtsSO0cq1YQ8WctQ;-><init>(Lcom/narvii/services/EventLogProfileService$2;Z)V

    invoke-virtual {p1, p3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/logging/EventLogProfileResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 148
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/services/EventLogProfileService;->access$002(Lcom/narvii/services/EventLogProfileService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 149
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    iput-object p2, p1, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 150
    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->access$100(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventLogProfile"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    iget-object p1, p2, Lcom/narvii/logging/EventLogProfileResponse;->participatedExperiments:Lcom/narvii/logging/ParticipatedExperiments;

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->access$200(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/PreferencesHelper;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/logging/EventLogProfileResponse;->participatedExperiments:Lcom/narvii/logging/ParticipatedExperiments;

    iget v0, v0, Lcom/narvii/logging/ParticipatedExperiments;->communityTabExp:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/PreferencesHelper;->saveCommunityTabExp(I)V

    .line 154
    :cond_0
    iget-object p1, p2, Lcom/narvii/logging/EventLogProfileResponse;->contentLanguage:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->val$curLanguage:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/logging/EventLogProfileResponse;->contentLanguage:Ljava/lang/String;

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refresh profile, account change: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "interestPicker__"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    iget-boolean p2, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    new-instance v0, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA;

    invoke-direct {v0, p0, p2}, Lcom/narvii/services/-$$Lambda$EventLogProfileService$2$DQ8oxfCzTTKb-h_pQ_ATVEGX9OA;-><init>(Lcom/narvii/services/EventLogProfileService$2;Z)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    check-cast p2, Lcom/narvii/logging/EventLogProfileResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/EventLogProfileService$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/logging/EventLogProfileResponse;)V

    return-void
.end method
