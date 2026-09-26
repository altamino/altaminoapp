.class Lcom/narvii/sharedfolder/SharedAlbumView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->val$imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumView;->gradient:Landroid/view/View;

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumView$2;->val$imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/image/ImageLoadTracker;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    .line 19
    return-void
.end method
