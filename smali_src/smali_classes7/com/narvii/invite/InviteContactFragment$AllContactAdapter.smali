.class Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;
.super Lcom/narvii/invite/InviteContactFragment$ContactAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/permisson/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllContactAdapter"
.end annotation


# instance fields
.field builder:Lcom/narvii/permisson/NVPermission$Builder;

.field denied:Z

.field public loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

.field loadFinished:Z

.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadFinished:Z

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string p2, "android.permission.READ_CONTACTS"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const/16 p2, 0x6e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->builder:Lcom/narvii/permisson/NVPermission$Builder;

    .line 31
    return-void
.end method

.method private loadContacts()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;-><init>(Lcom/narvii/invite/InviteContactFragment;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;-><init>(Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->setCallback(Lcom/narvii/util/Callback;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    new-array v1, v1, [Ljava/lang/Void;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 31
    move-result v1

    .line 32
    :goto_0
    return v1
.end method

.method public getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;
    .locals 1

    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadFinished:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 6
    .line 7
    const/16 v1, 0x6e

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Lcom/narvii/app/NVFragment;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->builder:Lcom/narvii/permisson/NVPermission$Builder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 16
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 12
    :cond_0
    return-void
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    .line 28
    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContacts()V

    .line 4
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadFinished:Z

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->builder:Lcom/narvii/permisson/NVPermission$Builder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    return-void
.end method
