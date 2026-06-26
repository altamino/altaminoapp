.class Lcom/narvii/sharedfolder/SharedAlbumView$2;
.super Ljava/lang/Object;
.source "SharedAlbumView.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumView;->setUpImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumView;

.field final synthetic val$imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumView;Lcom/narvii/image/ImageLoadTracker;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumView;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->val$imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumView;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumView;->gradient:Landroid/view/View;

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 92
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->val$imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/image/ImageLoadTracker;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    return-void
.end method
