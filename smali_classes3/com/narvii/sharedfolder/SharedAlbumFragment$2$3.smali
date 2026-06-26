.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;
.super Ljava/lang/Object;
.source "SharedAlbumFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
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

    .line 291
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 294
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 295
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$3;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
