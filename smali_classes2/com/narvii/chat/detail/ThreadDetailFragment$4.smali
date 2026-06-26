.class Lcom/narvii/chat/detail/ThreadDetailFragment$4;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->showThreadFlagDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;)V
    .locals 0

    .line 1429
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$4;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1438
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$4;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f06e1

    .line 1439
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0f06ca

    .line 1440
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1441
    invoke-virtual {p2, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1442
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 1443
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1434
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$4;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->access$1400(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 1435
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
