.class public Lcom/narvii/amino/DeprecatedGuideToMasterDialog;
.super Lcom/narvii/app/NVDialog;
.source "DeprecatedGuideToMasterDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "DeprecatedGuideToMaster"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0b0124

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090370

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$1;-><init>(Lcom/narvii/amino/DeprecatedGuideToMasterDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09094f

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/amino/DeprecatedGuideToMasterDialog$2;-><init>(Lcom/narvii/amino/DeprecatedGuideToMasterDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
