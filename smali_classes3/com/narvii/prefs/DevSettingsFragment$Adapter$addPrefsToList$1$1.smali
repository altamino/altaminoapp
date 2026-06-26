.class public final Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DevSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/pushservice/DeviceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;

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

    .line 143
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;

    iget-object p1, p1, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    invoke-static {p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->access$finishUpdateOption(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 136
    check-cast p2, Lcom/narvii/pushservice/DeviceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/pushservice/DeviceResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/pushservice/DeviceResponse;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;

    iget-object p1, p1, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSettingsFragment;->access$getAccount$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/pushservice/DeviceResponse;->devOptions:Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->saveDevOptions(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;

    iget-object p1, p1, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    invoke-static {p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->access$finishUpdateOption(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    return-void
.end method
