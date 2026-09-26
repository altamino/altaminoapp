.class Lcom/narvii/user/title/EditUserTitleFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/user/title/AddUserTitleFlowLayout$onTagRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTagRemoved(Lcom/narvii/model/api/UserTitle;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/title/EditUserTitleFragment;->n(Lcom/narvii/user/title/EditUserTitleFragment;)Ljava/util/HashSet;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    neg-int v0, v0

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment;->allTitleList:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$8;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/user/title/EditUserTitleFragment;->u(Lcom/narvii/user/title/EditUserTitleFragment;)Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 42
    :cond_0
    return-void
.end method
