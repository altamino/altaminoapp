.class Lcom/narvii/amino/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainActivity;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 3
    .line 4
    const-string p2, "account"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    .line 14
    move-result p2

    .line 15
    .line 16
    if-lez p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 19
    .line 20
    iget-object p2, p1, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 21
    .line 22
    if-nez p2, :cond_4

    .line 23
    .line 24
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    iput-object p2, p1, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 39
    goto :goto_2

    .line 40
    .line 41
    :cond_0
    iget-object p2, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    .line 49
    move-result p2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    iput-object v1, v0, Lcom/narvii/amino/MainActivity;->keychainLoginProgress:Lcom/narvii/util/dialog/ProgressDialog;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_2
    iget-object v1, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 85
    .line 86
    :goto_0
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 87
    const/4 p2, 0x1

    .line 88
    .line 89
    new-array p2, p2, [Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    .line 91
    .line 92
    aput-object v1, p2, v0

    .line 93
    .line 94
    .line 95
    const v1, 0x7f120043

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 109
    .line 110
    const-wide/16 v0, 0x0

    .line 111
    .line 112
    const-wide/16 v2, 0x320

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/app/DrawerActivity;->peekDrawer(JJ)V

    .line 116
    .line 117
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$4;->this$0:Lcom/narvii/amino/MainActivity;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    :cond_4
    :goto_2
    return-void
.end method
