.class public final Lcom/narvii/chat/detail/ThreadAnnouncementFragment;
.super Lcom/narvii/app/NVFragment;
.source "ThreadAnnouncementFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadAnnouncementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadAnnouncementFragment.kt\ncom/narvii/chat/detail/ThreadAnnouncementFragment\n*L\n1#1,178:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final api$delegate:Lkotlin/Lazy;

.field private final chatHelper$delegate:Lkotlin/Lazy;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private final clearListener$delegate:Lkotlin/Lazy;

.field private final content$delegate:Lkotlin/Lazy;

.field private final contentLayout$delegate:Lkotlin/Lazy;

.field private final editableBottom$delegate:Lkotlin/Lazy;

.field private final emptyLayout$delegate:Lkotlin/Lazy;

.field private final progressDialog$delegate:Lkotlin/Lazy;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private final switchView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "editableBottom"

    const-string v4, "getEditableBottom()Landroid/view/ViewGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "switchView"

    const-string v4, "getSwitchView()Landroid/widget/CheckBox;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "content"

    const-string v4, "getContent()Landroid/widget/TextView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "emptyLayout"

    const-string v4, "getEmptyLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "contentLayout"

    const-string v4, "getContentLayout()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "clearListener"

    const-string v4, "getClearListener()Landroid/view/View$OnClickListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "api"

    const-string v4, "getApi()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "progressDialog"

    const-string v4, "getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "chatHelper"

    const-string v4, "getChatHelper()Lcom/narvii/chat/util/ChatHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const v0, 0x7f0903d3

    .line 38
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->editableBottom$delegate:Lkotlin/Lazy;

    const v0, 0x7f090b31

    .line 39
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->switchView$delegate:Lkotlin/Lazy;

    const v0, 0x7f0902d0

    .line 40
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->content$delegate:Lkotlin/Lazy;

    const v0, 0x7f0903e6

    .line 41
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->emptyLayout$delegate:Lkotlin/Lazy;

    const v0, 0x7f0902d8

    .line 42
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->contentLayout$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->clearListener$delegate:Lkotlin/Lazy;

    .line 52
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->api$delegate:Lkotlin/Lazy;

    .line 54
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->progressDialog$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$chatHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$chatHelper$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "chatThread"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$sendRequest(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->sendRequest(Z)V

    return-void
.end method

.method public static final synthetic access$setChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

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

    .line 176
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$bind$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$bind$1;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final getClearListener()Landroid/view/View$OnClickListener;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->clearListener$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private final getContent()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->content$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getContentLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->contentLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getEditableBottom()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->editableBottom$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final getEmptyLayout()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->emptyLayout$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getSwitchView()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->switchView$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private final sendRequest(Z)V
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$1;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 132
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->threadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 135
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const-string v3, "pinAnnouncement"

    .line 136
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "extensions"

    .line 135
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 134
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 140
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;

    const-class v3, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;ZLjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final updateView()V
    .locals 10

    .line 96
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getSwitchView()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0807c0

    goto :goto_0

    :cond_0
    const v1, 0x7f0807bf

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 97
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isHost()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isCoHost()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x7f0f03cd

    .line 98
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getClearListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isHost()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "chatThread"

    const/4 v4, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isCoHost()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 107
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEditableBottom()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 101
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEditableBottom()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getSwitchView()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v5, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "chatThread.isPinAnnouncement"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getSwitchView()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v5, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$updateView$1;

    invoke-direct {v5, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$updateView$1;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :goto_2
    new-instance v0, Lcom/narvii/util/text/NVText;

    iget-object v5, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v5, ""

    :goto_3
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-wide v8, 0xff4a4a4aL

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-direct {v0, v5, v7}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;[Ljava/lang/Object;)V

    .line 110
    sget-object v5, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    invoke-virtual {v0, v5, v6}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    .line 113
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContent()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstanceIgnoreScroll()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 114
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContent()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContentLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEmptyLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 119
    :cond_6
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContentLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEmptyLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    .line 115
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->api$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/ChatHelper;

    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->progressDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    return-object v0
.end method

.method public final getRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final isCoHost()Z
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "chatThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isHost()Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "chatThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "chatThread"

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "JacksonUtils.readAs(getS\u2026, ChatThread::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const-string p1, "config"

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 68
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

    const p1, 0x7f0f0112

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void

    .line 68
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02ff

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    if-eq v0, v1, :cond_0

    const-string v1, "edit"

    if-ne v0, v1, :cond_4

    .line 84
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "_fromChatFragment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 88
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 90
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->updateView()V

    goto :goto_0

    :cond_2
    const-string p1, "chatThread"

    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 87
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->updateView()V

    return-void
.end method

.method public final setRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final threadId()Ljava/lang/String;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

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

.method public final userId()Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

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
