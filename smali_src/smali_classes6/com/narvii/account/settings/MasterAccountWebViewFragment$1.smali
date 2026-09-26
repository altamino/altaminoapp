.class Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 17
    .line 18
    const-string v1, "topActivity"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 34
    .line 35
    const/16 v2, 0x64

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    new-instance v1, Landroid/content/Intent;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    const-class v3, Lcom/narvii/master/MasterActivity;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .line 52
    const-string v2, "disallowOnBoarding"

    .line 53
    const/4 v3, 0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const v2, 0x10008000

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f010037

    .line 69
    .line 70
    .line 71
    const v2, 0x7f010038

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/account/settings/MasterAccountWebViewFragment$1;->this$0:Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    :cond_2
    return-void
.end method
