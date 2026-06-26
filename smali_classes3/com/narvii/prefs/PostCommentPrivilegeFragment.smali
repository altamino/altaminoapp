.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PostCommentPrivilegeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPostCommentPrivilegeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostCommentPrivilegeFragment.kt\ncom/narvii/prefs/PostCommentPrivilegeFragment\n*L\n1#1,212:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final PRIVILEGE_EVERYONE:I

.field private final PRIVILEGE_MY_FOLLOWING:I

.field private final PRIVILEGE_NONE:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private final api$delegate:Lkotlin/Lazy;

.field private blogId:Ljava/lang/String;

.field private final config$delegate:Lkotlin/Lazy;

.field private error:Ljava/lang/String;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private privilege:I

.field private radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

.field private requestFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "api"

    const-string v4, "getApi()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/prefs/PostCommentPrivilegeFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "config"

    const-string v4, "getConfig()Lcom/narvii/config/ConfigService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_MY_FOLLOWING:I

    const/4 v0, 0x3

    .line 37
    iput v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_NONE:I

    .line 49
    new-instance v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$api$2;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$api$2;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->api$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$config$2;

    invoke-direct {v0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$config$2;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->config$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->error:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->requestFinished:Z

    return p0
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/prefs/PostCommentPrivilegeFragment;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendRequest(I)V

    return-void
.end method

.method public static final synthetic access$setError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->error:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->requestFinished:Z

    return-void
.end method

.method private final sendBlogRequest()V
    .locals 4

    .line 123
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v1

    new-instance v2, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;

    const-class v3, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final sendRequest(I)V
    .locals 4

    .line 151
    iput p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    .line 152
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 154
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilege()I

    move-result v2

    const-string v3, "privilegeOfCommentOnPost"

    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "extensions"

    .line 157
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v1

    new-instance v2, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 72
    new-instance p1, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 79
    new-instance p1, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$marginAdapter$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$marginAdapter$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 85
    new-instance v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$dividerAdapter$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$dividerAdapter$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/app/NVContext;)V

    .line 89
    new-instance v1, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;

    invoke-direct {v1, p0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    .line 102
    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilege()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/adapter/RadioGroupAdapter;->setSelectedItemId(I)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.list.MergeAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->api$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getBlogId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->config$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    return-object v0
.end method

.method public final getMergeAdapter()Lcom/narvii/list/MergeAdapter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object v0
.end method

.method public final getPRIVILEGE_EVERYONE()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    return v0
.end method

.method public final getPRIVILEGE_MY_FOLLOWING()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_MY_FOLLOWING:I

    return v0
.end method

.method public final getPRIVILEGE_NONE()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_NONE:I

    return v0
.end method

.method public final getPrivilege()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    :cond_0
    return v0
.end method

.method public final getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    if-ne p2, v0, :cond_0

    const p2, 0x7f0f03fd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_MY_FOLLOWING:I

    if-ne p2, v0, :cond_1

    const p2, 0x7f0f0b54

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 188
    :cond_1
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_NONE:I

    if-ne p2, v0, :cond_2

    const p2, 0x7f0f039e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getRadioGroupAdapter()Lcom/narvii/adapter/RadioGroupAdapter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "privilege"

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    const-string p1, "blogId"

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    const p1, 0x7f0f00f8

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 61
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getConfig()Lcom/narvii/config/ConfigService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(I)V

    .line 62
    invoke-direct {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendBlogRequest()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->error:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendBlogRequest()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 112
    invoke-direct {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendBlogRequest()V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 198
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06007d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 201
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 202
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 203
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 205
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060181

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 206
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 207
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 208
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-void
.end method

.method public final setBlogId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    return-void
.end method

.method public final setMergeAdapter(Lcom/narvii/list/MergeAdapter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-void
.end method

.method public final setPrivilege(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    return-void
.end method

.method public final setRadioGroupAdapter(Lcom/narvii/adapter/RadioGroupAdapter;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    return-void
.end method
