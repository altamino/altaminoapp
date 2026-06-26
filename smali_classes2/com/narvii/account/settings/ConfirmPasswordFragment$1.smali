.class Lcom/narvii/account/settings/ConfirmPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ConfirmPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object v0, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->pass:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 98
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/settings/ConfirmPasswordFragment$1$1;-><init>(Lcom/narvii/account/settings/ConfirmPasswordFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 109
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object v0, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->pass:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->access$100(Lcom/narvii/account/settings/ConfirmPasswordFragment;Ljava/lang/String;)V

    return-void
.end method
