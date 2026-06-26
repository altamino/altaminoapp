.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;
.super Ljava/lang/Object;
.source "SharedPhotoSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 92
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f0f0085

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const v2, 0x7f0f0ebe

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 140
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
