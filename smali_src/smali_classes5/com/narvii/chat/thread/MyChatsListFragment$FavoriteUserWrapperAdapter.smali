.class Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;
.super Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteUserWrapperAdapter"
.end annotation


# instance fields
.field private cellCountLimit:I

.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 17
    int-to-float p1, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const/high16 v1, 0x42820000    # 65.0f

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 27
    move-result v0

    .line 28
    div-float/2addr p1, v0

    .line 29
    float-to-int p1, p1

    .line 30
    .line 31
    iput p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->cellCountLimit:I

    .line 32
    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;Landroid/view/View;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->lambda$onItemClick$0(Landroid/view/View;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Landroid/view/View;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p4, :cond_2

    .line 3
    const/4 p3, 0x1

    .line 4
    .line 5
    if-eq p4, p3, :cond_0

    .line 6
    goto :goto_1

    .line 7
    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    const/16 p3, 0x8

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p3, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/chat/thread/MyChatsListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string p3, "hide_fav_user"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    const-string p1, "statistics"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 43
    .line 44
    const-string p2, "Hide Favorite Members"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string p2, "My Chats"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    const-class p1, Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 63
    .line 64
    const/16 p3, 0x64

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p1, p3}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0843

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    const p2, 0x7f0a0629

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 31
    .line 32
    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 44
    .line 45
    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemCount()I

    .line 49
    move-result p3

    .line 50
    .line 51
    iget v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->cellCountLimit:I

    .line 52
    .line 53
    if-le p3, v2, :cond_0

    .line 54
    .line 55
    if-lez v2, :cond_0

    .line 56
    move p3, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move p3, v0

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    const p2, 0x7f0a0bf9

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 71
    .line 72
    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 73
    .line 74
    const-string v2, "hide_fav_user"

    .line 75
    .line 76
    .line 77
    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    move-result p3

    .line 79
    .line 80
    if-eqz p3, :cond_2

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v0, v1

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0a0843

    .line 11
    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const v2, 0x7f120d18

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 29
    .line 30
    .line 31
    const v2, 0x7f0a0bf9

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 39
    move-result v4

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v0, v3

    .line 44
    .line 45
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    const v4, 0x7f12080d

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    const v4, 0x7f12120b

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 56
    .line 57
    new-instance v3, Lcom/narvii/chat/thread/d;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, p0, v2, v0}, Lcom/narvii/chat/thread/d;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;Landroid/view/View;Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_2
    if-eqz p5, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    const v2, 0x7f0a0629

    .line 77
    .line 78
    if-ne v1, v2, :cond_3

    .line 79
    .line 80
    const-class p1, Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 87
    .line 88
    const/16 p3, 0x64

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1, p3}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 92
    return v0

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 96
    move-result p1

    .line 97
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "addFavoriteUser"

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/model/User;

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->insertItem(ILcom/narvii/model/NVObject;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected recycleViewContainerLayoutId()I
    .locals 1

    const v0, 0x7f0d0237

    return v0
.end method
