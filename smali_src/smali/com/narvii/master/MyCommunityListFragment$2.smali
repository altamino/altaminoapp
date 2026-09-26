.class Lcom/narvii/master/MyCommunityListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.THEME_PACK_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    :cond_0
    const-string p1, "com.narvii.action.THEME_PACK_PROGRESS"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 40
    .line 41
    iget-boolean v0, p1, Lcom/narvii/master/MyCommunityListFragment;->DEBUG:Z

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p1, Lcom/narvii/master/MyCommunityListFragment;->adapter:Lcom/narvii/master/MyCommunityListFragment$Adapter;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    move v2, v1

    .line 58
    .line 59
    :goto_0
    if-ge v2, v0, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Lcom/narvii/list/DivideColumnAdapter;->getDividedCells(Landroid/view/View;)[Landroid/view/View;

    .line 67
    move-result-object v3

    .line 68
    array-length v4, v3

    .line 69
    move v5, v1

    .line 70
    .line 71
    :goto_1
    if-ge v5, v4, :cond_2

    .line 72
    .line 73
    aget-object v6, v3, v5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    instance-of v7, v7, Lcom/narvii/model/Community;

    .line 80
    .line 81
    if-eqz v7, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    check-cast v7, Lcom/narvii/model/Community;

    .line 88
    .line 89
    iget-object v8, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v6, v7}, Lcom/narvii/master/MyCommunityListFragment;->updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 93
    .line 94
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_3
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$2;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/master/MyCommunityListFragment;->updateEmptyViewForList()V

    .line 116
    :cond_4
    return-void
.end method
