.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;
.super Ljava/lang/Object;
.source "SharedAlbumFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->call(Lcom/narvii/sharedfolder/SharedAlbumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

.field final synthetic val$response:Lcom/narvii/sharedfolder/SharedAlbumResponse;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->val$response:Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 250
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 253
    :cond_0
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->val$response:Lcom/narvii/sharedfolder/SharedAlbumResponse;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->val$response:Lcom/narvii/sharedfolder/SharedAlbumResponse;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 257
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 258
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
