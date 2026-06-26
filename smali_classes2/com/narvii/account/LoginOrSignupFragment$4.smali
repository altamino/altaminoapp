.class Lcom/narvii/account/LoginOrSignupFragment$4;
.super Ljava/lang/Object;
.source "LoginOrSignupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginOrSignupFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginOrSignupFragment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginOrSignupFragment;[I)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->val$ops:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 430
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->val$ops:[I

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    move-object p1, v1

    move-object v2, p1

    goto :goto_0

    .line 433
    :sswitch_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->phoneSignup:Lcom/narvii/logging/ActSemantic;

    .line 434
    iget-object v2, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/LoginActivity;

    iput p2, v2, Lcom/narvii/account/LoginActivity;->statType:I

    const-string v2, "Phone"

    goto :goto_0

    .line 448
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->googleSignup:Lcom/narvii/logging/ActSemantic;

    .line 449
    iget-object v2, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/LoginActivity;

    const/4 v3, 0x4

    iput v3, v2, Lcom/narvii/account/LoginActivity;->statType:I

    const-string v2, "Google"

    goto :goto_0

    .line 443
    :sswitch_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->facebookSignup:Lcom/narvii/logging/ActSemantic;

    .line 444
    iget-object v2, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/LoginActivity;

    const/4 v3, 0x3

    iput v3, v2, Lcom/narvii/account/LoginActivity;->statType:I

    const-string v2, "Facebook"

    goto :goto_0

    .line 438
    :sswitch_3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->emailSignup:Lcom/narvii/logging/ActSemantic;

    .line 439
    iget-object v2, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/LoginActivity;

    iput v0, v2, Lcom/narvii/account/LoginActivity;->statType:I

    const-string v2, "Email"

    :goto_0
    if-eqz p1, :cond_0

    .line 454
    iget-object v3, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-static {v3, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v3, "EngagementArea"

    invoke-virtual {p1, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v3, 0x7f01000e

    const v4, 0x7f01000f

    const v5, 0x7f010010

    const v6, 0x7f010011

    .line 458
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 460
    new-instance v3, Lcom/narvii/account/AgeGatingFragment;

    invoke-direct {v3}, Lcom/narvii/account/AgeGatingFragment;-><init>()V

    .line 461
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "method"

    .line 462
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v4, 0x7f0904ba

    .line 464
    invoke-virtual {p1, v4, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 466
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    iput-object v2, p1, Lcom/narvii/account/LoginActivity;->loggingMethod:Ljava/lang/String;

    .line 467
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment$4;->this$0:Lcom/narvii/account/LoginOrSignupFragment;

    const-string v1, "logging"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    aput-object v2, v0, p2

    const-string p2, "SignupStarting"

    .line 468
    invoke-interface {p1, p2, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0035 -> :sswitch_3
        0x7f0f003a -> :sswitch_2
        0x7f0f003d -> :sswitch_1
        0x7f0f0051 -> :sswitch_0
    .end sparse-switch
.end method
