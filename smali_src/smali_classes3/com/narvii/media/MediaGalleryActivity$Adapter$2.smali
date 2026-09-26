.class Lcom/narvii/media/MediaGalleryActivity$Adapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaGalleryActivity$Adapter;->getView(Landroid/view/View;Lcom/narvii/model/Media;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

.field final synthetic val$btnLoadHQ:Landroid/view/View;

.field final synthetic val$downloadingContainer:Landroid/view/View;

.field final synthetic val$il:Lcom/narvii/util/image/NVImageLoader;

.field final synthetic val$item:Lcom/narvii/model/Media;

.field final synthetic val$iv:Lcom/narvii/widget/NVImageView;

.field final synthetic val$pro:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/view/View;Landroid/view/View;Landroid/widget/ProgressBar;Lcom/narvii/model/Media;Lcom/narvii/widget/NVImageView;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$btnLoadHQ:Landroid/view/View;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$il:Lcom/narvii/util/image/NVImageLoader;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$btnLoadHQ:Landroid/view/View;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/model/Media;->getDownloadProgress()I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 25
    .line 26
    new-instance p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter$2;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$il:Lcom/narvii/util/image/NVImageLoader;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "uhq"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    new-instance v2, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, p0, p1}, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter$2;Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 53
    return-void
.end method
