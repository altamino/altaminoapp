.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 5
    .line 6
    const-string v0, " Square Button"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->addPhotos(Ljava/lang/String;)V

    .line 10
    return-void
.end method
