.class public final Lcom/narvii/prefs/PostCommentPrivilegeFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# instance fields
.field private final PRIVILEGE_EVERYONE:I

.field private final PRIVILEGE_MY_FOLLOWING:I

.field private final PRIVILEGE_NONE:I

.field private final api$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private blogId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final config$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private privilege:I

.field private radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private requestFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_MY_FOLLOWING:I

    .line 10
    const/4 v0, 0x3

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_NONE:I

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$api$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$api$2;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->api$delegate:Lw7/m;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$config$2;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$config$2;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->config$delegate:Lw7/m;

    .line 35
    return-void
.end method

.method public static final synthetic access$getError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->error:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->requestFinished:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/prefs/PostCommentPrivilegeFragment;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendRequest(I)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setError$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->error:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static final synthetic access$setRequestFinished$p(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->requestFinished:Z

    .line 3
    return-void
.end method

.method private final sendBlogRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v3, "blog/"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    new-instance v2, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;

    .line 38
    .line 39
    const-class v3, Lcom/narvii/model/api/BlogResponse;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, p0, v3}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendBlogRequest$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 46
    return-void
.end method

.method private final sendRequest(I)V
    .locals 4

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v3, "blog/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "privilegeOfCommentOnPost"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilege()I

    .line 55
    move-result v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 59
    .line 60
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 61
    .line 62
    const-string v2, "extensions"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    new-instance v2, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;

    .line 77
    .line 78
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$sendRequest$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$marginAdapter$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$marginAdapter$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$dividerAdapter$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$dividerAdapter$1;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment$createAdapter$2;-><init>(Lcom/narvii/prefs/PostCommentPrivilegeFragment;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getPrivilege()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/narvii/adapter/RadioGroupAdapter;->setSelectedItemId(I)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 53
    .line 54
    const-string v0, "null cannot be cast to non-null type com.narvii.list.MergeAdapter"

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    return-object p1
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->api$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    return-object v0
.end method

.method public final getBlogId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfig()Lcom/narvii/config/ConfigService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->config$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 14
    return-object v0
.end method

.method public final getMergeAdapter()Lcom/narvii/list/MergeAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object v0
.end method

.method public final getPRIVILEGE_EVERYONE()I
    .locals 1

    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    return v0
.end method

.method public final getPRIVILEGE_MY_FOLLOWING()I
    .locals 1

    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_MY_FOLLOWING:I

    return v0
.end method

.method public final getPRIVILEGE_NONE()I
    .locals 1

    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_NONE:I

    return v0
.end method

.method public final getPrivilege()I
    .locals 1

    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    :cond_0
    return v0
.end method

.method public final getPrivilegeText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_EVERYONE:I

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    .line 12
    const p2, 0x7f120471

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_MY_FOLLOWING:I

    .line 20
    .line 21
    if-ne p2, v0, :cond_1

    .line 22
    .line 23
    .line 24
    const p2, 0x7f120c58

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_1
    iget v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->PRIVILEGE_NONE:I

    .line 32
    .line 33
    if-ne p2, v0, :cond_2

    .line 34
    .line 35
    .line 36
    const p2, 0x7f1203f8

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return-object p1
.end method

.method public final getRadioGroupAdapter()Lcom/narvii/adapter/RadioGroupAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    const-string p1, "privilege"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    .line 12
    .line 13
    const-string p1, "blogId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    const p1, 0x7f120136

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->getConfig()Lcom/narvii/config/ConfigService;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 33
    move-result p1

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    const/4 p1, 0x2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendBlogRequest()V

    .line 45
    return-void
.end method

.method protected onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->error:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendBlogRequest()V

    .line 10
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0
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
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 18
    :goto_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->sendBlogRequest()V

    .line 7
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0600a1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0603eb

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 106
    const/4 v0, -0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 110
    :goto_0
    return-void
.end method

.method public final setBlogId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->blogId:Ljava/lang/String;

    return-void
.end method

.method public final setMergeAdapter(Lcom/narvii/list/MergeAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/list/MergeAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-void
.end method

.method public final setPrivilege(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->privilege:I

    return-void
.end method

.method public final setRadioGroupAdapter(Lcom/narvii/adapter/RadioGroupAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/adapter/RadioGroupAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/prefs/PostCommentPrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    return-void
.end method
