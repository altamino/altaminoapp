.class Lcom/narvii/account/AgeGatingFragment$3;
.super Ljava/lang/Object;
.source "AgeGatingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AgeGatingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AgeGatingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/AgeGatingFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 133
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 134
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    iget-object p1, p1, Lcom/narvii/account/AgeGatingFragment;->countryInfo:Lcom/narvii/account/mobile/CountryInfoR;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/account/mobile/CountryInfoR;->isGDPR()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    iget-object v0, v0, Lcom/narvii/account/AgeGatingFragment;->date:Ljava/util/Date;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 138
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    iget-object p1, p1, Lcom/narvii/account/AgeGatingFragment;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_1

    .line 139
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f00b6

    .line 140
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 141
    new-instance v2, Lcom/narvii/account/AgeGatingFragment$3$1;

    invoke-direct {v2, p0}, Lcom/narvii/account/AgeGatingFragment$3$1;-><init>(Lcom/narvii/account/AgeGatingFragment$3;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 147
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Phone"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const v3, 0x7f0904ba

    const-string v4, "key_sign_up_method"

    const v5, 0x7f010011

    const v6, 0x7f010010

    const v7, 0x7f01000f

    const v8, 0x7f01000e

    if-eqz v0, :cond_2

    .line 154
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v8, v7, v6, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 157
    new-instance v0, Lcom/narvii/account/MobileSignupFragment;

    invoke-direct {v0}, Lcom/narvii/account/MobileSignupFragment;-><init>()V

    .line 158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "phoneSignup"

    .line 159
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    :cond_2
    const-string v0, "Email"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v8, v7, v6, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 166
    new-instance v0, Lcom/narvii/account/EmailSignupFragment;

    invoke-direct {v0}, Lcom/narvii/account/EmailSignupFragment;-><init>()V

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "emailSignup"

    .line 168
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :cond_3
    const-string v0, "Google"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0904d9

    if-eqz v0, :cond_4

    .line 174
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/GoogleLoginFragment;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/narvii/account/GoogleLoginFragment;->requestLogin(I)V

    goto :goto_1

    :cond_4
    const-string v0, "AutoSignup"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 176
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    const-string v0, "thirdPartSecret"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/GoogleLoginFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/account/GoogleLoginFragment;->requirePasswordNext(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
