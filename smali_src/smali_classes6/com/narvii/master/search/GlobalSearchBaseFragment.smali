.class public final Lcom/narvii/master/search/GlobalSearchBaseFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/search/ChangeSearchTextListener;
.implements Lcom/narvii/search/ISearchBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;
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

.field public static final Companion:Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INDEX_CHAT:I = 0x5

.field public static final INDEX_COMMUNITY:I = 0x1

.field public static final INDEX_MY_CHAT:I = 0x6

.field public static final INDEX_POST:I = 0x4

.field public static final INDEX_TOPIC:I = 0x3

.field public static final INDEX_USER:I = 0x2


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentFragment:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchBack:Lcom/narvii/widget/TintButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchBar:Lcom/narvii/widget/SearchBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchCancel:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchText:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sectionType:I


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
    const-string v3, "getBinding()Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/master/search/GlobalSearchBaseFragment;

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
    sput-object v0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->Companion:Lcom/narvii/master/search/GlobalSearchBaseFragment$Companion;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$binding$2;->INSTANCE:Lcom/narvii/master/search/GlobalSearchBaseFragment$binding$2;

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->binding$delegate:Lkotlin/properties/d;

    .line 16
    return-void
.end method

.method public static final synthetic access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$logSearchEvent(Lcom/narvii/master/search/GlobalSearchBaseFragment;Lcom/narvii/master/search/SearchLog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 4
    return-void
.end method

.method private final getBinding()Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/master/search/GlobalSearchBaseFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;

    .line 14
    return-object v0
.end method

.method private final getCurrentSearchType()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "myChats"

    return-object v0

    :pswitch_1
    const-string v0, "chats"

    return-object v0

    :pswitch_2
    const-string v0, "posts"

    return-object v0

    :pswitch_3
    const-string v0, "topics"

    return-object v0

    :pswitch_4
    const-string v0, "users"

    return-object v0

    :pswitch_5
    const-string v0, "communities"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final logSearchEvent(Lcom/narvii/master/search/SearchLog;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "toString(...)"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/narvii/master/search/SearchLog;->nvContext:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    sget-object v2, Lcom/narvii/logging/ActSemantic;->search:Lcom/narvii/logging/ActSemantic;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "inputText"

    .line 37
    .line 38
    iget-object v3, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    sget-object v2, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, p1, Lcom/narvii/master/search/SearchLog;->area:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    const-string v2, "InputArea"

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    const-string v2, "searchType"

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->getCurrentSearchType()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-string v2, "searchId"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    iget-boolean p1, p1, Lcom/narvii/master/search/SearchLog;->instant:Z

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    const-string v1, "instantSearch"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 91
    :cond_2
    return-void
.end method

.method public static synthetic n(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->onViewCreated$lambda$4(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->onViewCreated$lambda$2(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

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

.method private static final onViewCreated$lambda$2(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchText:Landroid/widget/EditText;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchText:Landroid/widget/EditText;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    .line 32
    :cond_2
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

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

.method private static final onViewCreated$lambda$4(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/widget/SearchBar;->showKeyboard()V

    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->onViewCreated$lambda$3(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->onViewCreated$lambda$1(Lcom/narvii/master/search/GlobalSearchBaseFragment;Landroid/view/View;)V

    return-void
.end method

.method private final replaceContainer()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    .line 3
    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :pswitch_0
    new-instance v0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/master/search/GlobalMyChatsSearchFragment;-><init>()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :pswitch_1
    new-instance v0, Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;-><init>()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :pswitch_2
    new-instance v0, Lcom/narvii/master/search/GlobalPostSearchListFragment;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;-><init>()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :pswitch_3
    new-instance v0, Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;-><init>()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :pswitch_4
    new-instance v0, Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Lcom/narvii/master/search/GlobalUserSearchFragment;-><init>()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :pswitch_5
    new-instance v0, Lcom/narvii/master/CommunitySearchListFragment;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Lcom/narvii/master/CommunitySearchListFragment;-><init>()V

    .line 43
    .line 44
    :goto_0
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    instance-of v1, v0, Lcom/narvii/master/search/ChangeSearchTextRegister;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/master/search/ChangeSearchTextRegister;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p0}, Lcom/narvii/master/search/ChangeSearchTextRegister;->setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V

    .line 54
    .line 55
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    const-string v1, "search_key"

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    const-string v1, "hide_match_id_adapter"

    .line 68
    const/4 v2, 0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    .line 73
    iget v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    .line 74
    .line 75
    if-ne v1, v2, :cond_1

    .line 76
    .line 77
    const-string v1, "key_result_page"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    .line 82
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    .line 90
    :goto_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const v2, 0x7f0a0c9b

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 116
    :cond_3
    return-void

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setEditTextHint(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0x7f121063

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    const v0, 0x7f121056

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public changeSearchText(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p2, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 31
    :cond_2
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "global_single_search"

    return-object v0
.end method

.method public getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "search"

    .line 7
    .line 8
    const-string v0, "searchId is null"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchId:Ljava/lang/String;

    .line 14
    return-object p1
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->instant()Lcom/narvii/master/search/SearchLog$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 16
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
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "section_type"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->sectionType:I

    .line 12
    .line 13
    const-string v0, "search_key"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iput-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 47
    :cond_2
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
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;->getRoot()Landroid/widget/FrameLayout;

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
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "search_key"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "SearchHistory"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/master/search/SearchLog$Builder;->area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 18
    return-void
.end method

.method public onSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 18
    .line 19
    .line 20
    :cond_0
    const p2, 0x7f0a0c92

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/widget/SearchBar;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->getBinding()Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iget-object p2, p2, Lcom/narvii/amino/databinding/FragmentSearchBaseBinding;->searchBar:Lcom/narvii/amino/databinding/GlobalSearchBarBinding;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/GlobalSearchBarBinding;->getRoot()Lcom/narvii/widget/SearchBar;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 46
    .line 47
    .line 48
    const p2, 0x7f0a0c90

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBack:Lcom/narvii/widget/TintButton;

    .line 57
    .line 58
    if-nez p2, :cond_1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    :goto_0
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBack:Lcom/narvii/widget/TintButton;

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/master/search/f;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/narvii/master/search/f;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    const p2, 0x7f0a0caa

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    check-cast v0, Landroid/widget/EditText;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchText:Landroid/widget/EditText;

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/master/search/g;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/narvii/master/search/g;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    .line 92
    .line 93
    const-wide/16 v1, 0xc8

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a0c98

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Landroid/widget/Button;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchCancel:Landroid/widget/Button;

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    new-instance v0, Lcom/narvii/master/search/h;

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/narvii/master/search/h;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchKey:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->replaceContainer()V

    .line 136
    .line 137
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 138
    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    new-instance v0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 148
    .line 149
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 150
    .line 151
    if-eqz p1, :cond_6

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    check-cast p1, Landroid/widget/EditText;

    .line 158
    goto :goto_1

    .line 159
    :cond_6
    const/4 p1, 0x0

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->setEditTextHint(Landroid/widget/EditText;)V

    .line 163
    .line 164
    const-string p1, "showKeyboard"

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 168
    move-result p1

    .line 169
    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    new-instance p1, Lcom/narvii/master/search/i;

    .line 173
    .line 174
    .line 175
    invoke-direct {p1, p0}, Lcom/narvii/master/search/i;-><init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V

    .line 176
    .line 177
    const-wide/16 v0, 0x64

    .line 178
    .line 179
    .line 180
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 181
    :cond_7
    return-void
.end method
