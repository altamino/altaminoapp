.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

.field final synthetic val$sharedFile:Lcom/narvii/model/SharedFile;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/model/SharedFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->deletePhotos(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;)V

    .line 27
    return-void
.end method
