.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->addPhotos(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iput-object p2, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 96
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const-string v0, "shared_photo_pick"

    iput-object v0, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "showAddAlbumAlert"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;->val$source:Ljava/lang/String;

    const-string v2, "Source"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object v2, v1, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, v2, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 101
    iget-object p1, v1, Lcom/narvii/sharedfolder/SharedBaseFragment;->dir:Ljava/io/File;

    const/4 v1, 0x0

    const/16 v3, 0x19

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    return-void
.end method
