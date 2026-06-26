.class public final Lcom/narvii/chat/core/ChatService$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 252
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/narvii/chat/core/ChatService;->access$setMyUid$p(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckRequest$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"api\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 255
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckRequest$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->clear()V

    .line 259
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 p2, 0x65

    if-ne p1, p2, :cond_1

    .line 260
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 261
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    .line 262
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService;->dispatchUnreadCountChangeOnCommunityLevel(I)V

    :cond_1
    return-void
.end method
