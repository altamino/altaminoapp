.class Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;
.super Ljava/lang/Object;
.source "AccountRestoreBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    iget-object p1, p1, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 233
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->setupResultIntent(Landroid/content/Intent;)V

    .line 234
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pass"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 236
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    iget-object p1, p1, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
