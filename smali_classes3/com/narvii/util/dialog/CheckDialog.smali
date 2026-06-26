.class public Lcom/narvii/util/dialog/CheckDialog;
.super Lcom/narvii/app/NVDialog;
.source "CheckDialog.java"


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private attached:Z

.field private content:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 26
    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    sget p1, Lcom/narvii/lib/R$layout;->dialog_check_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    sget p1, Lcom/narvii/lib/R$id;->check_dialog_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/dialog/CheckDialog;->content:Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$style;->DialogAnimationSlow:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    new-instance v0, Lcom/narvii/util/dialog/CheckDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/CheckDialog$1;-><init>(Lcom/narvii/util/dialog/CheckDialog;)V

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/dialog/CheckDialog;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/narvii/util/dialog/CheckDialog;->attached:Z

    return p0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/narvii/util/dialog/CheckDialog;->attached:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/narvii/util/dialog/CheckDialog;->attached:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 56
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 42
    sget v0, Lcom/narvii/lib/R$id;->check_dialog_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget v0, Lcom/narvii/lib/R$id;->check_dialog_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->toast_scale_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/narvii/util/dialog/CheckDialog;->content:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
