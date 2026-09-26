.class Lcom/narvii/master/MasterActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MasterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterActivity;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

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
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x1

    .line 22
    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    .line 26
    .line 27
    iput-boolean p2, p1, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/master/MasterActivity;->updateBlockingProgressDialog()V

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    .line 34
    .line 35
    iget-boolean v0, p1, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    iput-boolean v0, p1, Lcom/narvii/master/MasterActivity;->blockingProgressKeychain:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/master/MasterActivity;->updateBlockingProgressDialog()V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/master/MasterActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    const/4 p1, 0x0

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    :goto_0
    iget-object v1, p0, Lcom/narvii/master/MasterActivity$2;->this$0:Lcom/narvii/master/MasterActivity;

    .line 72
    .line 73
    new-array p2, p2, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p1, p2, v0

    .line 76
    .line 77
    .line 78
    const p1, 0x7f120043

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 90
    :cond_2
    :goto_1
    return-void
.end method
