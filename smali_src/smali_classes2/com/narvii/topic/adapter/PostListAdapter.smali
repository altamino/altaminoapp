.class public final Lcom/narvii/topic/adapter/PostListAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/topic/model/ModuleItemCountHost;
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/PostListAdapter$Companion;,
        Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;,
        Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/adapter/PostListAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_SIZE:I = 0x6


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final inflater$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final languageService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final proxyAdapter$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/adapter/PostListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/PostListAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/topic/adapter/PostListAdapter;->Companion:Lcom/narvii/topic/adapter/PostListAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "contentModule"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/topic/adapter/PostListAdapter$inflater$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p1}, Lcom/narvii/topic/adapter/PostListAdapter$inflater$2;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/topic/adapter/PostListAdapter;->inflater$delegate:Lw7/m;

    .line 29
    .line 30
    new-instance p2, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/PostListAdapter$proxyAdapter$2;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter;->proxyAdapter$delegate:Lw7/m;

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/PostListAdapter$languageService$2;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter;->languageService$delegate:Lw7/m;

    .line 51
    .line 52
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 58
    return-void
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p$s-695836687(Lcom/narvii/topic/adapter/PostListAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$onSubviewClick(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;Z)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public geSubResponseSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public final getInflater()Landroid/view/LayoutInflater;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->inflater$delegate:Lw7/m;

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
    check-cast v0, Landroid/view/LayoutInflater;

    .line 14
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x6

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 31
    move-result v0

    .line 32
    :goto_0
    return v0
.end method

.method public final getItemType(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "obj"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemType(Ljava/lang/Object;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemViewType(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->languageService$delegate:Lw7/m;

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
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 14
    return-object v0
.end method

.method public final getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->proxyAdapter$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 9
    return-object v0
.end method

.method public final getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p2, :cond_9

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-eq p2, v1, :cond_7

    .line 15
    const/4 v4, 0x2

    .line 16
    .line 17
    if-eq p2, v4, :cond_5

    .line 18
    const/4 v4, 0x3

    .line 19
    .line 20
    if-eq p2, v4, :cond_2

    .line 21
    const/4 v4, 0x4

    .line 22
    .line 23
    if-eq p2, v4, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getInflater()Landroid/view/LayoutInflater;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    const v2, 0x7f0d04c9

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0a0762

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Landroid/widget/FrameLayout;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getInflater()Landroid/view/LayoutInflater;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    add-int/lit8 p2, p2, -0x5

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getLayout(I)I

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    return-object p1

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-object v1, v1, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    .line 86
    move-result p2

    .line 87
    .line 88
    if-eqz p2, :cond_1

    .line 89
    move v2, v3

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 101
    move-result-object p2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    if-nez p2, :cond_3

    .line 108
    move p2, v3

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 121
    move-result p2

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1, v0, p2}, Lcom/narvii/list/NVPagedAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    .line 133
    move-result p2

    .line 134
    .line 135
    if-eqz p2, :cond_4

    .line 136
    move v2, v3

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 143
    goto :goto_1

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    .line 155
    move-result p2

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    move v2, v3

    .line 159
    .line 160
    .line 161
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 165
    goto :goto_1

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 169
    move-result-object p2

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 176
    move-result-object p2

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->showPageSataus()Z

    .line 184
    move-result p2

    .line 185
    .line 186
    if-eqz p2, :cond_8

    .line 187
    move v2, v3

    .line 188
    .line 189
    .line 190
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 194
    goto :goto_1

    .line 195
    .line 196
    .line 197
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 198
    move-result-object p2

    .line 199
    .line 200
    .line 201
    const v1, 0x1090003

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v1, p1, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    sget-boolean p2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 208
    .line 209
    if-eqz p2, :cond_a

    .line 210
    .line 211
    .line 212
    const p2, 0x1020014

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    move-result-object p2

    .line 217
    .line 218
    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 219
    .line 220
    .line 221
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    check-cast p2, Landroid/widget/TextView;

    .line 224
    .line 225
    const-string v0, "getItem() returns null"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    :cond_a
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 232
    :goto_1
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getViewTypeCount()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isEnd()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->isSubRequestFinish()Z

    .line 22
    move-result v0

    .line 23
    :goto_0
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->isReadyToRequest()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    .line 18
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;->bindData(I)V

    .line 15
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/narvii/topic/adapter/PostListAdapter$PostViewHolder;-><init>(Lcom/narvii/topic/adapter/PostListAdapter;Landroid/view/View;)V

    .line 15
    return-object v0
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 8
    move-result-object v1

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onLoginResult(ZLandroid/content/Intent;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    .line 8
    return-void
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 8
    move-result-object v1

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/feed/BaseFeedListAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 18
    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getProxyAdapter()Lcom/narvii/topic/adapter/PostListAdapter$PostSectionAdapter;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    or-int/lit16 p1, p1, 0x200

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    .line 6
    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/PostListAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestParent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/PostListAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 6
    return-void
.end method

.method public final showPageSataus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
