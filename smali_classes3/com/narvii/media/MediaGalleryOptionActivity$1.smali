.class Lcom/narvii/media/MediaGalleryOptionActivity$1;
.super Ljava/lang/Object;
.source "MediaGalleryOptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaGalleryOptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaGalleryOptionActivity;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryOptionActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity$1;->this$0:Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity$1;->this$0:Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
