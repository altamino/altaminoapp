.class Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;
.super Ljava/lang/Object;
.source "CommunitySettingFragment.java"

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

    .line 160
    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 163
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/master/MasterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    iget-object v0, v0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 166
    iget-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    iget-object p1, p1, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f010029

    const v1, 0x7f01002a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 167
    iget-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;->this$1:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    iget-object p1, p1, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
