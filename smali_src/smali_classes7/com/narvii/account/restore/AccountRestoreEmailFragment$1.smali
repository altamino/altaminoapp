.class Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    .line 3
    .line 4
    const-string v1, "email"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreEmailFragment$1;->this$0:Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;->emailInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 35
    return-void
.end method
