.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->val$template:Lcom/narvii/chat/template/MessageTemplate;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->q(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f121161

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    const v1, -0x444445

    .line 30
    .line 31
    .line 32
    const v2, 0x7f120d57

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8$1;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f1212a7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;->val$template:Lcom/narvii/chat/template/MessageTemplate;

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->r(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V

    .line 58
    :goto_0
    return-void
.end method
