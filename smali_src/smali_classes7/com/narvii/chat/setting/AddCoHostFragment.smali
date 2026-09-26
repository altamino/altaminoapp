.class public final Lcom/narvii/chat/setting/AddCoHostFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;,
        Lcom/narvii/chat/setting/AddCoHostFragment$Companion;,
        Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddCoHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddCoHostFragment.kt\ncom/narvii/chat/setting/AddCoHostFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,373:1\n1855#2,2:374\n*S KotlinDebug\n*F\n+ 1 AddCoHostFragment.kt\ncom/narvii/chat/setting/AddCoHostFragment\n*L\n352#1:374,2\n*E\n"
.end annotation


# static fields
.field private static final ADD_CO_HOST_TYPE:I = 0x1

.field private static final CHAT_MEMBER_LIST_REQUEST_CODE:I = 0x2711

.field private static final CO_HOST_TYPE:I

.field public static final Companion:Lcom/narvii/chat/setting/AddCoHostFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private apiService:Lcom/narvii/util/http/ApiService;

.field private coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

.field private coHostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

.field private newCoHostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thread:Lcom/narvii/model/ChatThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/setting/AddCoHostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/setting/AddCoHostFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/setting/AddCoHostFragment;->Companion:Lcom/narvii/chat/setting/AddCoHostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->newCoHostList:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static final synthetic access$getCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMergeAdapter$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThread$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$openSelectPage(Lcom/narvii/chat/setting/AddCoHostFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/setting/AddCoHostFragment;->openSelectPage()V

    .line 4
    return-void
.end method

.method public static final synthetic access$sendCoHostNotification(Lcom/narvii/chat/setting/AddCoHostFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/setting/AddCoHostFragment;->sendCoHostNotification()V

    .line 4
    return-void
.end method

.method public static final synthetic access$setCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 3
    return-void
.end method

.method public static final synthetic access$setCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public static final synthetic access$showActionSheet(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->showActionSheet(Lcom/narvii/model/User;)V

    .line 4
    return-void
.end method

.method private final deleteCoHost(Lcom/narvii/model/User;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "loadingDialog"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v2, v1

    .line 32
    .line 33
    :goto_0
    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v5, "/chat/thread/"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "/co-host/"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    const-string v2, "apiService"

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v1, v2

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    new-instance v2, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;

    .line 80
    .line 81
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 88
    return-void
.end method

.method private final openSelectPage()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-class v0, Lcom/narvii/chat/setting/SelectCoHostFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "thread"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string v1, "coHostDataSource"

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    move-object v1, v2

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    const-string v2, "users"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    const/16 v1, 0x2711

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0, v1}, Lcom/narvii/chat/setting/AddCoHostFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 57
    :cond_2
    return-void
.end method

.method public static synthetic s(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/chat/setting/AddCoHostFragment;->showActionSheet$lambda$2$lambda$1(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Landroid/content/DialogInterface;I)V

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

.method private final sendCoHostNotification()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "coHostDataSource"

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Iterable;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Lcom/narvii/model/User;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    const-string v2, "notification"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Lcom/narvii/notification/NotificationCenter;

    .line 67
    .line 68
    new-instance v3, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3}, Lcom/narvii/model/ChatCoHostNotificationWrapper;-><init>()V

    .line 72
    const/4 v4, 0x0

    .line 73
    .line 74
    iput v4, v3, Lcom/narvii/model/ChatCoHostNotificationWrapper;->action:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/narvii/model/ChatThread;->setCoHostUidList(Ljava/util/List;)V

    .line 78
    .line 79
    iput-object v0, v3, Lcom/narvii/model/ChatCoHostNotificationWrapper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 80
    .line 81
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 82
    .line 83
    const-string v1, "update"

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1, v3}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 90
    :cond_2
    return-void
.end method

.method private final showActionSheet(Lcom/narvii/model/User;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f120fe8

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f1203a0

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/chat/setting/a;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/setting/a;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 36
    :cond_0
    return-void
.end method

.method private static final showActionSheet$lambda$2$lambda$1(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->deleteCoHost(Lcom/narvii/model/User;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p0}, Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const/high16 v2, 0x41200000    # 10.0f

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 30
    move-result v1

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, v1, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 36
    const/4 v1, 0x5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    const-string v3, "mergeAdapter"

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 50
    move-object v0, v1

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {v0, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v1, v0

    .line 63
    :goto_0
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_6

    .line 4
    .line 5
    if-eqz p3, :cond_6

    .line 6
    .line 7
    const-string v0, "users"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    const-class v1, Lcom/narvii/model/User;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 29
    .line 30
    const-string v2, "coHostDataSource"

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    move-object v1, v3

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 54
    move-object v1, v3

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v3}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    const-string v1, "mergeAdapter"

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move-object v3, v1

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 75
    .line 76
    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->newCoHostList:Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/narvii/chat/setting/AddCoHostFragment;->sendCoHostNotification()V

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    :goto_1
    return-void

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 9
    .line 10
    const-string v0, "thread"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 32
    .line 33
    const-string p1, "api"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "getService(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 47
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f1202c2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 14
    return-void
.end method
