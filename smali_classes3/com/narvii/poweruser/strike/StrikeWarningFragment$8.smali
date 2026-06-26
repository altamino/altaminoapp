.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;
.super Ljava/lang/Object;
.source "StrikeWarningFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeTemplateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

.field final synthetic val$template:Lcom/narvii/chat/template/MessageTemplate;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->val$template:Lcom/narvii/chat/template/MessageTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 491
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$400(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 492
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1064

    .line 493
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x7f0f0c29

    const/4 v1, 0x0

    const v2, -0x444445

    .line 494
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v0, 0x7f0f119f

    .line 495
    new-instance v1, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 501
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->val$template:Lcom/narvii/chat/template/MessageTemplate;

    invoke-static {p1, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$500(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V

    :goto_0
    return-void
.end method
