.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;
.super Ljava/lang/Object;
.source "SharedAlbumFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2;[I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->val$ops:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->val$ops:[I

    aget p1, p1, p2

    const p2, 0x7f0f030b

    if-ne p1, p2, :cond_0

    .line 214
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog()V

    goto :goto_0

    :cond_0
    const p2, 0x7f0f0ed6

    if-ne p1, p2, :cond_1

    .line 216
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance p2, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;)V

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
