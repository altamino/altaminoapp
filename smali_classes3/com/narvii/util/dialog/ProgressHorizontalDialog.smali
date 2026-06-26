.class public Lcom/narvii/util/dialog/ProgressHorizontalDialog;
.super Lcom/narvii/util/dialog/RealtimeBlurDialog;
.source "ProgressHorizontalDialog.java"


# static fields
.field private static final PRE_PROGRESS:I = 0xa


# instance fields
.field private final prego:Ljava/lang/Runnable;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/RealtimeBlurDialog;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Lcom/narvii/util/dialog/ProgressHorizontalDialog$1;

    invoke-direct {p1, p0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog$1;-><init>(Lcom/narvii/util/dialog/ProgressHorizontalDialog;)V

    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->prego:Ljava/lang/Runnable;

    .line 25
    sget p1, Lcom/narvii/lib/R$layout;->dialog_progress_horizontal_layout:I

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->setContentView(I)V

    .line 26
    sget p1, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->textView:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Lcom/narvii/util/dialog/RealtimeBlurDialog;->getRealtimeBlurView()Lcom/github/mmin18/widget/RealtimeBlurView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 1

    const/16 v0, 0x64

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(II)V

    return-void
.end method

.method public setProgress(II)V
    .locals 2

    .line 42
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->prego:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    sget v0, Lcom/narvii/lib/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    mul-int/lit8 v1, p2, 0xa

    .line 45
    div-int/lit8 v1, v1, 0x64

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    add-int/2addr v1, p1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 52
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->prego:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
