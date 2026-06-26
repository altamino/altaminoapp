.class Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;
.super Ljava/lang/Object;
.source "AccoutRestorePhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/restore/AccoutRestorePhoneFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/restore/AccoutRestorePhoneFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;->this$0:Lcom/narvii/account/restore/AccoutRestorePhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;->this$0:Lcom/narvii/account/restore/AccoutRestorePhoneFragment;

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;->this$0:Lcom/narvii/account/restore/AccoutRestorePhoneFragment;

    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment$1;->this$0:Lcom/narvii/account/restore/AccoutRestorePhoneFragment;

    iget-object v0, v0, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;->phoneInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 55
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 54
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
