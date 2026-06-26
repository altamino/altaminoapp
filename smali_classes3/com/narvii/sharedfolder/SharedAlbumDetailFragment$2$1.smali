.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;
.super Ljava/lang/Object;
.source "SharedAlbumDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    const-string v0, " Square Button"

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->addPhotos(Ljava/lang/String;)V

    return-void
.end method
