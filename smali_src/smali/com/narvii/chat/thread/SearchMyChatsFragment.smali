.class public final Lcom/narvii/chat/thread/SearchMyChatsFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;
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
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatsAdapter:Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

.field private final instantSearchListener:Lcom/narvii/search/InstantSearchListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private searchBar:Lcom/narvii/widget/SearchBar;


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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/chat/thread/SearchMyChatsFragment;

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
    sput-object v0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/chat/thread/SearchMyChatsFragment$binding$2;->INSTANCE:Lcom/narvii/chat/thread/SearchMyChatsFragment$binding$2;

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->binding$delegate:Lkotlin/properties/d;

    .line 19
    return-void
.end method

.method public static final synthetic access$getInstantSearchListener$p(Lcom/narvii/chat/thread/SearchMyChatsFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    return-object p0
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/chat/thread/SearchMyChatsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;

    .line 14
    return-object v0
.end method

.method private static final onCreate$lambda$0(Lcom/narvii/chat/thread/SearchMyChatsFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lcom/narvii/logging/ActSemantic;->search:Lcom/narvii/logging/ActSemantic;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    const-string p2, "inputText"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    sget-object p1, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    const-string p1, "InputArea"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 39
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/chat/thread/SearchMyChatsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$3(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$view"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a0caa

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    check-cast p0, Landroid/widget/EditText;

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 18
    return-void
.end method

.method public static synthetic t(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->onViewCreated$lambda$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/thread/SearchMyChatsFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->onCreate$lambda$0(Lcom/narvii/chat/thread/SearchMyChatsFragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/chat/thread/SearchMyChatsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->onViewCreated$lambda$2(Lcom/narvii/chat/thread/SearchMyChatsFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;-><init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->chatsAdapter:Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->chatsAdapter:Lcom/narvii/chat/thread/SearchMyChatsFragment$MyChatsAdapter;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, "chatsAdapter"

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    const/4 p1, 0x0

    .line 23
    :cond_0
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "search_my_chat"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
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
    const v0, 0x7f120269

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "requireContext(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/chat/thread/h;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/narvii/chat/thread/h;-><init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 47
    .line 48
    const-string/jumbo v1, "search_key"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 60
    :cond_0
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
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
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string/jumbo v1, "search_key"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    const-string/jumbo v0, "view"

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
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iget-object p2, p2, Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;->chatSearchBar:Lcom/narvii/amino/databinding/MyChatSearchBarBinding;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/narvii/amino/databinding/MyChatSearchBarBinding;->searchLayout:Lcom/narvii/widget/SearchBar;

    .line 17
    .line 18
    const-string/jumbo v0, "searchLayout"

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    const-string/jumbo p2, "searchBar"

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    const/4 p2, 0x0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p2, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/chat/thread/SearchMyChatsFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    iget-object p2, p2, Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;->chatSearchBar:Lcom/narvii/amino/databinding/MyChatSearchBarBinding;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/narvii/amino/databinding/MyChatSearchBarBinding;->searchCancel:Landroid/widget/Button;

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/chat/thread/f;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/f;-><init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    new-instance p2, Lcom/narvii/chat/thread/g;

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/narvii/chat/thread/g;-><init>(Landroid/view/View;)V

    .line 56
    .line 57
    const-wide/16 v0, 0xc8

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 61
    return-void
.end method

.method protected showListviewWhenLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
