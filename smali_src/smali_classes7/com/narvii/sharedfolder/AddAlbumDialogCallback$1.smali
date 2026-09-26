.class Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->this$0:Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->val$obj:Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string p2, "selectMode"

    .line 9
    .line 10
    const-string v0, "singlePickUploadPhoto"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->this$0:Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->fileIdList:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    const-string v0, "fileIdList"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->val$obj:Lcom/narvii/app/NVActivity;

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$1;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 32
    return-void
.end method
