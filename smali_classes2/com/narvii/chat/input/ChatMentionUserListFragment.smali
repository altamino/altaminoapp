.class public final Lcom/narvii/chat/input/ChatMentionUserListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ChatMentionUserListFragment.kt"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;,
        Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;,
        Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatMentionUserListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatMentionUserListFragment.kt\ncom/narvii/chat/input/ChatMentionUserListFragment\n*L\n1#1,227:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private active:Z

.field private adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private curKeyword:Ljava/lang/String;

.field private curPageSize:I

.field private final fetchMentionListTask$delegate:Lkotlin/Lazy;

.field private final handler$delegate:Lkotlin/Lazy;

.field private mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

.field private final pageSizeLimit:I

.field private threadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fetchMentionListTask"

    const-string v4, "getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "handler"

    const-string v4, "getHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/16 v0, 0x64

    .line 38
    iput v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->pageSizeLimit:I

    .line 46
    new-instance v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$fetchMentionListTask$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$fetchMentionListTask$2;-><init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionListTask$delegate:Lkotlin/Lazy;

    .line 47
    sget-object v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$handler$2;->INSTANCE:Lcom/narvii/chat/input/ChatMentionUserListFragment$handler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->handler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getActive$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->active:Z

    return p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getChatHelper$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "chatHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getChatThread$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method public static final synthetic access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curPageSize:I

    return p0
.end method

.method public static final synthetic access$getPageSizeLimit$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->pageSizeLimit:I

    return p0
.end method

.method public static final synthetic access$getThreadId$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->threadId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "threadId"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setActive$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->active:Z

    return-void
.end method

.method public static final synthetic access$setAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    return-void
.end method

.method public static final synthetic access$setChatHelper$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Lcom/narvii/chat/util/ChatHelper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method public static final synthetic access$setChatThread$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public static final synthetic access$setCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curKeyword:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curPageSize:I

    return-void
.end method

.method public static final synthetic access$setThreadId$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->threadId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic fetchMentionRelatedUserList$default(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 81
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionRelatedUserList(Ljava/lang/String;Z)V

    return-void
.end method

.method private final getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionListTask$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/input/ChatMentionUserListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    return-object v0
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->handler$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/chat/input/ChatMentionUserListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 77
    new-instance p1, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;-><init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final fetchMentionRelatedUserList(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->active:Z

    .line 83
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->setKeyword(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->run()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final getMentionRelatedUsersCallback()Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v1, "threadId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->threadId:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02c1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 72
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    .line 74
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 102
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 62
    sget-object p1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const-string v0, "listView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    return-void
.end method

.method public final setMentionRelatedUsersCallback(Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    return-void
.end method
