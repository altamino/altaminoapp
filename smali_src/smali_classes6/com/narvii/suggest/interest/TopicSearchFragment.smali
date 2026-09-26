.class public final Lcom/narvii/suggest/interest/TopicSearchFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;,
        Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;,
        Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;
    }
.end annotation


# static fields
.field public static final CANCELED_TOPIC:Ljava/lang/String; = "canceled_topic"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SELECTED_TOPIC:Ljava/lang/String; = "selected_topic"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOPIC_ID_LIST:Ljava/lang/String; = "topic_id_list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOPIC_SEARCH_KEY:Ljava/lang/String; = "search_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOPIC_SEARCH_REQUEST_CODE:I = 0x65


# instance fields
.field private canceledTopicIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final instantSearchListener:Lcom/narvii/search/InstantSearchListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private searchBar:Lcom/narvii/widget/SearchBar;

.field private topicIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topicRecyclerViewAdapter:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/suggest/interest/TopicSearchFragment;->Companion:Lcom/narvii/suggest/interest/TopicSearchFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->canceledTopicIdList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static final synthetic access$getCanceledTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->canceledTopicIdList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInstantSearchListener$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Lcom/narvii/search/InstantSearchListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicIdList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private final cancel()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->canceledTopicIdList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "canceled_topic"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const/4 v1, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 24
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/suggest/interest/TopicSearchFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->cancel()V

    .line 10
    return-void
.end method

.method private static final onViewCreated$lambda$2(Landroid/view/View;)V
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

.method public static synthetic s(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->onViewCreated$lambda$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/suggest/interest/TopicSearchFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/suggest/interest/TopicSearchFragment;->onViewCreated$lambda$1(Lcom/narvii/suggest/interest/TopicSearchFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, p0}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicRecyclerViewAdapter:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/narvii/search/InstantSearchListener;->attachRecyclerAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicRecyclerViewAdapter:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "topicRecyclerViewAdapter"

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 33
    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->cancel()V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
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
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "topic_id_list"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "readListAs(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->topicIdList:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 28
    .line 29
    const-string v1, "search_key"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d0334

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
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
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "search_key"

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
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

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
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/app/ActionBar;->hide()V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 55
    .line 56
    .line 57
    :cond_1
    const p2, 0x7f0a0c92

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    const-string v0, "findViewById(...)"

    .line 64
    .line 65
    .line 66
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    check-cast p2, Lcom/narvii/widget/SearchBar;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 71
    const/4 v0, 0x0

    .line 72
    .line 73
    const-string v1, "searchBar"

    .line 74
    .line 75
    if-nez p2, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 79
    move-object p2, v0

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p2, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 85
    .line 86
    if-nez p2, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 90
    move-object p2, v0

    .line 91
    .line 92
    .line 93
    :cond_3
    const v2, 0x7f0a0c98

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    new-instance v2, Lcom/narvii/suggest/interest/k;

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, p0}, Lcom/narvii/suggest/interest/k;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    :cond_4
    iget-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 110
    .line 111
    if-nez p2, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    move-object v0, p2

    .line 117
    .line 118
    .line 119
    :goto_0
    const p2, 0x7f0a0caa

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    check-cast p2, Landroid/widget/EditText;

    .line 126
    .line 127
    if-nez p2, :cond_6

    .line 128
    goto :goto_1

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    const v1, 0x7f121067

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    :goto_1
    new-instance p2, Lcom/narvii/suggest/interest/l;

    .line 145
    .line 146
    .line 147
    invoke-direct {p2, p1}, Lcom/narvii/suggest/interest/l;-><init>(Landroid/view/View;)V

    .line 148
    .line 149
    const-wide/16 v0, 0xc8

    .line 150
    .line 151
    .line 152
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 153
    return-void
.end method
