.class Lcom/narvii/sharedfolder/SharedBaseFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->val$source:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    const-string v0, "Source"

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->val$source:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedBaseFragment;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 17
    .line 18
    iput-object p1, v1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 19
    .line 20
    const-string p1, "shared_photo_pick"

    .line 21
    .line 22
    iput-object p1, v1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, v0, Lcom/narvii/sharedfolder/SharedBaseFragment;->dir:Ljava/io/File;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    const/16 v2, 0x19

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 32
    return-void
.end method
