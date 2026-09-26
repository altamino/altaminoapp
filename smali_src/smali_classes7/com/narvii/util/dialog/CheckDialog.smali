.class public Lcom/narvii/util/dialog/CheckDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# instance fields
.field animatorSet:Landroid/animation/AnimatorSet;

.field private attached:Z

.field private content:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    sget p1, Lcom/narvii/lib/R$layout;->dialog_check_layout:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 11
    .line 12
    sget p1, Lcom/narvii/lib/R$id;->check_dialog_layout:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/util/dialog/CheckDialog;->content:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    sget v0, Lcom/narvii/lib/R$style;->DialogAnimationSlow:I

    .line 29
    .line 30
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 31
    .line 32
    new-instance p1, Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/util/dialog/CheckDialog$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/CheckDialog$1;-><init>(Lcom/narvii/util/dialog/CheckDialog;)V

    .line 45
    .line 46
    const-wide/16 v1, 0x4b0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/dialog/CheckDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/util/dialog/CheckDialog;->attached:Z

    return p0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/util/dialog/CheckDialog;->attached:Z

    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/util/dialog/CheckDialog;->attached:Z

    .line 7
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog;->animatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog;->animatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 19
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->check_dialog_content:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/16 p1, 0x8

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sget v1, Lcom/narvii/lib/R$anim;->toast_scale_in:I

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/util/dialog/CheckDialog;->content:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    return-void
.end method
