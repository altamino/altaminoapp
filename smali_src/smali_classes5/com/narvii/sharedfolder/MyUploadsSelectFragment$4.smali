.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

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
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "toAlbumId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosToAlbum(Ljava/lang/String;Ljava/util/Collection;Lcom/narvii/util/Callback;)V

    .line 33
    return-void
.end method
