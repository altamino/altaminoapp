.class Lcom/narvii/media/MediaGalleryActivity$Adapter$3;
.super Ljava/lang/Object;
.source "MediaGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaGalleryActivity$Adapter;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 484
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {p1}, Lcom/narvii/media/MediaGalleryActivity;->saveImageToPhone()V

    :cond_0
    return-void
.end method
