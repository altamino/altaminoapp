.class Lcom/narvii/invite/InviteContactFragment$1;
.super Ljava/lang/Object;
.source "InviteContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iput-object p1, v0, Lcom/narvii/invite/InviteContactFragment;->selectedView:Landroid/view/View;

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 97
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 98
    sget v2, Lcom/narvii/lib/R$string;->remove:I

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/narvii/invite/InviteContactFragment$Contact;->getContactText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/invite/InviteContactFragment$1$1;-><init>(Lcom/narvii/invite/InviteContactFragment$1;)V

    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$1$2;

    invoke-direct {p1, p0}, Lcom/narvii/invite/InviteContactFragment$1$2;-><init>(Lcom/narvii/invite/InviteContactFragment$1;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 121
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
