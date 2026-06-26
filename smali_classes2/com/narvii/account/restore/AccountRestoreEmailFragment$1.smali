.class Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;
.super Ljava/lang/Object;
.source "AccountRestoreEmailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/restore/AccountRestoreEmailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/restore/AccountRestoreEmailFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 39
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 38
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
