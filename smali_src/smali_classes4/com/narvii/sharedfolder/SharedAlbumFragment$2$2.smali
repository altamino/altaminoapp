.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;->selectMode:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "singlePickUploadPhoto"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 19
    .line 20
    const-string v0, "fileIdList"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-class v0, Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog(Ljava/util/List;Lcom/narvii/util/Callback;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog()V

    .line 55
    :goto_0
    return-void
.end method
