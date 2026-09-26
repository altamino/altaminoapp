.class Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/explorer/ExplorerCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitTopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->u(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->u(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0118

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->u(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->u(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iget p2, p2, Lcom/narvii/master/explorer/CommunityPageAdapter;->pageBackGround:I

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    return-object p1
.end method
