.class Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;
.super Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.source "MyChatsListFragment.java"

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

    .line 370
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 372
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    .line 373
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->cellCountLimit:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 383
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0906b5

    .line 384
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 385
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0904dc

    .line 386
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 387
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 389
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    invoke-virtual {p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemCount()I

    move-result p3

    iget v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->cellCountLimit:I

    if-le p3, v2, :cond_0

    if-lez v2, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p2, 0x7f09093b

    .line 392
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "hide_fav_user"

    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p5, :cond_2

    .line 398
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0906b5

    if-ne v1, v2, :cond_2

    .line 399
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0bed

    const/4 v3, 0x0

    .line 400
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f09093b

    .line 401
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v4, 0x7f0f0760

    goto :goto_1

    :cond_1
    const v4, 0x7f0f1102

    .line 403
    :goto_1
    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 404
    new-instance v3, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;Landroid/view/View;Z)V

    invoke-virtual {v1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 423
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    .line 424
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904dc

    if-ne v1, v2, :cond_3

    .line 425
    const-class p1, Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 426
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    .line 429
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 434
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "addFavoriteUser"

    if-ne v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->list()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->insertItem(ILcom/narvii/model/NVObject;)V

    goto :goto_0

    :cond_0
    const-string p1, "favoriteUserChanged"

    :cond_1
    :goto_0
    return-void
.end method

.method protected recycleViewContainerLayoutId()I
    .locals 1

    const v0, 0x7f0b0209

    return v0
.end method
