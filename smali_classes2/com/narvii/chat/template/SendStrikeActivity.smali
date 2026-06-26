.class public Lcom/narvii/chat/template/SendStrikeActivity;
.super Lcom/narvii/app/NVActivity;
.source "SendStrikeActivity.java"


# instance fields
.field strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "template"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 21
    instance-of v1, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    if-nez v1, :cond_0

    .line 22
    new-instance p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-direct {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    iget-object v2, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 25
    :cond_0
    check-cast p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iput-object p1, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    :goto_0
    return-void
.end method
