.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;
.super Ljava/lang/Object;
.source "AllSharedPhotosFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;->newDatePageHelper(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/list/DatePageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;->this$1:Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;->call(Ljava/util/ArrayList;)V

    return-void
.end method

.method public call(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3$1;->this$1:Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;

    iget-object v0, v0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$3;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
