.class Lcom/narvii/detail/DetailAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/detail/DetailAdapter$3;->val$isAnnouncement:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/detail/DetailAdapter$3;->val$isAnnouncement:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    if-eq p2, v2, :cond_1

    .line 12
    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentRefresh()V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_3
    if-eqz p2, :cond_7

    .line 35
    .line 36
    if-eq p2, v2, :cond_6

    .line 37
    .line 38
    if-eq p2, v1, :cond_5

    .line 39
    const/4 p1, 0x3

    .line 40
    .line 41
    if-eq p2, p1, :cond_4

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_4
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->commentRefresh()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_5
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_6
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_7
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$3;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/narvii/detail/DetailAdapter;->setCommentSort(I)V

    .line 66
    :goto_0
    return-void
.end method
