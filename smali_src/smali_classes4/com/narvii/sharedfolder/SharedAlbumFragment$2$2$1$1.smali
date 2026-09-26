.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->val$response:Lcom/narvii/sharedfolder/SharedAlbumResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->val$response:Lcom/narvii/sharedfolder/SharedAlbumResponse;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "id"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->val$response:Lcom/narvii/sharedfolder/SharedAlbumResponse;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string v1, "prefetch"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 65
    const/4 v0, -0x1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1$1;->this$3:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$2;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 80
    return-void
.end method
