.class Lcom/narvii/services/EventLogProfileService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/services/EventLogProfileService$2;->val$curLanguage:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/narvii/services/EventLogProfileService$2;ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/services/EventLogProfileService$2;->lambda$onFinish$0(ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/services/EventLogProfileService$2;->lambda$onFinish$1(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/services/EventLogProfileService$2;ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/services/EventLogProfileService$2;->lambda$onFail$2(ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    return-void
.end method

.method private synthetic lambda$onFail$2(ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0, p1}, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;->onRequestFailed(Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method private synthetic lambda$onFinish$0(ZLcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0, p1}, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;->onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V

    .line 8
    return-void
.end method

.method private static synthetic lambda$onFinish$1(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;->shouldShowDialog()V

    .line 4
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
    .line 5
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 6
    .line 7
    iput-object p4, p1, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/narvii/services/EventLogProfileService;->e(Lcom/narvii/services/EventLogProfileService;Lcom/narvii/util/http/ApiRequest;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 16
    .line 17
    iget-boolean p2, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    .line 18
    .line 19
    new-instance p3, Lcom/narvii/services/e;

    .line 20
    .line 21
    .line 22
    invoke-direct {p3, p0, p2}, Lcom/narvii/services/e;-><init>(Lcom/narvii/services/EventLogProfileService$2;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 26
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/logging/EventLogProfileResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/services/EventLogProfileService;->e(Lcom/narvii/services/EventLogProfileService;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 4
    iput-object p2, p1, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 5
    invoke-static {p1, v0}, Lcom/narvii/services/EventLogProfileService;->g(Lcom/narvii/services/EventLogProfileService;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 6
    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->a(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "eventLogProfile"

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    iget-object p1, p2, Lcom/narvii/logging/EventLogProfileResponse;->participatedExperiments:Lcom/narvii/logging/ParticipatedExperiments;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 8
    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->d(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/PreferencesHelper;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/logging/EventLogProfileResponse;->participatedExperiments:Lcom/narvii/logging/ParticipatedExperiments;

    iget v0, v0, Lcom/narvii/logging/ParticipatedExperiments;->communityTabExp:I

    invoke-virtual {p1, v0}, Lcom/narvii/util/PreferencesHelper;->saveCommunityTabExp(I)V

    .line 9
    :cond_0
    iget-object p1, p2, Lcom/narvii/logging/EventLogProfileResponse;->contentLanguage:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->val$curLanguage:Ljava/lang/String;

    .line 10
    iput-object p1, p2, Lcom/narvii/logging/EventLogProfileResponse;->contentLanguage:Ljava/lang/String;

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refresh profile, account change: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interestPicker__"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 12
    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    iget-boolean v0, p0, Lcom/narvii/services/EventLogProfileService$2;->val$accountChange:Z

    new-instance v1, Lcom/narvii/services/c;

    invoke-direct {v1, p0, v0}, Lcom/narvii/services/c;-><init>(Lcom/narvii/services/EventLogProfileService$2;Z)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 13
    iget-boolean v0, p1, Lcom/narvii/services/EventLogProfileService;->needsCompleteSignupBirthday:Z

    if-nez v0, :cond_2

    .line 14
    iget-boolean p2, p2, Lcom/narvii/logging/EventLogProfileResponse;->needsBirthDateUpdate:Z

    invoke-static {p1, p2}, Lcom/narvii/services/EventLogProfileService;->f(Lcom/narvii/services/EventLogProfileService;Z)V

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 15
    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->a(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->c(Lcom/narvii/services/EventLogProfileService;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->needsShowBirthDateUpdate()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 16
    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->updateBirthdateForceFreq()V

    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$2;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 17
    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/services/d;

    invoke-direct {p2}, Lcom/narvii/services/d;-><init>()V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
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
    check-cast p2, Lcom/narvii/logging/EventLogProfileResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/EventLogProfileService$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/logging/EventLogProfileResponse;)V

    return-void
.end method
