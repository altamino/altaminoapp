.class Lcom/narvii/invite/InviteContactFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/invite/InviteContactFragment;->selectedView:Landroid/view/View;

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    sget v2, Lcom/narvii/lib/R$string;->remove:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/invite/InviteContactFragment$Contact;->getContactText()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    :cond_0
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$1$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/narvii/invite/InviteContactFragment$1$1;-><init>(Lcom/narvii/invite/InviteContactFragment$1;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    .line 49
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$1$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/narvii/invite/InviteContactFragment$1$2;-><init>(Lcom/narvii/invite/InviteContactFragment$1;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 59
    return-void
.end method
