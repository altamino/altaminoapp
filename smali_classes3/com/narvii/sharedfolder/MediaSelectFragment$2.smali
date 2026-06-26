.class Lcom/narvii/sharedfolder/MediaSelectFragment$2;
.super Ljava/lang/Object;
.source "MediaSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MediaSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MediaSelectFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MediaSelectFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
