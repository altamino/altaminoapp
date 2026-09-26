.class Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout;->a(Lcom/narvii/user/title/AddUserTitleFlowLayout;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 19
    .line 20
    iget-object p2, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleColorEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    iget-object p2, p1, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedView:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 28
    move-result p1

    .line 29
    .line 30
    if-ltz p1, :cond_3

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    move-result p2

    .line 41
    .line 42
    if-lt p1, p2, :cond_2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->selectedTagList:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/model/api/UserTitle;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/user/title/AddUserTitleFlowLayout$1$1;->this$1:Lcom/narvii/user/title/AddUserTitleFlowLayout$1;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout$1;->this$0:Lcom/narvii/user/title/AddUserTitleFlowLayout;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/narvii/user/title/AddUserTitleFlowLayout;->userTitleColorEditListener:Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, p1}, Lcom/narvii/user/title/AddUserTitleFlowLayout$UserTitleColorEditListener;->startEditColor(Lcom/narvii/model/api/UserTitle;)V

    .line 65
    nop

    .line 66
    :cond_3
    :goto_0
    return-void
.end method
