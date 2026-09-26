.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    new-instance v2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$4;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->updateSharedPhotoTitle(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 29
    return-void
.end method
