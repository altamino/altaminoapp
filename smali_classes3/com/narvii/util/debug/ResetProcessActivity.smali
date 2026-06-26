.class public Lcom/narvii/util/debug/ResetProcessActivity;
.super Lcom/narvii/app/NVActivity;
.source "ResetProcessActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 15
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "Reset the process\n\nAll previous activities should be restart and restoreInstanceState.\n\n\nClick or wait 5 seconds to reset."

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 20
    new-instance v0, Lcom/narvii/util/debug/ResetProcessActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/debug/ResetProcessActivity$1;-><init>(Lcom/narvii/util/debug/ResetProcessActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/narvii/util/debug/ResetProcessActivity$2;

    invoke-direct {v0, p0}, Lcom/narvii/util/debug/ResetProcessActivity$2;-><init>(Lcom/narvii/util/debug/ResetProcessActivity;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
