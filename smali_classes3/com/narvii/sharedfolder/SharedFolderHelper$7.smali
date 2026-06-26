.class Lcom/narvii/sharedfolder/SharedFolderHelper$7;
.super Ljava/lang/Object;
.source "SharedFolderHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog(Ljava/util/List;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$fileIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/util/List;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->val$fileIdList:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 314
    new-instance p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7;Landroid/content/Context;)V

    const/16 v0, 0x1e

    .line 324
    iput v0, p1, Lcom/narvii/widget/InputDialog;->editLimit:I

    const v0, 0x7f0f0c13

    .line 326
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 327
    iget-object v0, p1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    const v1, 0x7f0f10c5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    const/4 v0, 0x0

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 328
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f02fd

    const/4 v2, 0x4

    .line 329
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7;Lcom/narvii/widget/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
