.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->id:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->removePhotosFromAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V

    .line 25
    return-void
.end method
