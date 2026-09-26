.class Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->leaveCommunity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/master/MasterActivity;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    const v0, 0x7f010037

    .line 38
    .line 39
    .line 40
    const v1, 0x7f010038

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 51
    return-void
.end method
