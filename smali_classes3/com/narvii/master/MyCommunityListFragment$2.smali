.class Lcom/narvii/master/MyCommunityListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.THEME_PACK_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-boolean v0, p1, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 377
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.THEME_PACK_PROGRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 378
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-boolean v0, p1, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    if-eqz v0, :cond_3

    .line 379
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 381
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/list/DivideColumnAdapter;->getDividedCells(Landroid/view/View;)[Landroid/view/View;

    move-result-object v3

    .line 382
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 383
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/narvii/model/Community;

    if-eqz v7, :cond_1

    .line 384
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/Community;

    .line 385
    iget-object v8, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {v8, v6, v7}, Lcom/narvii/master/MyCommunityListFragment;->updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 392
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MyCommunityListFragment;->updateEmptyViewForList()V

    :cond_4
    return-void
.end method
