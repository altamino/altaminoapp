.class Lcom/narvii/account/AccountBaseFragment$2;
.super Ljava/lang/Object;
.source "AccountBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountBaseFragment;->accountRestore(Lcom/narvii/util/http/ApiRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountBaseFragment;

.field final synthetic val$req:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountBaseFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/narvii/account/AccountBaseFragment$2;->this$0:Lcom/narvii/account/AccountBaseFragment;

    iput-object p2, p0, Lcom/narvii/account/AccountBaseFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 313
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment$2;->this$0:Lcom/narvii/account/AccountBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    const-string p2, "email"

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/narvii/account/AccountBaseFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    iget-object v2, p0, Lcom/narvii/account/AccountBaseFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    const-string v3, "pass"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    iget-object v4, p0, Lcom/narvii/account/AccountBaseFragment$2;->val$req:Lcom/narvii/util/http/ApiRequest;

    const-string v5, "thirdPart"

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 318
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    const-class p1, Lcom/narvii/account/restore/AccountRestoreChooseFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 320
    iget-object p2, p0, Lcom/narvii/account/AccountBaseFragment$2;->this$0:Lcom/narvii/account/AccountBaseFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x245

    if-nez v4, :cond_2

    .line 323
    const-class v0, Lcom/narvii/account/restore/AccountRestoreEmailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment$2;->this$0:Lcom/narvii/account/AccountBaseFragment;

    invoke-virtual {p1, v0, v5}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 328
    const-class p1, Lcom/narvii/account/restore/AccoutRestorePhoneFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 329
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object p2, p0, Lcom/narvii/account/AccountBaseFragment$2;->this$0:Lcom/narvii/account/AccountBaseFragment;

    invoke-virtual {p2, p1, v5}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method
