.class Lcom/narvii/account/LoginOrSignupFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginOrSignupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginOrSignupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginOrSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginOrSignupFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$1;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_LOGIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$1;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/narvii/account/AccountBaseFragment;->switchLogin(Landroid/content/Intent;II)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_RESTORE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    const-class p1, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "phoneNumber"

    .line 117
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$1;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    const/16 v0, 0x245

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method
