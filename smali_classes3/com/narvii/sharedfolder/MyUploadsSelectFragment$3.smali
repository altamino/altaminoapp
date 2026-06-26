.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getSelectedIds()Ljava/util/List;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 135
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0084

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v0, 0x7f0f035f

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 138
    new-instance v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$3;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 174
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
