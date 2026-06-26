.class Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;
.super Ljava/lang/Object;
.source "AddAlbumDialogCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->call(Lcom/narvii/app/NVActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

.field final synthetic val$obj:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/AddAlbumDialogCallback;Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->this$0:Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    iput-object p2, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->val$obj:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 42
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "selectMode"

    const-string v0, "singlePickUploadPhoto"

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object p2, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->this$0:Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    iget-object p2, p2, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->fileIdList:Ljava/util/List;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "fileIdList"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object p2, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->val$obj:Lcom/narvii/app/NVActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
