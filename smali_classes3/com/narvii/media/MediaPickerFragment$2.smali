.class Lcom/narvii/media/MediaPickerFragment$2;
.super Ljava/lang/Object;
.source "MediaPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerFragment;

.field final synthetic val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

.field final synthetic val$options:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment;Ljava/util/ArrayList;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$2;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$options:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$2;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$options:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/media/MediaPickerFragment$Option;

    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaPickerFragment;->onOptionsClicked(Lcom/narvii/media/MediaPickerFragment$Option;)V

    .line 343
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$2;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object p2, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    invoke-static {p1, p2}, Lcom/narvii/media/MediaPickerFragment;->access$400(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    return-void
.end method
