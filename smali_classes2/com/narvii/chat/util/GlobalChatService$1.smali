.class Lcom/narvii/chat/util/GlobalChatService$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalChatService.java"


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

    .line 67
    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$000(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$100(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    iget-object p1, p1, Lcom/narvii/chat/util/GlobalChatService;->recentChatThreadIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$100(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$200(Lcom/narvii/chat/util/GlobalChatService;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$300(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/ArrayList;

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$1;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$200(Lcom/narvii/chat/util/GlobalChatService;)V

    :cond_1
    :goto_0
    return-void
.end method
