.class Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;
.super Ljava/lang/Object;
.source "MasterAccountWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/MasterAccountWebViewFragment;->popupLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/MasterAccountWebViewFragment;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    const-string v1, "topActivity"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    const v3, 0x7f01002a

    const v4, 0x7f010029

    const v5, 0x10008000

    if-ne v1, v2, :cond_1

    const v1, 0x100020

    .line 35
    invoke-static {v1}, Lcom/narvii/amino/MainActivity;->setPendingCommand(I)V

    .line 36
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v6, Lcom/narvii/amino/MainActivity;

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    new-instance v2, Lcom/narvii/util/PackageUtils;

    iget-object v6, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-virtual {v6}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v2

    const-string v6, "__communityId"

    .line 38
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 43
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v6, Lcom/narvii/master/MasterActivity;

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const-string v6, "disallowOnBoarding"

    .line 44
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
