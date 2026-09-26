.class Lcom/narvii/media/MediaGalleryActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$1;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->val$position:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity$1;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/media/MediaGalleryActivity$1$1;->val$position:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/media/MediaGalleryActivity;->t(Lcom/narvii/media/MediaGalleryActivity;I)V

    .line 10
    return-void
.end method
