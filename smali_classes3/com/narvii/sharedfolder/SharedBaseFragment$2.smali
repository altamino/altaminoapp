.class Lcom/narvii/sharedfolder/SharedBaseFragment$2;
.super Ljava/lang/Object;
.source "SharedBaseFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedBaseFragment;->addPhotos(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->val$source:Ljava/lang/String;

    const-string v1, "Source"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, v1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    const-string p1, "shared_photo_pick"

    .line 85
    iput-object p1, v1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 86
    iget-object p1, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->dir:Ljava/io/File;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x19

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    return-void
.end method
