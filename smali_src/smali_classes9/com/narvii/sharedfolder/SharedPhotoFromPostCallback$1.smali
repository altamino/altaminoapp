.class Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;->uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;

.field final synthetic val$finishActivity:Z

.field final synthetic val$nvActivity:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;ZLcom/narvii/app/NVActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;->val$finishActivity:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;->val$finishActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    invoke-direct {v0, p1}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/narvii/app/NVActivity;->addPendingForAttach(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method
