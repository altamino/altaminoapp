.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;
.super Ljava/lang/Object;
.source "SharedAlbumFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/sharedfolder/SharedAlbumResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

.field final synthetic val$ids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;Ljava/util/List;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->val$ids:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/sharedfolder/SharedAlbumResponse;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object v1, p1, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    invoke-virtual {v1}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->val$ids:Ljava/util/List;

    new-instance v3, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosToAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 241
    check-cast p1, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->call(Lcom/narvii/sharedfolder/SharedAlbumResponse;)V

    return-void
.end method
