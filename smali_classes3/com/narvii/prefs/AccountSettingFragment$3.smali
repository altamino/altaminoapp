.class Lcom/narvii/prefs/AccountSettingFragment$3;
.super Ljava/lang/Object;
.source "AccountSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AccountSettingFragment;->resetApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AccountSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AccountSettingFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 192
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    const v2, 0x7f01002a

    const v3, 0x7f010029

    const v4, 0x10008000

    if-ne v0, v1, :cond_1

    const v0, 0x100020

    .line 196
    invoke-static {v0}, Lcom/narvii/amino/MainActivity;->setPendingCommand(I)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v5, Lcom/narvii/amino/MainActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    new-instance v1, Lcom/narvii/util/PackageUtils;

    iget-object v5, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v1

    const-string v5, "__communityId"

    .line 199
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 202
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v5, Lcom/narvii/master/MasterActivity;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v5, "disallowOnBoarding"

    .line 205
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 208
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 210
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$3;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
