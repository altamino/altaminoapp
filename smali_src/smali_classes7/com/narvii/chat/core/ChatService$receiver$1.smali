.class public final Lcom/narvii/chat/core/ChatService$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string p2, "account"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v0}, Lcom/narvii/chat/core/ChatService;->access$setMyUid$p(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckRequest$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getCtx()Lcom/narvii/app/NVContext;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    const-string p2, "api"

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    const-string p2, "getService(...)"

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 79
    .line 80
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckRequest$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/util/http/ApiRequest;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$receiver$1;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->clear()V

    .line 93
    :cond_1
    return-void
.end method
