.class Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;
.super Ljava/lang/Object;
.source "AddUserTitleFlowLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 82
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    invoke-static {p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->access$000(Lcom/narvii/user/title/AddUserTitleFlowLayout;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p2, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleColorEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;

    if-eqz p2, :cond_3

    .line 88
    iget-object p2, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 89
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 93
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleColorEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;

    invoke-interface {p2, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;->startEditColor(Lcom/narvii/model/api/UserTitle;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
