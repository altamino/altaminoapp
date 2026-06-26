.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    iget-object p2, p2, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0357

    .line 153
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f119f

    .line 155
    new-instance v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;)V

    const/high16 v1, -0x10000

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 169
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 143
    :cond_1
    const-class p2, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "selectMode"

    const-string v1, "singlePickUploadPhoto"

    .line 144
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileIdList"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;

    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
