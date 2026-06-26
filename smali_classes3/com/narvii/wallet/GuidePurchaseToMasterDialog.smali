.class public Lcom/narvii/wallet/GuidePurchaseToMasterDialog;
.super Landroid/app/AlertDialog;
.source "GuidePurchaseToMasterDialog.java"


# instance fields
.field private pagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog;->pagePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/wallet/GuidePurchaseToMasterDialog;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog;->pagePath:Ljava/lang/String;

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)Lcom/narvii/wallet/GuidePurchaseToMasterDialog;
    .locals 1

    .line 24
    new-instance v0, Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    invoke-direct {v0, p0, p1}, Lcom/narvii/wallet/GuidePurchaseToMasterDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const p1, 0x7f0b05bc

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 42
    new-instance p1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090187

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    new-instance v1, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$1;-><init>(Lcom/narvii/wallet/GuidePurchaseToMasterDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09018a

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    new-instance v1, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/wallet/GuidePurchaseToMasterDialog$2;-><init>(Lcom/narvii/wallet/GuidePurchaseToMasterDialog;Lcom/narvii/util/PackageUtils;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
