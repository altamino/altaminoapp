.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1$1;
.super Ljava/lang/Object;
.source "SharedAlbumFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 219
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumSortFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1$1;->this$2:Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
