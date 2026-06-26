.class public Lcom/narvii/util/AppUpgradeDialog;
.super Lcom/narvii/app/NVDialog;
.source "AppUpgradeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 16
    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 17
    sget p1, Lcom/narvii/lib/R$layout;->dialog_app_upgrade:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 19
    sget p1, Lcom/narvii/lib/R$id;->close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    const/4 v0, -0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    sget p1, Lcom/narvii/lib/R$id;->open_app_store_button:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 31
    sget v0, Lcom/narvii/lib/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 33
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->open_app_store_button:I

    if-ne p1, v0, :cond_1

    .line 34
    new-instance p1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
