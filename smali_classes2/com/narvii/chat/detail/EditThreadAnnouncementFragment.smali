.class public final Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;
.super Lcom/narvii/master/home/profile/BaseSingleEditFragment;
.source "EditThreadAnnouncementFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditThreadAnnouncementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditThreadAnnouncementFragment.kt\ncom/narvii/chat/detail/EditThreadAnnouncementFragment\n*L\n1#1,183:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;

.field public static final MAX_LENGTH:I = 0x1f4


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public chatThread:Lcom/narvii/model/ChatThread;

.field private final editContent$delegate:Lkotlin/Lazy;

.field private final inputHint$delegate:Lkotlin/Lazy;

.field private final root$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "root"

    const-string v4, "getRoot()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editContent"

    const-string v4, "getEditContent()Landroid/widget/EditText;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "inputHint"

    const-string v4, "getInputHint()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;-><init>()V

    const v0, 0x7f09098b

    .line 31
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->root$delegate:Lkotlin/Lazy;

    const v0, 0x7f0902d0

    .line 32
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->editContent$delegate:Lkotlin/Lazy;

    const v0, 0x7f0905ab

    .line 33
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->inputHint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;ZLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->sendRequest(ZLjava/lang/String;)V

    return-void
.end method

.method private final bind(I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 169
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$bind$1;-><init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getEditContent()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->editContent$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final getInputHint()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->inputHint$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getRoot()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->root$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final sendRequest(ZLjava/lang/String;)V
    .locals 4

    .line 98
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$1;-><init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 105
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->threadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const-string v3, "announcement"

    .line 109
    invoke-virtual {v2, v3, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "pinAnnouncement"

    .line 111
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    const-string v3, "extensions"

    .line 108
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 107
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->setRequest(Lcom/narvii/util/http/ApiRequest;)V

    .line 116
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;

    const-class v3, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v2, p0, p2, p1, v3}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;-><init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;Ljava/lang/String;ZLjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getChatThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getThemeColor(I)I
    .locals 1

    const-string v0, "config"

    .line 162
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x130e43    # 1.74999E-39f

    :goto_1
    return p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public layoutId()I
    .locals 1

    const v0, 0x7f0b029a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "chatThread"

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "JacksonUtils.readAs(getS\u2026, ChatThread::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const-string p1, "config"

    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 173
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getEditContent()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060223

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getEditContent()Landroid/widget/EditText;

    move-result-object p1

    const-wide v0, 0xff4a4a4aL

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getEditContent()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->observeTextChanged(Landroid/widget/EditText;)V

    .line 55
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getEditContent()Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "chatThread"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public passValidate()Z
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getEditContent()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f4

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method protected submit()V
    .locals 6

    .line 67
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getEditContent()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v0, :cond_5

    .line 69
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 73
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f0f0193

    if-eqz v1, :cond_3

    .line 74
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0f2f

    .line 75
    invoke-virtual {v1, v4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v4, -0xb5b5b6

    .line 76
    invoke-virtual {v1, v3, v2, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const v2, 0x7f0f0f24

    .line 77
    new-instance v3, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1;-><init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 80
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 82
    :cond_3
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f03a9

    .line 83
    invoke-virtual {v1, v4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 84
    invoke-virtual {v1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    const v4, 0x7f0f0f2b

    .line 85
    new-instance v5, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$2;

    invoke-direct {v5, p0, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$2;-><init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v4, 0x7f0f0f25

    .line 88
    new-instance v5, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$3;

    invoke-direct {v5, p0, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$3;-><init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 91
    invoke-virtual {v1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 92
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void

    .line 73
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "chatThread"

    .line 68
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final threadId()Ljava/lang/String;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatThread.id()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "chatThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public title()I
    .locals 1

    const v0, 0x7f0f03d2

    return v0
.end method

.method protected updateView()V
    .locals 3

    .line 156
    invoke-super {p0}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->updateView()V

    .line 157
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getEditContent()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 158
    invoke-direct {p0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getInputHint()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/500"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final userId()Ljava/lang/String;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatThread.uid()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "chatThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
