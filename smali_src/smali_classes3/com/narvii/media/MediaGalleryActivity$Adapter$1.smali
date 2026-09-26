.class Lcom/narvii/media/MediaGalleryActivity$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


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

.field final synthetic val$item:Lcom/narvii/model/Media;

.field final synthetic val$iv:Lcom/narvii/widget/NVImageView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/widget/ProgressBar;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$iv:Lcom/narvii/widget/NVImageView;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$item:Lcom/narvii/model/Media;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    .line 3
    .line 4
    iget-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$iv:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-ne p3, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 18
    const/4 p1, 0x2

    .line 19
    .line 20
    if-ne p2, p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$item:Lcom/narvii/model/Media;

    .line 31
    .line 32
    if-ne p1, p2, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    sget p2, Lcom/narvii/lib/R$string;->image_not_available:I

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 50
    :cond_1
    return-void
.end method
