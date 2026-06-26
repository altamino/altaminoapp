.class Lcom/narvii/prefs/SettingsFragment$2;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$2;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$2;->this$0:Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
