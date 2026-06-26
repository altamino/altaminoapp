.class Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;
.super Lcom/narvii/adapter/RadioGroupAdapter;
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

    .line 156
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-direct {p0, p2}, Lcom/narvii/adapter/RadioGroupAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/adapter/RadioItem;",
            ">;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/narvii/adapter/RadioItem;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iget-object v2, v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lcom/narvii/adapter/RadioItem;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iget-object v2, v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/narvii/adapter/RadioItem;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iget-object v2, v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 166
    invoke-super/range {p0 .. p5}, Lcom/narvii/adapter/RadioGroupAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 167
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->getSelectedItemId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->access$300(Lcom/narvii/prefs/UserProfilePrivilegeFragment;I)V

    const/4 p1, 0x1

    return p1
.end method
