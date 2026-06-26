.class Lcom/narvii/chat/MessageReadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageReadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/MessageReadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/MessageReadManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/MessageReadManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager$1;->this$0:Lcom/narvii/chat/MessageReadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/narvii/chat/MessageReadManager$1;->this$0:Lcom/narvii/chat/MessageReadManager;

    invoke-static {p1}, Lcom/narvii/chat/MessageReadManager;->access$000(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager$1;->this$0:Lcom/narvii/chat/MessageReadManager;

    invoke-static {v0}, Lcom/narvii/chat/MessageReadManager;->access$100(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/config/ConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/narvii/chat/MessageReadManager;->access$200(Lcom/narvii/chat/MessageReadManager;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
