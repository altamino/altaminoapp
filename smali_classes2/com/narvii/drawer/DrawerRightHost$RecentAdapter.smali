.class Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "DrawerRightHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAdapter"
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 631
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 678
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 693
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->cell:Landroid/view/View;

    if-nez p1, :cond_0

    const p1, 0x7f0b01e3

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 694
    :cond_0
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->updateCell(Landroid/view/View;Ljava/util/List;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public refreshReminders(Z)V
    .locals 8

    .line 656
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    if-nez p1, :cond_0

    .line 658
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v3, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v3, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    sub-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v3, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    .line 661
    :cond_1
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v1}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 635
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->cell:Landroid/view/View;

    return-void
.end method

.method update()V
    .locals 4

    .line 639
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->getCount()I

    move-result v0

    .line 641
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 642
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "config"

    .line 643
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 644
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 646
    :goto_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Lcom/narvii/community/RecentCommunityHelper;->getRecentList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    .line 647
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->getCount()I

    move-result v1

    .line 648
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->cell:Landroid/view/View;

    if-eqz v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    invoke-virtual {p0, v2, v0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->updateCell(Landroid/view/View;Ljava/util/List;)V

    goto :goto_2

    .line 649
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method updateCell(Landroid/view/View;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0904e3

    .line 699
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 701
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v0

    div-int/2addr v1, v0

    const v0, 0x7f0903a0

    .line 702
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 703
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_9

    .line 704
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 705
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 706
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v3, v5, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Community;

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_1

    move-object v7, v6

    goto :goto_2

    .line 707
    :cond_1
    iget-object v7, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v7, v7, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v8, v5, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v7, v8}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v7

    :goto_2
    if-nez v5, :cond_2

    const/4 v8, 0x0

    goto :goto_3

    .line 708
    :cond_2
    iget-object v8, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v8, v8, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v9, v5, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v8, v9}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v8

    :goto_3
    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_4

    .line 709
    :cond_3
    iget v9, v7, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    add-int/2addr v9, v8

    iget v7, v7, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr v7, v9

    :goto_4
    const v8, 0x7f090562

    .line 710
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/NVImageView;

    if-nez v5, :cond_4

    move-object v9, v6

    goto :goto_5

    :cond_4
    iget-object v9, v5, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    :goto_5
    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v8, 0x7f090115

    .line 711
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-lez v7, :cond_5

    const/4 v10, 0x0

    goto :goto_6

    :cond_5
    const/4 v10, 0x4

    :goto_6
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 712
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x9

    if-le v7, v9, :cond_6

    const-string v7, "9+"

    goto :goto_7

    :cond_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f090b9a

    .line 713
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v5, :cond_7

    goto :goto_8

    :cond_7
    iget-object v6, v5, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_8
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_8

    const/16 v6, 0x8

    goto :goto_9

    :cond_8
    const/4 v6, 0x0

    .line 714
    :goto_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 715
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 716
    iget-object v5, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v5, v5, Lcom/narvii/drawer/DrawerRightHost;->launchRecentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
