.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;
.super Ljava/lang/Object;
.source "SharedPhotoSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 125
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object v1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->removePhotosFromAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V

    return-void
.end method
