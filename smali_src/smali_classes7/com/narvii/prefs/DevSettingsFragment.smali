.class public final Lcom/narvii/prefs/DevSettingsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/DevSettingsFragment$Adapter;,
        Lcom/narvii/prefs/DevSettingsFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/prefs/DevSettingsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REQ_DEV_SELECTION:I = 0xfd31

.field private static final TYPE_MULTIPLE_SELECTION:Ljava/lang/String; = "multiple-selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TYPE_SINGLE_SELECTION:Ljava/lang/String; = "single-selection"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TYPE_TOGGLE:Ljava/lang/String; = "toggle"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private api:Lcom/narvii/util/http/ApiService;

.field private optionAdapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/prefs/DevSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/prefs/DevSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/prefs/DevSettingsFragment;->Companion:Lcom/narvii/prefs/DevSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getAccount$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getApi$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/prefs/DevSettingsFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSharedPreferences$p(Lcom/narvii/prefs/DevSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/DevSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    return-object p0
.end method

.method private static final createAdapter$lambda$0(Lcom/narvii/prefs/DevSettingsFragment$Adapter;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$adapter"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method

.method public static synthetic t(Lcom/narvii/prefs/DevSettingsFragment$Adapter;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/prefs/DevSettingsFragment;->createAdapter$lambda$0(Lcom/narvii/prefs/DevSettingsFragment$Adapter;Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;-><init>(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->optionAdapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/prefs/DevSettingsFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "progressDialog"

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    :cond_0
    new-instance v1, Lcom/narvii/prefs/f;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/narvii/prefs/f;-><init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    const p2, 0xfd31

    .line 7
    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->optionAdapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 16
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    .line 6
    const p1, 0x7f1203ee

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "api"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "getService(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    const-string p1, "account"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->account:Lcom/narvii/account/AccountService;

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 49
    .line 50
    const-string p1, "prefs"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    check-cast p1, Landroid/content/SharedPreferences;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0603eb

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    move-result p2

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 36
    return-void
.end method
