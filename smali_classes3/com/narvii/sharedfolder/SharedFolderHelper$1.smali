.class Lcom/narvii/sharedfolder/SharedFolderHelper$1;
.super Ljava/lang/Object;
.source "SharedFolderHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->showUploadChooseSourceDialog(Landroid/content/Context;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field final synthetic val$albumId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uploadPhotoCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$uploadPhotoCallback:Lcom/narvii/util/Callback;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance p2, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper$1$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$1;)V

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 126
    :cond_1
    const-class p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "selectMode"

    const-string v0, "pickUpload"

    .line 127
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$albumId:Ljava/lang/String;

    const-string v0, "toAlbumId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$1;->val$uploadPhotoCallback:Lcom/narvii/util/Callback;

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    .line 145
    :goto_0
    return-void
.end method
