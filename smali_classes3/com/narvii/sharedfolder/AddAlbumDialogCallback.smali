.class public Lcom/narvii/sharedfolder/AddAlbumDialogCallback;
.super Ljava/lang/Object;
.source "AddAlbumDialogCallback.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/app/NVActivity;",
        ">;"
    }
.end annotation


# instance fields
.field fileIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->fileIdList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->fileIdList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f007e

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0c29

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f119f

    .line 39
    new-instance v2, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;-><init>(Lcom/narvii/sharedfolder/AddAlbumDialogCallback;Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    new-instance p1, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$2;

    invoke-direct {p1, p0, v0}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$2;-><init>(Lcom/narvii/sharedfolder/AddAlbumDialogCallback;Landroid/app/AlertDialog$Builder;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->call(Lcom/narvii/app/NVActivity;)V

    return-void
.end method
