.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;
.super Ljava/lang/Object;
.source "SharedPhotoSelectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

.field final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->val$ops:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p2, 0x7f0f0085

    if-eq p1, p2, :cond_2

    const p2, 0x7f0f0ebe

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object p2, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    if-nez p2, :cond_1

    return-void

    .line 118
    :cond_1
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 119
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0ebf

    .line 120
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f119f

    .line 122
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;)V

    const/high16 v1, -0x10000

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 134
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 108
    :cond_2
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "selectMode"

    const-string v0, "singlePickUploadPhoto"

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    const-string v0, "filterAlbumId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    invoke-virtual {p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "fileIdList"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method
