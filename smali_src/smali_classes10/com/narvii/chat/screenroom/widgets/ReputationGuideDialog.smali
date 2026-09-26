.class public Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static show(Lcom/narvii/app/NVContext;)Landroid/app/AlertDialog;
    .locals 1

    .line 1
    .line 2
    :goto_0
    if-eqz p0, :cond_0

    .line 3
    .line 4
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    if-eqz p0, :cond_1

    .line 14
    .line 15
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 30
    return-object v0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0d06a0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0a023b

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog$1;-><init>(Lcom/narvii/chat/screenroom/widgets/ReputationGuideDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
