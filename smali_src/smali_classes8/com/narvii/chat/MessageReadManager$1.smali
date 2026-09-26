.class Lcom/narvii/chat/MessageReadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager$1;->this$0:Lcom/narvii/chat/MessageReadManager;

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

    .line 1
    .line 2
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/MessageReadManager$1;->this$0:Lcom/narvii/chat/MessageReadManager;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/MessageReadManager;->a(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/account/AccountService;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager$1;->this$0:Lcom/narvii/chat/MessageReadManager;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/chat/MessageReadManager;->b(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/config/ConfigService;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lcom/narvii/chat/MessageReadManager;->c(Lcom/narvii/chat/MessageReadManager;Ljava/lang/String;I)V

    .line 36
    :cond_0
    return-void
.end method
