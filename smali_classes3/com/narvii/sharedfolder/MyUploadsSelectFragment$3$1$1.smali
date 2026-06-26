.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;->this$2:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 158
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;->this$2:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object v1, p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    invoke-virtual {v1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->deletePhotos(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/util/Callback;)V

    return-void
.end method
