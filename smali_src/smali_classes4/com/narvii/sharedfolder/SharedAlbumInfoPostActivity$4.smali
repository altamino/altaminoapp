.class Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->onItemClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

.field final synthetic val$optCover:[I


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->val$optCover:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

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
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->val$optCover:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    const p2, 0x7f12020f

    .line 8
    .line 9
    if-eq p1, p2, :cond_1

    .line 10
    .line 11
    .line 12
    const p2, 0x7f12126d

    .line 13
    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    const-class v0, Lcom/narvii/media/MediaGalleryActivity;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    const-string v0, "list"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    const-string p2, "position"

    .line 46
    const/4 v0, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    const-class p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 64
    .line 65
    const-string v0, "folderId"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    const-string v0, "id"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    const-string p2, "selectMode"

    .line 77
    .line 78
    const-string v0, "singlePick"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 84
    .line 85
    const-string v0, "album"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 95
    const/4 v0, 0x1

    .line 96
    .line 97
    .line 98
    invoke-static {p2, p1, v0}, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$4;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 99
    :goto_0
    return-void
.end method
