.class public final Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSelectionFragment;->requestDevOptionUpdate()V
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
.field final synthetic this$0:Lcom/narvii/prefs/DevSelectionFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/prefs/DevSelectionFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/pushservice/DeviceResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

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
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "progressDialog"

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 18
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/pushservice/DeviceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/pushservice/DeviceResponse;)V

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

    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getAccount$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/account/AccountService;

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

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->saveDevOptions(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "progressDialog"

    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
