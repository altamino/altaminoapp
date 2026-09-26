.class public final Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;,
        Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;,
        Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileCommentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileCommentFragment.kt\ncom/narvii/master/home/profile/GlobalProfileCommentFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,184:1\n1#2:185\n*E\n"
.end annotation


# instance fields
.field private commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isMe:Z

.field private onCommentToTop:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private user:Lcom/narvii/model/User;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userBlockService:Lcom/narvii/userblock/UserBlockService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getCommentAdapter$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUser$p(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$isBlocked(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->isBlocked()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final isBlocked()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "userBlockService"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v1, v0}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->isMe:Z

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentHeadAdapter;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;Z)V

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAddAdapter;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;-><init>(Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;Lcom/narvii/app/NVContext;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 44
    .line 45
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/master/home/profile/UserBlockHintAdapter;

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x4

    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v2, v0

    .line 54
    move-object v3, p0

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v2 .. v7}, Lcom/narvii/master/home/profile/UserBlockHintAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;ZILkotlin/jvm/internal/k;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    :cond_0
    return-object p1
.end method

.method public final getOnCommentToTop()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->onCommentToTop:Le8/a;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "comments_list"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "uid"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "user"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-class v0, Lcom/narvii/model/User;

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/User;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    .line 28
    .line 29
    const-string p1, "isMe"

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->isMe:Z

    .line 37
    const/4 p1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 41
    .line 42
    const-string p1, "block"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v0, "getService(...)"

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/userblock/UserBlockService;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->userBlockService:Lcom/narvii/userblock/UserBlockService;

    .line 56
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(Landroid/view/View;)V

    .line 17
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    .line 9
    :goto_0
    const-string v2, "update"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v1, p1, Lcom/narvii/model/User;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/model/User;

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object p1, v0

    .line 26
    .line 27
    :goto_1
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 30
    .line 31
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->uid:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget v0, p1, Lcom/narvii/model/User;->ndcId:I

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->updateUser(Lcom/narvii/model/User;)V

    .line 47
    :cond_3
    return-void
.end method

.method public final setOnCommentToTop(Le8/a;)V
    .locals 0
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->onCommentToTop:Le8/a;

    return-void
.end method

.method public final updateUser(Lcom/narvii/model/User;)V
    .locals 3
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "user"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->user:Lcom/narvii/model/User;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment;->commentAdapter:Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileCommentFragment$GlobalCommentAdapter;->resetList()V

    .line 31
    :cond_1
    return-void
.end method
