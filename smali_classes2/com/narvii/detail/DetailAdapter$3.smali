.class Lcom/narvii/detail/DetailAdapter$3;
.super Ljava/lang/Object;
.source "DetailAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;

.field final synthetic val$isAnnouncement:Z


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Z)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    iput-boolean p2, p0, Lcom/narvii/detail/DetailAdapter$3;->val$isAnnouncement:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 841
    iget-boolean p1, p0, Lcom/narvii/detail/DetailAdapter$3;->val$isAnnouncement:Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentRefresh()V

    goto :goto_0

    .line 847
    :cond_1
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1, v2}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    goto :goto_0

    .line 844
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    goto :goto_0

    .line 865
    :cond_4
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentRefresh()V

    goto :goto_0

    .line 862
    :cond_5
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1, v2}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    goto :goto_0

    .line 859
    :cond_6
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    goto :goto_0

    .line 856
    :cond_7
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    :goto_0
    return-void
.end method
