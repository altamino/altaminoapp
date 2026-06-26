.class Lcom/narvii/user/title/AddUserTitleFlowLayout$1;
.super Ljava/lang/Object;
.source "AddUserTitleFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/title/AddUserTitleFlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/AddUserTitleFlowLayout;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iput-object p1, v0, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 78
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03e3

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f0eb6

    .line 81
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 82
    new-instance v0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout$1;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    new-instance v0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$2;

    invoke-direct {v0, p0}, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$2;-><init>(Lcom/narvii/user/title/AddUserTitleFlowLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 110
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method
