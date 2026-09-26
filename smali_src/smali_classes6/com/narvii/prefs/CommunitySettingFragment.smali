.class public Lcom/narvii/prefs/CommunitySettingFragment;
.super Lcom/narvii/prefs/SettingsFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/prefs/SettingsFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;-><init>(Lcom/narvii/prefs/CommunitySettingFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment;->mAdapter:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment;->mAdapter:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment;->mAdapter:Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;

    .line 19
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/prefs/SettingsFragment;->onResume()V

    .line 4
    return-void
.end method
