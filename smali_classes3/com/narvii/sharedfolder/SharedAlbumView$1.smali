.class Lcom/narvii/sharedfolder/SharedAlbumView$1;
.super Ljava/lang/Object;
.source "SharedAlbumView.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumView;->setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumView;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumView;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumView;->gradient:Landroid/view/View;

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method
