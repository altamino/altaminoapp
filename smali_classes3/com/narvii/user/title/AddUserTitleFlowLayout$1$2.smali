.class Lcom/narvii/user/title/AddUserTitleFlowLayout$1$2;
.super Ljava/lang/Object;
.source "AddUserTitleFlowLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/AddUserTitleFlowLayout$1;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$2;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$2;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method
