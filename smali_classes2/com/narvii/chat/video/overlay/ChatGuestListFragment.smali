.class public final Lcom/narvii/chat/video/overlay/ChatGuestListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ChatGuestListFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatGuestListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatGuestListFragment.kt\ncom/narvii/chat/video/overlay/ChatGuestListFragment\n*L\n1#1,321:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public adapter:Lcom/narvii/list/NVAdapter;

.field private final api$delegate:Lkotlin/Lazy;

.field private channelType:Ljava/lang/Integer;

.field private final chatHelper$delegate:Lkotlin/Lazy;

.field private final idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rtcService$delegate:Lkotlin/Lazy;

.field private thread:Lcom/narvii/model/ChatThread;

.field private final userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field public userWrapperList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "rtcService"

    const-string v4, "getRtcService()Lcom/narvii/chat/rtc/RtcService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "api"

    const-string v4, "getApi()Lcom/narvii/util/http/ApiService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "chatHelper"

    const-string v4, "getChatHelper()Lcom/narvii/chat/util/ChatHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userList:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$rtcService$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$rtcService$2;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->rtcService$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$api$2;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->api$delegate:Lkotlin/Lazy;

    .line 60
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$chatHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$chatHelper$2;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->chatHelper$delegate:Lkotlin/Lazy;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    .line 284
    new-instance v0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$vvProfileClickListener$1;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-void
.end method

.method public static final synthetic access$getChannelId(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChannelId(Lcom/narvii/model/User;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$inviteUser(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->inviteUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method private final getChannelId(Lcom/narvii/model/User;)I
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string/jumbo v2, "userWrapperList"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 259
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 260
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 p1, -0x1

    :goto_1
    return p1

    .line 258
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private final inviteUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 242
    new-instance v0, Lcom/narvii/chat/ChatThreadUserOperationHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 243
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$inviteUser$1;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/ChatThreadUserOperationHelper;->inviteAsSpeaker(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 96
    new-instance p1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;

    const-class v0, Lcom/narvii/model/User;

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment$Adapter;-><init>(Lcom/narvii/chat/video/overlay/ChatGuestListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->adapter:Lcom/narvii/list/NVAdapter;

    .line 97
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->adapter:Lcom/narvii/list/NVAdapter;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getAdapter()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->adapter:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->api$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    return-object v0
.end method

.method public final getChannelType()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->chatHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/ChatHelper;

    return-object v0
.end method

.method public final getIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "LiveChatGuestViewer"

    return-object v0
.end method

.method public final getRtcService()Lcom/narvii/chat/rtc/RtcService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->rtcService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public final getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public final getUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userList:Ljava/util/List;

    return-object v0
.end method

.method public final getUserWrapperList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "userWrapperList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getVvProfileClickListener$Amino_bundle()Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final isCoHost()Z
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method public final isHost()Z
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    return v0
.end method

.method public final isInvite(Lcom/narvii/model/User;)Z
    .locals 2

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper$Companion;->getInstance()Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/video/utils/LiveChannelInviteHistoryHelper;->isInvitedAsSpeaker(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 68
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Source"

    const-string v2, "1-1 > Group Chat"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->getRtcService()Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, "rtcService.mainChannelUserWrapperList.clone()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    .line 76
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const p1, 0x7f0f074d

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string/jumbo p1, "uidList"

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "thread"

    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    const-string v0, "channelType"

    .line 82
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_2
    if-eqz p1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 299
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v1, v1, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;

    if-eqz v1, :cond_3

    .line 300
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;

    .line 301
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->idList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/chat/SpeakerInviteNotificationWrapper;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 302
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->adapter:Lcom/narvii/list/NVAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.chat.SpeakerInviteNotificationWrapper"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 308
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 310
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06007d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 311
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 312
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 313
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

    .line 312
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 315
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060181

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 316
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 317
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 318
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

    .line 317
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-void
.end method

.method public final setAdapter(Lcom/narvii/list/NVAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->adapter:Lcom/narvii/list/NVAdapter;

    return-void
.end method

.method public final setChannelType(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->channelType:Ljava/lang/Integer;

    return-void
.end method

.method public final setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public final setUserWrapperList(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->userWrapperList:Landroid/util/SparseArray;

    return-void
.end method

.method public final setVvProfileClickListener$Amino_bundle(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;->vvProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    return-void
.end method
