.class Lcom/narvii/chat/detail/ThreadDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$4;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$4;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f12078a

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f120776

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 30
    const/4 v0, 0x4

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    const v2, 0x104000a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$4;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/narvii/chat/detail/ThreadDetailFragment;->K(Lcom/narvii/chat/detail/ThreadDetailFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    :goto_0
    return-void
.end method
