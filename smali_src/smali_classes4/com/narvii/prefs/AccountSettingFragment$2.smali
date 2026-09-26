.class Lcom/narvii/prefs/AccountSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-class v2, Lcom/narvii/master/MasterActivity;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    const-string v1, "disallowOnBoarding"

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const v1, 0x10008000

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/narvii/prefs/AccountSettingFragment$2;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    const v1, 0x7f010037

    .line 55
    .line 56
    .line 57
    const v2, 0x7f010038

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$2;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method
