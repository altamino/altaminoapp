.class public Lcom/narvii/prefs/CommunitySettingFragment;
.super Lcom/narvii/prefs/SettingsFragment;
.source "CommunitySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/prefs/SettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 54
    new-instance p1, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;-><init>(Lcom/narvii/prefs/CommunitySettingFragment;)V

    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment;->mAdapter:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 55
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment;->mAdapter:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment;->mAdapter:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    return-object p1
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isCommunityLevel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/narvii/prefs/SettingsFragment;->onResume()V

    return-void
.end method
