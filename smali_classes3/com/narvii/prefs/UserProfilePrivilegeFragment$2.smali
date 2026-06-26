.class Lcom/narvii/prefs/UserProfilePrivilegeFragment$2;
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

    .line 133
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$2;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

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

    .line 136
    new-instance v0, Lcom/narvii/list/prefs/PrefsSection;

    iget-object v1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$2;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->access$200(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsSection;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, v0, Lcom/narvii/list/prefs/PrefsSection;->isAllCaps:Z

    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
