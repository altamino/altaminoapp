.class Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->setupResultIntent(Landroid/content/Intent;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment;->passInputLayout:Lcom/narvii/widget/TextInputLayout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/widget/TextInputLayout;->getEditContent()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "pass"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, -0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;->this$1:Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 61
    :cond_0
    return-void
.end method
