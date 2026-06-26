.class Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Landroid/view/View;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 487
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 493
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0e51

    .line 494
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    const v0, 0x7f0f015c

    .line 495
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0193

    const/4 v1, 0x0

    .line 496
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x7f0f119f

    .line 497
    new-instance v1, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;)V

    const/high16 v2, -0x10000

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 503
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 505
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->val$v:Landroid/view/View;

    check-cast v0, Lcom/narvii/widget/FlagItemLayout;

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->access$1200(Lcom/narvii/poweruser/AdvancedOptionDialog$3;Lcom/narvii/widget/FlagItemLayout;)V

    goto :goto_0

    .line 489
    :cond_2
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$3;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$3;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1100(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 483
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$3$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
