.class public final Lcom/narvii/master/home/profile/CommunityProfileListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "CommunityProfileListFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;,
        Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;,
        Lcom/narvii/master/home/profile/CommunityProfileListFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/CommunityProfileListFragment$Companion;

.field private static final REQ_CODE_USER_PROFILE:I = 0x65


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final userProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->Companion:Lcom/narvii/master/home/profile/CommunityProfileListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->userProfiles:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 63
    new-instance v0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;-><init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public final getUserProfiles()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->userProfiles:Ljava/util/HashMap;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f02d1

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 71
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v1, v1, Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    .line 72
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "edit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0f0c59

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setEmptyMessage(I)V

    return-void
.end method
