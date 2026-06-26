.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;
.super Ljava/lang/Object;
.source "SharedAlbumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    const-string v0, "singlePickUploadPhoto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const-string v0, "fileIdList"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog(Ljava/util/List;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog()V

    :goto_0
    return-void
.end method
