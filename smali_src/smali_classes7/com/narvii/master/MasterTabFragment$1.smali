.class Lcom/narvii/master/MasterTabFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/MasterTabFragment$1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment$1;->lambda$onReceive$0(I)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setCurrentItem(I)V

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
    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->w(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/util/PreferencesHelper;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/util/PreferencesHelper;->saveLandingPos(Ljava/lang/Integer;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 28
    move-result p1

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/master/u;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lcom/narvii/master/u;-><init>(Lcom/narvii/master/MasterTabFragment$1;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->r(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/account/AccountService;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->s(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/chat/core/ChatService;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/chat/core/ChatService;->getAllUnreadThreadCount()I

    .line 60
    move-result p1

    .line 61
    .line 62
    if-lez p1, :cond_0

    .line 63
    const/4 p1, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 p1, 0x0

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->setUnreadChatMessage(Z)V

    .line 69
    .line 70
    :cond_1
    const-string p1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    if-eq p1, v0, :cond_2

    .line 77
    .line 78
    const-string p1, "com.narvii.action.WALLET_CHANGED"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    if-eq p1, v0, :cond_2

    .line 85
    .line 86
    const-string p1, "com.narvii.action.COUPONS_CHANGED"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    if-ne p1, p2, :cond_3

    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$1;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/master/MasterTabFragment;->v(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/master/MasterTopBar;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/master/MasterTopBar;->refreshBalance()V

    .line 102
    :cond_3
    return-void
.end method
