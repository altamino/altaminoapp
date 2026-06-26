.class Lcom/narvii/prefs/UserProfilePrivilegeFragment$6;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "UserProfilePrivilegeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/UserProfilePrivilegeFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$6;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/narvii/list/prefs/PrefsSection;

    const v1, 0x7f0f02bf

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    const/4 v1, 0x0

    .line 180
    iput-boolean v1, v0, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$6;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iget-object v0, v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->communityPrivilegeAdapter:Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$CommunityPrivilegeAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
