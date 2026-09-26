.class public Lcom/narvii/community/CommunityListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityListFragment$Adapter;,
        Lcom/narvii/community/CommunityListFragment$Companion;,
        Lcom/narvii/community/CommunityListFragment$DataSource;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/community/CommunityListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PATH:Ljava/lang/String; = "KEY_PATH"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_REFRESH_REPLACE:Ljava/lang/String; = "KEY_REPLACE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_SHARE_DATA_SOURCE_ID:Ljava/lang/String; = "KEY_DATA_SOURCE_ID"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_TITLE:Ljava/lang/String; = "KEY_TITLE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static initCommunityListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Community;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static tokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public languageService:Lcom/narvii/language/ContentLanguageService;

.field private sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/community/CommunityListFragment$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/community/CommunityListFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/community/CommunityListFragment;->initCommunityListMap:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/community/CommunityListFragment;->tokenMap:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$getInitCommunityListMap$cp()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/narvii/community/CommunityListFragment;->initCommunityListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getTokenMap$cp()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/narvii/community/CommunityListFragment;->tokenMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$setInitCommunityListMap$cp(Ljava/util/HashMap;)V
    .locals 0

    sput-object p0, Lcom/narvii/community/CommunityListFragment;->initCommunityListMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$setTokenMap$cp(Ljava/util/HashMap;)V
    .locals 0

    sput-object p0, Lcom/narvii/community/CommunityListFragment;->tokenMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0d03e1

    return v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/community/CommunityListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Lcom/narvii/community/CommunityListFragment$Adapter;-><init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method public createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "languageService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "KEY_PATH"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "communities_list"

    .line 15
    return-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final getSharedShareSourceHolder()Lcom/narvii/paging/source/ShareDataSourceHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    const-string p1, "content_language"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "getService(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityListFragment;->setLanguageService(Lcom/narvii/language/ContentLanguageService;)V

    .line 20
    .line 21
    const-string p1, "KEY_TITLE"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
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
    const p3, 0x7f0d0306

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0600a1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 26
    move-result p3

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment;->sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/paging/source/ShareDataSourceHolder;->removeHost(Lcom/narvii/app/NVContext;)V

    .line 11
    :cond_0
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
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    const p2, 0x7f08025c

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    .line 31
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 44
    .line 45
    .line 46
    const v0, 0x20ffffff

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DividerItemDecoration;->f(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 58
    return-void
.end method

.method public pagingConfig()Lcom/narvii/paging/source/PagingConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    .line 3
    .line 4
    const-string v1, "TOKEN_CONFIG"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1
    .param p1    # Lcom/narvii/language/ContentLanguageService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setSharedShareSourceHolder(Lcom/narvii/paging/source/ShareDataSourceHolder;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/source/ShareDataSourceHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment;->sharedShareSourceHolder:Lcom/narvii/paging/source/ShareDataSourceHolder;

    return-void
.end method
