.class Lcom/narvii/account/LoginOrSignupFragment$7;
.super Ljava/lang/Object;
.source "LoginOrSignupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginOrSignupFragment;->clickLogin()V
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

    .line 518
    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 p1, 0x0

    const v0, 0x7f0904ba

    const v1, 0x7f010011

    const v2, 0x7f010010

    const v3, 0x7f01000f

    const v4, 0x7f01000e

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz p2, :cond_3

    if-eq p2, v5, :cond_2

    const/4 v0, 0x3

    if-eq p2, v6, :cond_1

    if-eq p2, v0, :cond_0

    move-object p2, v7

    goto/16 :goto_0

    .line 549
    :cond_0
    iget-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const v0, 0x7f0904d9

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/GoogleLoginFragment;

    invoke-virtual {p2, v6}, Lcom/narvii/account/GoogleLoginFragment;->requestLogin(I)V

    .line 551
    sget-object v7, Lcom/narvii/logging/ActSemantic;->googleLogin:Lcom/narvii/logging/ActSemantic;

    .line 552
    iget-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x4

    iput v0, p2, Lcom/narvii/account/LoginActivity;->statType:I

    const-string p2, "Google"

    goto :goto_0

    :cond_1
    nop

    goto :goto_0

    .line 534
    :cond_2
    iget-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 535
    invoke-virtual {p2, v4, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 537
    new-instance v1, Lcom/narvii/account/EmailLoginFragment;

    invoke-direct {v1}, Lcom/narvii/account/EmailLoginFragment;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 539
    sget-object v7, Lcom/narvii/logging/ActSemantic;->emailLogin:Lcom/narvii/logging/ActSemantic;

    .line 540
    iget-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/LoginActivity;

    iput v6, p2, Lcom/narvii/account/LoginActivity;->statType:I

    const-string p2, "Email"

    goto :goto_0

    .line 525
    :cond_3
    iget-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 526
    invoke-virtual {p2, v4, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 528
    new-instance v1, Lcom/narvii/account/MobileLoginFragment;

    invoke-direct {v1}, Lcom/narvii/account/MobileLoginFragment;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 530
    sget-object v7, Lcom/narvii/logging/ActSemantic;->phoneLogin:Lcom/narvii/logging/ActSemantic;

    .line 531
    iget-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/LoginActivity;

    iput v5, p2, Lcom/narvii/account/LoginActivity;->statType:I

    const-string p2, "Phone"

    :goto_0
    if-eqz v7, :cond_4

    .line 557
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment$7;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-static {v0, v7}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "EngagementArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_4
    return-void
.end method
