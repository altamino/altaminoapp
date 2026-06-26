.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

.field final synthetic val$inputDialog:Lcom/narvii/widget/InputDialog;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/widget/InputDialog;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 450
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    iget-object v1, v1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4$1;

    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->updateSharedPhotoTitle(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
