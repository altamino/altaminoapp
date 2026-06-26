.class Lcom/narvii/media/MediaGalleryActivity$1$1;
.super Ljava/lang/Object;
.source "MediaGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaGalleryActivity$1;->onPageScrolled(IFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaGalleryActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$1;I)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$1;

    iput p2, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$1;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    iget v1, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->val$position:I

    invoke-static {v0, v1}, Lcom/narvii/media/MediaGalleryActivity;->access$000(Lcom/narvii/media/MediaGalleryActivity;I)V

    return-void
.end method
