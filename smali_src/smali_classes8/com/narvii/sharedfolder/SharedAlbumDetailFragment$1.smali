.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p2, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    :cond_0
    return-void
.end method
