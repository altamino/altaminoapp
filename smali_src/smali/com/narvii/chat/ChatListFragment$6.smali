.class Lcom/narvii/chat/ChatListFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

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
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.BUBBLE_PACKAGE_READY"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v0, "receive bubble ready broadcast "

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "bid"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string p2, "BubbleService"

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatListFragment;->P(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    iput-object p2, p1, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$6;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 92
    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 97
    :cond_1
    :goto_0
    return-void
.end method
