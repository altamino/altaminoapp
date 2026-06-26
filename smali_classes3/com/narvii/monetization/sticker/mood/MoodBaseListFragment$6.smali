.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;
.super Ljava/lang/Object;
.source "MoodBaseListFragment.java"

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

    .line 258
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    const/4 p4, 0x0

    .line 266
    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    .line 268
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 271
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 283
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result p3

    add-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 284
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getBottom()I

    move-result p1

    add-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    const p1, 0x7f0906a0

    .line 285
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-ge p2, p3, :cond_4

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$300(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 293
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$400(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    goto :goto_3

    .line 298
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p3, p2

    if-ge p3, p1, :cond_7

    .line 300
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$400(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    goto :goto_3

    :cond_7
    if-le p2, p1, :cond_9

    .line 303
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/onlinestatus/LockInfo;

    iget-boolean p1, p1, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    if-eqz p1, :cond_8

    .line 304
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$300(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    goto :goto_3

    .line 306
    :cond_8
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$6;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$400(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
