.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 182
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    const-string v1, "toAlbumId"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    invoke-virtual {v1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4$1;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosToAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V

    return-void
.end method
