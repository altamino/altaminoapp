.class Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->passEdit:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->pass:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    iput-object v0, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1$1;-><init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$1;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->pass:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->p(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;Ljava/lang/String;)V

    .line 56
    return-void
.end method
