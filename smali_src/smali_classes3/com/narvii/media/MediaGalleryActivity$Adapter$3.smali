.class Lcom/narvii/media/MediaGalleryActivity$Adapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$3;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/media/MediaGalleryActivity;->saveImageToPhone()V

    .line 10
    :cond_0
    return-void
.end method
