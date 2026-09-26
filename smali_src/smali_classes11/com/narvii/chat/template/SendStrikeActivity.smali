.class public Lcom/narvii/chat/template/SendStrikeActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"


# instance fields
.field strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onBackPressed()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, "template"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    instance-of v1, p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    const v1, 0x1020002

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    check-cast p1, Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/chat/template/SendStrikeActivity;->strikeWarningFragment:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 50
    :goto_0
    return-void
.end method
