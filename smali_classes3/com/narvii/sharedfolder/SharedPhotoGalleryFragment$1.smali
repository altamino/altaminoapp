.class Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;
.super Ljava/lang/Object;
.source "SharedPhotoGalleryFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/SharedFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/SharedFile;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "delete"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 55
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;->call(Lcom/narvii/model/SharedFile;)V

    return-void
.end method
