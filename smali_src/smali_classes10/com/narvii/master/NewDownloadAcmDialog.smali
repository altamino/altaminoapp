.class public Lcom/narvii/master/NewDownloadAcmDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0d01ad

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a0612

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const p1, 0x7f0a0321

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0612

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->downloadAcm()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 35
    :goto_0
    return-void
.end method
