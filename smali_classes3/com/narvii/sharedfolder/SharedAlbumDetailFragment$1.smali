.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SharedAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 83
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
