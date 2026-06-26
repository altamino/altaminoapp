.class public final Lcom/narvii/prefs/DevSettingsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "DevSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/DevSettingsFragment$Adapter;,
        Lcom/narvii/prefs/DevSettingsFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/prefs/DevSettingsFragment$Companion;

.field private static final REQ_DEV_SELECTION:I = 0xfd31

.field private static final TYPE_MULTIPLE_SELECTION:Ljava/lang/String; = "multiple-selection"

.field private static final TYPE_SINGLE_SELECTION:Ljava/lang/String; = "single-selection"

.field private static final TYPE_TOGGLE:Ljava/lang/String; = "toggle"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private account:Lcom/narvii/account/AccountService;

.field private api:Lcom/narvii/util/http/ApiService;

.field private optionAdapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/prefs/DevSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/prefs/DevSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/prefs/DevSettingsFragment;->Companion:Lcom/narvii/prefs/DevSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->account:Lcom/narvii/account/AccountService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "account"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getApi$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->api:Lcom/narvii/util/http/ApiService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "api"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "progressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sharedPreferences"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setAccount$p(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->account:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static final synthetic access$setApi$p(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->api:Lcom/narvii/util/http/ApiService;

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/prefs/DevSettingsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 72
    new-instance p1, Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;-><init>(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/app/NVContext;)V

    .line 73
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->optionAdapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    .line 74
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/prefs/DevSettingsFragment$createAdapter$1;

    invoke-direct {v1, p1}, Lcom/narvii/prefs/DevSettingsFragment$createAdapter$1;-><init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p1

    :cond_0
    const-string p1, "progressDialog"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const p2, 0xfd31

    if-ne p1, p2, :cond_0

    .line 83
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->optionAdapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0396

    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "api"

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->api:Lcom/narvii/util/http/ApiService;

    const-string p1, "account"

    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 58
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const-string p1, "prefs"

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService<SharedPreferences>(\"prefs\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/prefs/DevSettingsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060181

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 67
    check-cast p1, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 68
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    return-void
.end method
