.class Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter$2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/Media;->getDownloadProgress()I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    sget v3, Lcom/narvii/lib/R$id;->hq_image_load_finish:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0xa

    .line 30
    .line 31
    if-lt v0, v1, :cond_2

    .line 32
    .line 33
    instance-of v0, v2, Ljava/lang/Boolean;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    const/16 v1, 0x5a

    .line 47
    :goto_0
    move v0, v1

    .line 48
    .line 49
    :cond_2
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/narvii/model/Media;->setDownloadProgress(I)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/model/Media;->getDownloadProgress()I

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    .line 69
    const-wide/16 v0, 0xc8

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 73
    return-void
.end method
