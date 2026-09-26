.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;
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
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

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
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "selectMode"

    .line 9
    .line 10
    const-string v1, "edit"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "id"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "album"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 46
    const/4 v1, 0x1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1, v1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 50
    return-void
.end method
