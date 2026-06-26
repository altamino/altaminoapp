.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

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

    .line 491
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->val$sharedFile:Lcom/narvii/model/SharedFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 494
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->val$sharedFile:Lcom/narvii/model/SharedFile;

    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->deletePhotos(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;)V

    return-void
.end method
