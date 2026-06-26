.class Lcom/narvii/poweruser/AdvancedOptionDialog$12;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 766
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    if-eqz v0, :cond_1

    .line 767
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 768
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00a8

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 769
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 770
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 772
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$12;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0bae

    .line 773
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0f0bad

    .line 774
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x7f0f0193

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 775
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x104000a

    const/4 v1, 0x4

    .line 776
    new-instance v2, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;

    invoke-direct {v2, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$12$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$12;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 782
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    return-void
.end method
