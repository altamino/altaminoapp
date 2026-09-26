.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/sharedfolder/AlbumInfoPost;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/sharedfolder/AlbumInfoPost;-><init>()V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/SharedAlbum;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    iput-object v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->title:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->description:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, v1, Lcom/narvii/model/SharedAlbum;->coverMediaList:Ljava/util/List;

    .line 50
    .line 51
    iput-object v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->coverMediaList:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    .line 55
    move-result v2

    .line 56
    .line 57
    iput-boolean v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->isDefaultFolder:Z

    .line 58
    .line 59
    iget v2, v1, Lcom/narvii/model/SharedAlbum;->status:I

    .line 60
    .line 61
    iput v2, v0, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    .line 62
    .line 63
    const-string v2, "post"

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    const-string v0, "folderId"

    .line 73
    .line 74
    iget-object v2, v1, Lcom/narvii/model/SharedAlbum;->folderId:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    const-string v0, "album"

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 89
    const/4 v1, 0x2

    .line 90
    .line 91
    .line 92
    invoke-static {v0, p1, v1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 93
    return-void
.end method
