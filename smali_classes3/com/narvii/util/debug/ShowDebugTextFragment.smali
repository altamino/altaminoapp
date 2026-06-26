.class public Lcom/narvii/util/debug/ShowDebugTextFragment;
.super Lcom/narvii/app/NVFragment;
.source "ShowDebugTextFragment.java"


# instance fields
.field larkRobot:Lcom/narvii/util/debug/LarkRobot;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 18
    new-instance v0, Lcom/narvii/util/debug/LarkRobot;

    invoke-direct {v0, p0}, Lcom/narvii/util/debug/LarkRobot;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/util/debug/ShowDebugTextFragment;->larkRobot:Lcom/narvii/util/debug/LarkRobot;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 23
    sget p3, Lcom/narvii/lib/R$layout;->debug_show_text:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "text"

    .line 29
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance p1, Lcom/narvii/util/debug/ShowDebugTextFragment$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/util/debug/ShowDebugTextFragment$1;-><init>(Lcom/narvii/util/debug/ShowDebugTextFragment;Ljava/lang/String;)V

    const-string p2, "Send"

    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method
