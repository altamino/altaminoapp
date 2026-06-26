.class public Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;
.super Landroid/app/AlertDialog;
.source "ReputationGuideDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static show(Lcom/narvii/app/NVContext;)Landroid/app/AlertDialog;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 20
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    .line 21
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 23
    check-cast p0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const p1, 0x7f0b05ec

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    const p1, 0x7f09018a

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 42
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog$1;-><init>(Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
