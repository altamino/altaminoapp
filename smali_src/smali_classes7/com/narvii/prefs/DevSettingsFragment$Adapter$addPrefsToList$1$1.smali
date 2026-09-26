.class public final Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSettingsFragment$Adapter;->addPrefsToList(Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/narvii/prefs/DevSettingsFragment;

.field final synthetic this$1:Lcom/narvii/prefs/DevSettingsFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/prefs/DevSettingsFragment$Adapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/prefs/DevSettingsFragment;",
            "Lcom/narvii/prefs/DevSettingsFragment$Adapter;",
            "Ljava/lang/Class<",
            "Lcom/narvii/pushservice/DeviceResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$1:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$1:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->access$finishUpdateOption(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    .line 6
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/pushservice/DeviceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/pushservice/DeviceResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/pushservice/DeviceResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/pushservice/DeviceResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$0:Lcom/narvii/prefs/DevSettingsFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/prefs/DevSettingsFragment;->access$getAccount$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "account"

    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/narvii/pushservice/DeviceResponse;->devOptions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->saveDevOptions(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$Adapter$addPrefsToList$1$1;->this$1:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    .line 3
    invoke-static {p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->access$finishUpdateOption(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    return-void
.end method
