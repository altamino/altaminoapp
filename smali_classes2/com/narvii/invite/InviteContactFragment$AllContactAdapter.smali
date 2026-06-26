.class Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;
.super Lcom/narvii/invite/InviteContactFragment$ContactAdapter;
.source "InviteContactFragment.java"

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

    .line 466
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/narvii/invite/InviteContactFragment$ContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 459
    iput-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadFinished:Z

    .line 461
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const-string p2, "android.permission.READ_CONTACTS"

    .line 462
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 p2, 0x6e

    .line 463
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->builder:Lcom/narvii/permisson/NVPermission$Builder;

    return-void
.end method

.method private loadContacts()V
    .locals 2

    .line 494
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-direct {v0, v1}, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;-><init>(Lcom/narvii/invite/InviteContactFragment;)V

    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    .line 495
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    new-instance v1, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;

    invoke-direct {v1, p0}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter$1;-><init>(Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;)V

    invoke-virtual {v0, v1}, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->setCallback(Lcom/narvii/util/Callback;)V

    .line 503
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getItem(I)Lcom/narvii/invite/InviteContactFragment$Contact;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 458
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

    .line 479
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iget-object v0, v0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 472
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 473
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->this$0:Lcom/narvii/invite/InviteContactFragment;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p0}, Lcom/narvii/app/NVFragment;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    .line 474
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->builder:Lcom/narvii/permisson/NVPermission$Builder;

    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 508
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 509
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContactsTask:Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 510
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

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

    const/4 p1, 0x1

    .line 544
    iput-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    .line 545
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/permisson/PermissionRationaleDialog;->builder(Landroid/content/Context;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 548
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setRationalePermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 549
    invoke-virtual {p1, p3}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->setDeniedPermissionList(Ljava/util/List;)Lcom/narvii/permisson/PermissionRationaleDialog$Builder;

    move-result-object p1

    .line 550
    invoke-virtual {p1}, Lcom/narvii/permisson/PermissionRationaleDialog$Builder;->show()V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    .line 539
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadContacts()V

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

    const/4 p1, 0x0

    .line 487
    iput-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->loadFinished:Z

    .line 488
    iput-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->denied:Z

    .line 489
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;->builder:Lcom/narvii/permisson/NVPermission$Builder;

    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 490
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
