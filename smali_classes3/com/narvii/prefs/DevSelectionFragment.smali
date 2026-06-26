.class public final Lcom/narvii/prefs/DevSelectionFragment;
.super Lcom/narvii/list/NVListFragment;
.source "DevSelectionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/DevSelectionFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevSelectionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevSelectionFragment.kt\ncom/narvii/prefs/DevSelectionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1587#2,2:143\n*E\n*S KotlinDebug\n*F\n+ 1 DevSelectionFragment.kt\ncom/narvii/prefs/DevSelectionFragment\n*L\n81#1,2:143\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private account:Lcom/narvii/account/AccountService;

.field private api:Lcom/narvii/util/http/ApiService;

.field private group:Ljava/lang/String;

.field private isSingleSelection:Z

.field private option:Lcom/narvii/prefs/model/DevOption;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->group:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "account"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getOption$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/prefs/model/DevOption;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "option"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "progressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$isSingleSelection$p(Lcom/narvii/prefs/DevSelectionFragment;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/narvii/prefs/DevSelectionFragment;->isSingleSelection:Z

    return p0
.end method

.method public static final synthetic access$requestDevOptionUpdate(Lcom/narvii/prefs/DevSelectionFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/prefs/DevSelectionFragment;->requestDevOptionUpdate()V

    return-void
.end method

.method public static final synthetic access$setAccount$p(Lcom/narvii/prefs/DevSelectionFragment;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->account:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static final synthetic access$setOption$p(Lcom/narvii/prefs/DevSelectionFragment;Lcom/narvii/prefs/model/DevOption;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lcom/narvii/prefs/DevSelectionFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;Ljava/util/List;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setSingleSelection$p(Lcom/narvii/prefs/DevSelectionFragment;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->isSingleSelection:Z

    return-void
.end method

.method private final requestDevOptionUpdate()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const-string v1, "progressDialog"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 79
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    .line 143
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 86
    :goto_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "/device/dev-options"

    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 87
    iget-object v3, p0, Lcom/narvii/prefs/DevSelectionFragment;->group:Ljava/lang/String;

    const-string v4, "group"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 88
    iget-object v3, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/narvii/prefs/model/DevOption;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "value"

    .line 89
    invoke-virtual {v1, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/narvii/prefs/DevSelectionFragment;->api:Lcom/narvii/util/http/ApiService;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;

    const-class v3, Lcom/narvii/pushservice/DeviceResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/prefs/DevSelectionFragment$requestDevOptionUpdate$1;-><init>(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_3
    const-string v0, "api"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string v0, "option"

    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v0, "account"

    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/prefs/DevSelectionFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 73
    new-instance p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;-><init>(Lcom/narvii/prefs/DevSelectionFragment;Lcom/narvii/app/NVContext;)V

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/FragmentWrapperActivity;

    if-eqz p1, :cond_0

    const v0, 0x7f0f03aa

    .line 58
    new-instance v1, Lcom/narvii/prefs/DevSelectionFragment$onActivityCreated$1;

    invoke-direct {v1, p0}, Lcom/narvii/prefs/DevSelectionFragment$onActivityCreated$1;-><init>(Lcom/narvii/prefs/DevSelectionFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->setRightViewVisible(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "group"

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringParam(\"group\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->group:Ljava/lang/String;

    const-string p1, "singleSelection"

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->isSingleSelection:Z

    const-string p1, "option"

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/prefs/model/DevOption;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "JacksonUtils.readAs(getS\u2026), DevOption::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/prefs/model/DevOption;

    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    .line 46
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/narvii/prefs/model/DevOption;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, ","

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 47
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->selectedItems:Ljava/util/List;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment;->option:Lcom/narvii/prefs/model/DevOption;

    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/narvii/prefs/model/DevOption;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "api"

    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->api:Lcom/narvii/util/http/ApiService;

    const-string p1, "account"

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->account:Lcom/narvii/account/AccountService;

    .line 52
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void

    .line 49
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/prefs/DevSelectionFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060181

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 69
    check-cast p1, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    return-void
.end method
