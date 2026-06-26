.class public final Lcom/narvii/chat/setting/SelectCoHostFragment;
.super Lcom/narvii/chat/ChatMemberPickerFragment;
.source "SelectCoHostFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;,
        Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectCoHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectCoHostFragment.kt\ncom/narvii/chat/setting/SelectCoHostFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1587#2,2:132\n*E\n*S KotlinDebug\n*F\n+ 1 SelectCoHostFragment.kt\ncom/narvii/chat/setting/SelectCoHostFragment\n*L\n59#1,2:132\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;

.field private static final MAX_CO_HOST_SIZE:I = 0xa


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private apiService:Lcom/narvii/util/http/ApiService;

.field private initialUsers:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/setting/SelectCoHostFragment;->Companion:Lcom/narvii/chat/setting/SelectCoHostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/ChatMemberPickerFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "loadingDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$onConfirmPick$s-1081147680(Lcom/narvii/chat/setting/SelectCoHostFragment;Ljava/util/List;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->onConfirmPick(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setInitialUsers$p(Lcom/narvii/chat/setting/SelectCoHostFragment;Ljava/util/List;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setLoadingDialog$p(Lcom/narvii/chat/setting/SelectCoHostFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createMainAdapter()Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;
    .locals 1

    .line 50
    new-instance v0, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/setting/SelectCoHostFragment$Adapter;-><init>(Lcom/narvii/chat/setting/SelectCoHostFragment;)V

    return-object v0
.end method

.method protected getMemberType()Ljava/lang/String;
    .locals 1

    const-string v0, "co-host"

    return-object v0
.end method

.method protected isUserEnableInSearchBar(Lcom/narvii/model/User;)Z
    .locals 2

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo v0, "users"

    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const-string p1, "api"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method protected onConfirmPick(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->initialUsers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_2

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 58
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 60
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/ChatMemberPickerFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/co-host"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "uidList"

    .line 63
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/narvii/chat/setting/SelectCoHostFragment;->apiService:Lcom/narvii/util/http/ApiService;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, p1, v3}, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;-><init>(Lcom/narvii/chat/setting/SelectCoHostFragment;Ljava/util/List;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_2
    return-void

    :cond_3
    const-string p1, "apiService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "loadingDialog"

    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/narvii/chat/ChatMemberPickerFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0072

    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/setting/SelectCoHostFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected showSearchBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
