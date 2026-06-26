.class public Lcom/narvii/util/AppUpgradeFragment;
.super Lcom/narvii/app/NVFragment;
.source "AppUpgradeFragment.java"


# instance fields
.field dlg:Lcom/narvii/util/AppUpgradeDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0306

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 41
    iget-object v0, p0, Lcom/narvii/util/AppUpgradeFragment;->dlg:Lcom/narvii/util/AppUpgradeDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/narvii/util/AppUpgradeFragment;->dlg:Lcom/narvii/util/AppUpgradeDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    iget-object p1, p0, Lcom/narvii/util/AppUpgradeFragment;->dlg:Lcom/narvii/util/AppUpgradeDialog;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/narvii/util/AppUpgradeDialog;

    invoke-direct {p1, p0}, Lcom/narvii/util/AppUpgradeDialog;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/util/AppUpgradeFragment;->dlg:Lcom/narvii/util/AppUpgradeDialog;

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/AppUpgradeFragment;->dlg:Lcom/narvii/util/AppUpgradeDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
