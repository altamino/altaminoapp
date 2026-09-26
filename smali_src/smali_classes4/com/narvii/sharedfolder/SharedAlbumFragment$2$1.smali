.class Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->val$ops:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    const p2, 0x7f120360

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    const p2, 0x7f120fef

    .line 23
    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedAlbumFragment$2;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 31
    .line 32
    new-instance p2, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumFragment$2$1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
