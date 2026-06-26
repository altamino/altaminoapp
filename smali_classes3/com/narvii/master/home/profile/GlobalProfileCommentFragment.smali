.class public final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalProfileCommentFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;,
        Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;,
        Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileCommentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileCommentFragment.kt\ncom/narvii/master/home/profile/GlobalProfileCommentFragment\n*L\n1#1,183:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

.field private isMe:Z

.field private onCommentToTop:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private uid:Ljava/lang/String;

.field private user:Lcom/narvii/model/User;

.field private userBlockService:Lcom/narvii/userblock/UserBlockService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    return-object p0
.end method

.method public static final synthetic access$getUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method public static final synthetic access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->isBlocked()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    return-void
.end method

.method public static final synthetic access$setUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    return-void
.end method

.method private final isBlocked()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 97
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "userBlockService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 59
    new-instance p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V

    .line 64
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;

    iget-boolean v1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->isMe:Z

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    .line 67
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 68
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 69
    new-instance v0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/master/home/profile/UserBlockHintAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-object p1
.end method

.method public final getOnCommentToTop()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->onCommentToTop:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommentList"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "uid"

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    const-string p1, "user"

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    const-string p1, "isMe"

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->isMe:Z

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    const-string p1, "block"

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"block\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/userblock/UserBlockService;

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 55
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "update"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lcom/narvii/model/User;

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    .line 77
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/narvii/model/User;->ndcId:I

    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->updateUser(Lcom/narvii/model/User;)V

    :cond_3
    return-void
.end method

.method public final setOnCommentToTop(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->onCommentToTop:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final updateUser(Lcom/narvii/model/User;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    .line 91
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->resetList()V

    :cond_1
    return-void
.end method
