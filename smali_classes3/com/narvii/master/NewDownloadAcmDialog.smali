.class public Lcom/narvii/master/NewDownloadAcmDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "NewDownloadAcmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 13
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    const p1, 0x7f0b018e

    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f0904c9

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09025e

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0904c9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->downloadAcm()V

    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method
