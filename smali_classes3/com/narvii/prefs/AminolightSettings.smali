.class public Lcom/narvii/prefs/AminolightSettings;
.super Lcom/narvii/list/NVListFragment;
.source "AminolightSettings.java"


# instance fields
.field adapter:Lcom/narvii/prefs/AminolightSettings$Adapter;

.field prefs:Landroid/content/SharedPreferences;

.field final switchCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/list/prefs/PrefsToggle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    new-instance v0, Lcom/narvii/prefs/AminolightSettings$1;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/AminolightSettings$1;-><init>(Lcom/narvii/prefs/AminolightSettings;)V

    iput-object v0, p0, Lcom/narvii/prefs/AminolightSettings;->switchCallback:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 322
    new-instance p1, Lcom/narvii/prefs/AminolightSettings$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/prefs/AminolightSettings$Adapter;-><init>(Lcom/narvii/prefs/AminolightSettings;)V

    iput-object p1, p0, Lcom/narvii/prefs/AminolightSettings;->adapter:Lcom/narvii/prefs/AminolightSettings$Adapter;

    .line 323
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/AminolightSettings;->adapter:Lcom/narvii/prefs/AminolightSettings$Adapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 324
    iget-object p1, p0, Lcom/narvii/prefs/AminolightSettings;->adapter:Lcom/narvii/prefs/AminolightSettings$Adapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Aminolight Settings"

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected isCommunityLevel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "prefs"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/prefs/AminolightSettings;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method
