.class Lcom/narvii/media/MediaPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$2;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$options:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$2;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$options:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaPickerFragment;->onOptionsClicked(Lcom/narvii/media/MediaPickerFragment$Option;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$2;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/media/MediaPickerFragment$2;->val$li:Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/media/MediaPickerFragment;->q(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    .line 21
    return-void
.end method
