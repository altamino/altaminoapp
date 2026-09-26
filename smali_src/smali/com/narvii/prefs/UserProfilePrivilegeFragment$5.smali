.class Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;
.super Lcom/narvii/adapter/RadioGroupAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/adapter/RadioGroupAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/adapter/RadioItem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v3, v2}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v3, v1}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/adapter/RadioItem;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    .line 32
    const/4 v3, 0x2

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v3, v2}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v3, v1}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/adapter/RadioItem;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    .line 53
    const/4 v3, 0x3

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3, v2}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v3, v1}, Lcom/narvii/adapter/RadioItem;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/adapter/RadioGroupAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$5;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/adapter/RadioGroupAdapter;->getSelectedItemId()I

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->z(Lcom/narvii/prefs/UserProfilePrivilegeFragment;I)V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method
