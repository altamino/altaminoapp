.class public final Lcom/narvii/chat/input/ChatMentionUserListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/ThreadInfoHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;,
        Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;,
        Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatThread:Lcom/narvii/model/ChatThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curKeyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curPageSize:I

.field private final fetchMentionListTask$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pageSizeLimit:I

.field private threadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/chat/input/ChatMentionUserListFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x64

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->pageSizeLimit:I

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$fetchMentionListTask$2;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$fetchMentionListTask$2;-><init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionListTask$delegate:Lw7/m;

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$handler$2;->INSTANCE:Lcom/narvii/chat/input/ChatMentionUserListFragment$handler$2;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->handler$delegate:Lw7/m;

    .line 27
    .line 28
    sget-object v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$binding$2;->INSTANCE:Lcom/narvii/chat/input/ChatMentionUserListFragment$binding$2;

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->binding$delegate:Lkotlin/properties/d;

    .line 35
    return-void
.end method

.method public static final synthetic access$getActive$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->active:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getChatHelper$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getChatThread$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curKeyword:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curPageSize:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getPageSizeLimit$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->pageSizeLimit:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getThreadId$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->threadId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curKeyword:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static final synthetic access$setCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->curPageSize:I

    .line 3
    return-void
.end method

.method public static synthetic fetchMentionRelatedUserList$default(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionRelatedUserList(Ljava/lang/String;Z)V

    .line 9
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/chat/input/ChatMentionUserListFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;

    .line 14
    return-object v0
.end method

.method private final getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->fetchMentionListTask$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    .line 9
    return-object v0
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->handler$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/os/Handler;

    .line 9
    return-object v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;-><init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 8
    return-object p1
.end method

.method public final fetchMentionRelatedUserList(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->active:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getHandler()Landroid/os/Handler;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->setKeyword(Ljava/lang/String;)V

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->run()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getHandler()Landroid/os/Handler;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    const-wide/16 v0, 0x64

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :goto_0
    return-void
.end method

.method public final getMentionRelatedUsersCallback()Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, "threadId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    .line 21
    :goto_0
    if-nez p1, :cond_1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v0, p1

    .line 24
    .line 25
    :goto_1
    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->threadId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;->getRoot()Landroid/widget/FrameLayout;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string p2, "getRoot(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroyView()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getHandler()Landroid/os/Handler;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->getFetchMentionListTask()Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    .line 18
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0
    .param p1    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->adapter:Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "adapter"

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    const-string v0, "getContext(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 25
    .line 26
    sget-object p1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 33
    const/4 p1, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 40
    move-result-object p2

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    const/4 p1, 0x2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 69
    return-void
.end method

.method public final setMentionRelatedUsersCallback(Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment;->mentionRelatedUsersCallback:Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;

    return-void
.end method
