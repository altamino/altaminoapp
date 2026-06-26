.class Lcom/narvii/sharedfolder/SharedAlbumSortFragment$1;
.super Ljava/lang/Object;
.source "SharedAlbumSortFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumSortFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumSortFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumSortFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumSortFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumSortFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumSortFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumSortFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 71
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumSortFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumSortFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumSortFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
