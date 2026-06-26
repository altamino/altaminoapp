.class public final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ChatBatchDeletionFragment.kt"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;,
        Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$EmptyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatBatchDeletionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,432:1\n1596#2,3:433\n1313#2:436\n1382#2,3:437\n*E\n*S KotlinDebug\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment\n*L\n215#1,3:433\n225#1:436\n225#1,3:437\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public account:Lcom/narvii/account/AccountService;

.field public adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

.field public api:Lcom/narvii/util/http/ApiService;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;

.field public chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field public chatService:Lcom/narvii/chat/core/ChatService;

.field public config:Lcom/narvii/config/ConfigService;

.field public deleteButton:Landroid/widget/Button;

.field public myCommunityService:Lcom/narvii/community/MyCommunityListService;

.field private ndcId:I

.field private needRefreshWhenResume:Z

.field private final progress$delegate:Lkotlin/Lazy;

.field private final selectThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progress"

    const-string v4, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectThreads:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$progress$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$progress$2;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->progress$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApiRequest$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method public static final synthetic access$getNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->needRefreshWhenResume:Z

    return p0
.end method

.method public static final synthetic access$getProgress$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getProgress()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectThreads:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$removeThreadFromRTC(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->removeThreadFromRTC(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public static final synthetic access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setApiRequest$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public static final synthetic access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->needRefreshWhenResume:Z

    return-void
.end method

.method public static final synthetic access$threadIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->threadIds()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->progress$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method private final removeThreadFromRTC(Lcom/narvii/model/ChatThread;)V
    .locals 6

    .line 197
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/narvii/model/ChatThread;

    const-string v2, "rtc"

    .line 199
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/RtcService;

    const-string v3, "chat"

    .line 200
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/core/ChatService;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 201
    iget v5, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v5, p1}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    invoke-virtual {v2, p1, v0}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 206
    :cond_0
    invoke-virtual {v2, v0}, Lcom/narvii/chat/rtc/RtcService;->cleanMappedWindow(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2, v0}, Lcom/narvii/chat/rtc/RtcService;->cleanThreadWindow(Ljava/lang/String;)V

    :cond_1
    const-string p1, "globalChat"

    .line 209
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/util/GlobalChatService;

    if-eqz p1, :cond_2

    .line 210
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/GlobalChatService;->removeRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 201
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    .line 198
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final selectIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectThreads:Ljava/util/List;

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 438
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 225
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final threadIds()Ljava/lang/String;
    .locals 5

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectIds()Ljava/util/List;

    move-result-object v1

    .line 434
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_0

    const-string v2, ","

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    .line 434
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    .line 221
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final updateDeleteButton()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const-string v2, "deleteButton"

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    .line 235
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->selectIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 236
    iget-object v3, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    iget-object v3, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 238
    iget-object v3, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    const-wide v0, 0xffd0021bL

    long-to-int v1, v0

    .line 239
    invoke-static {v1}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v0, 0x66979797

    .line 241
    invoke-static {v0}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    return-void

    .line 234
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 87
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 89
    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    .line 90
    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$EmptyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$EmptyAdapter;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/app/NVContext;)V

    .line 91
    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-eqz v1, :cond_2

    iget v4, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;Ljava/lang/Boolean;)V

    .line 92
    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1

    .line 92
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getAccount()Lcom/narvii/account/AccountService;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "account"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAdapter()Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->api:Lcom/narvii/util/http/ApiService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "api"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->config:Lcom/narvii/config/ConfigService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "config"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getDeleteButton()Landroid/widget/Button;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deleteButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMyCommunityService()Lcom/narvii/community/MyCommunityListService;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "myCommunityService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNdcId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    return v0
.end method

.method protected getSelectorLightColor()I
    .locals 2

    const-wide v0, 0x88ffffffL

    long-to-int v1, v0

    return v1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 69
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string v0, "ndcId"

    .line 71
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    .line 72
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v3, "context!!"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    const-string v0, "myCommunityList"

    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"myCommunityList\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    const-string v0, "config"

    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"config\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->config:Lcom/narvii/config/ConfigService;

    const-string v0, "api"

    .line 75
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"api\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->api:Lcom/narvii/util/http/ApiService;

    const-string v0, "account"

    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->account:Lcom/narvii/account/AccountService;

    const-string v0, "chat"

    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService(\"chat\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    const v0, 0x7f0f0b20

    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 80
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    invoke-static {p0, p1, v1, v0, v2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    invoke-virtual {p1, v0, p0}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void

    :cond_1
    const-string p1, "chatService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    .line 127
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b002b

    .line 128
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090051

    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "v.findViewById<Button>(c\u2026.actionbar_right_btn_btn)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    .line 131
    iget-object v2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    const-string v3, "deleteButton"

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    const/high16 v6, 0x41200000    # 10.0f

    if-lt v4, v5, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 137
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v4, :cond_6

    const v5, 0x7f0f0348

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 138
    iget-object v4, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v4, :cond_5

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 139
    iget-object v4, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v4, :cond_4

    const-wide v6, 0xffd0021bL

    long-to-int v7, v6

    invoke-static {v7}, Lcom/narvii/app/NVActivity;->getRightButtonBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v4, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    new-instance v1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 190
    invoke-interface {p1, v1, v5, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 192
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 193
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    .line 141
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0121

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 2

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "chatMessageDto.chatMessage"

    .line 429
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->onNewMessage(Lcom/narvii/model/ChatMessage;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 229
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 230
    invoke-direct {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->updateDeleteButton()V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 120
    iget v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "chatService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const-string p2, "listView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public final setAccount(Lcom/narvii/account/AccountService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->account:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setAdapter(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->adapter:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    return-void
.end method

.method public final setApi(Lcom/narvii/util/http/ApiService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->api:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public final setChatHelper(Lcom/narvii/chat/util/ChatHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public final setChatService(Lcom/narvii/chat/core/ChatService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method public final setConfig(Lcom/narvii/config/ConfigService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->config:Lcom/narvii/config/ConfigService;

    return-void
.end method

.method public final setDeleteButton(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->deleteButton:Landroid/widget/Button;

    return-void
.end method

.method public final setMyCommunityService(Lcom/narvii/community/MyCommunityListService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->myCommunityService:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method

.method public final setNdcId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->ndcId:I

    return-void
.end method
