.class public final Lcom/narvii/chat/setting/AddCoHostFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "AddCoHostFragment.kt"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;,
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;,
        Lcom/narvii/chat/setting/AddCoHostFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddCoHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddCoHostFragment.kt\ncom/narvii/chat/setting/AddCoHostFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n1587#2,2:303\n*E\n*S KotlinDebug\n*F\n+ 1 AddCoHostFragment.kt\ncom/narvii/chat/setting/AddCoHostFragment\n*L\n281#1,2:303\n*E\n"
.end annotation


# static fields
.field private static final ADD_CO_HOST_TYPE:I = 0x1

.field private static final CHAT_MEMBER_LIST_REQUEST_CODE:I = 0x2711

.field private static final CO_HOST_TYPE:I

.field public static final Companion:Lcom/narvii/chat/setting/AddCoHostFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

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
.end field

.field private thread:Lcom/narvii/model/ChatThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/setting/AddCoHostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/setting/AddCoHostFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/setting/AddCoHostFragment;->Companion:Lcom/narvii/chat/setting/AddCoHostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->newCoHostList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$deleteCoHost(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->deleteCoHost(Lcom/narvii/model/User;)V

    return-void
.end method

.method public static final synthetic access$getCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "coHostDataSource"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "loadingDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMergeAdapter$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mergeAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getThread$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method public static final synthetic access$openSelectPage(Lcom/narvii/chat/setting/AddCoHostFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/chat/setting/AddCoHostFragment;->openSelectPage()V

    return-void
.end method

.method public static final synthetic access$sendCoHostNotification(Lcom/narvii/chat/setting/AddCoHostFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/chat/setting/AddCoHostFragment;->sendCoHostNotification()V

    return-void
.end method

.method public static final synthetic access$setCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    return-void
.end method

.method public static final synthetic access$setCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;Ljava/util/List;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setMergeAdapter$p(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    return-void
.end method

.method public static final synthetic access$setThread$p(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public static final synthetic access$showActionSheet(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->showActionSheet(Lcom/narvii/model/User;)V

    return-void
.end method

.method private final deleteCoHost(Lcom/narvii/model/User;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 261
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/co-host/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, p1, v3}, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_1
    const-string p1, "apiService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "loadingDialog"

    .line 260
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final openSelectPage()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 252
    const-class v0, Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "users"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2711

    .line 255
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "coHostDataSource"

    .line 254
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method

.method private final sendCoHostNotification()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_2

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 284
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "notification"

    .line 286
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/notification/NotificationCenter;

    .line 287
    new-instance v3, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    invoke-direct {v3}, Lcom/narvii/model/ChatCoHostNotificationWrapper;-><init>()V

    const/4 v4, 0x0

    .line 288
    iput v4, v3, Lcom/narvii/model/ChatCoHostNotificationWrapper;->action:I

    .line 289
    invoke-virtual {v0, v1}, Lcom/narvii/model/ChatThread;->setCoHostUidList(Ljava/util/List;)V

    .line 290
    iput-object v0, v3, Lcom/narvii/model/ChatCoHostNotificationWrapper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 291
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, v3}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 292
    invoke-virtual {v2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_1

    :cond_1
    const-string v0, "coHostDataSource"

    .line 283
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private final showActionSheet(Lcom/narvii/model/User;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 240
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0ecf

    .line 241
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const v1, 0x7f0f0348

    const/4 v2, 0x1

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 243
    new-instance v1, Lcom/narvii/chat/setting/AddCoHostFragment$showActionSheet$$inlined$let$lambda$1;

    invoke-direct {v1, p1, p0}, Lcom/narvii/chat/setting/AddCoHostFragment$showActionSheet$$inlined$let$lambda$1;-><init>(Lcom/narvii/model/User;Lcom/narvii/chat/setting/AddCoHostFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 246
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 5

    .line 68
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 69
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    const/4 v1, 0x0

    const-string v2, "mergeAdapter"

    if-eqz v0, :cond_2

    new-instance v3, Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;

    invoke-direct {v3, p0, p0}, Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v3}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 70
    new-instance v0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/app/NVContext;)V

    .line 71
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    .line 72
    new-instance v4, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    invoke-direct {v4, p0, v3, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    const/4 v3, 0x5

    .line 73
    invoke-virtual {v4, v0, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    if-ne p1, p1, :cond_7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    if-eqz p3, :cond_7

    const-string/jumbo v0, "users"

    .line 223
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 227
    :cond_2
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    const-string v2, "coHostDataSource"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/AbstractList;->clear()V

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->coHostDataSource:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    if-eqz v1, :cond_5

    const-string v2, "list"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 230
    iget-object v1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 231
    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->newCoHostList:Ljava/util/List;

    .line 232
    invoke-direct {p0}, Lcom/narvii/chat/setting/AddCoHostFragment;->sendCoHostNotification()V

    goto :goto_2

    :cond_4
    const-string p1, "mergeAdapter"

    .line 230
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "thread"

    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 63
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const-string p1, "api"

    .line 64
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f0f027a

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/setting/AddCoHostFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
