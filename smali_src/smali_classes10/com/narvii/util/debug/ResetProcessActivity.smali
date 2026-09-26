.class public Lcom/narvii/util/debug/ResetProcessActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    const-string v0, "Reset the process\n\nAll previous activities should be restart and restoreInstanceState.\n\n\nClick or wait 5 seconds to reset."

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/debug/ResetProcessActivity$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/util/debug/ResetProcessActivity$1;-><init>(Lcom/narvii/util/debug/ResetProcessActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    new-instance p1, Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/util/debug/ResetProcessActivity$2;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/narvii/util/debug/ResetProcessActivity$2;-><init>(Lcom/narvii/util/debug/ResetProcessActivity;)V

    .line 35
    .line 36
    const-wide/16 v1, 0x1388

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method
