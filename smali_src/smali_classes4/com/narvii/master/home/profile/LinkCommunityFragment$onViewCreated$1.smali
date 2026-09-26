.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemMoveEnd()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$reorderCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    .line 6
    return-void
.end method

.method public onItemMoved(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lj8/m;->v(II)Lj8/i;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lj8/g;->e()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lj8/g;->f()I

    .line 23
    move-result v2

    .line 24
    .line 25
    if-gt p2, v2, :cond_2

    .line 26
    .line 27
    if-gt v1, p2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lj8/g;->e()I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lj8/g;->f()I

    .line 35
    move-result v0

    .line 36
    .line 37
    if-gt p1, v0, :cond_2

    .line 38
    .line 39
    if-gt v1, p1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v1, "linkedDataSource"

    .line 57
    const/4 v2, 0x0

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 63
    move-object v0, v2

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 78
    move-object v0, v2

    .line 79
    .line 80
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedAdapter$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 99
    :cond_2
    return-void
.end method
