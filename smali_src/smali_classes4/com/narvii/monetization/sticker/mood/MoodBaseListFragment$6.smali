.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 1
    const/4 p4, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    move v1, p4

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    goto :goto_2

    .line 26
    .line 27
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v2, 0x0

    .line 30
    .line 31
    :goto_2
    if-eqz v2, :cond_6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 39
    move-result p3

    .line 40
    add-int/2addr p2, p3

    .line 41
    .line 42
    div-int/lit8 p2, p2, 0x2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 46
    move-result p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 50
    move-result p1

    .line 51
    add-int/2addr p3, p1

    .line 52
    .line 53
    div-int/lit8 p3, p3, 0x2

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0a082b

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-ge p2, p3, :cond_4

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const/16 p2, 0x8

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->z(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_4
    if-eqz p1, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    :cond_5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->x(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result p1

    .line 95
    .line 96
    add-int/lit8 p1, p1, 0x2

    .line 97
    add-int/2addr p3, p2

    .line 98
    .line 99
    if-ge p3, p1, :cond_7

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->x(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    .line 105
    goto :goto_3

    .line 106
    .line 107
    :cond_7
    if-le p2, p1, :cond_9

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 115
    move-result p2

    .line 116
    .line 117
    add-int/lit8 p2, p2, -0x1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/onlinestatus/LockInfo;

    .line 124
    .line 125
    iget-boolean p1, p1, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->z(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    .line 133
    goto :goto_3

    .line 134
    .line 135
    :cond_8
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->x(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    .line 139
    :cond_9
    :goto_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
