.class Lcom/narvii/chat/util/GlobalChatService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/GlobalChatService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/util/GlobalChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->b(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/account/AccountService;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->d(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->d(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->g(Lcom/narvii/chat/util/GlobalChatService;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->f(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->g(Lcom/narvii/chat/util/GlobalChatService;)V

    .line 53
    :cond_1
    :goto_0
    return-void
.end method
