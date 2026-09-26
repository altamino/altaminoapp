.class public Lcom/narvii/util/AppUpgradeDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d01a3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0a0321

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 22
    const/4 v0, -0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0a0a71

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Landroid/widget/Button;

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
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    const v0, 0x7f0a0a71

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/util/PackageUtils;->openGooglePlay(Ljava/lang/String;)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
