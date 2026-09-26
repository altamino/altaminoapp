.class public final Lcom/narvii/master/home/discover/DiscoverTabFragment;
.super Lcom/narvii/nested/CoordinateTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/master/MasterTopBarAvailable;
.implements Lcom/narvii/language/LanguageChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoverTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverTabFragment.kt\ncom/narvii/master/home/discover/DiscoverTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,277:1\n1549#2:278\n1620#2,3:279\n*S KotlinDebug\n*F\n+ 1 DiscoverTabFragment.kt\ncom/narvii/master/home/discover/DiscoverTabFragment\n*L\n177#1:278\n177#1:279,3\n*E\n"
.end annotation


# instance fields
.field public accountService:Lcom/narvii/account/AccountService;

.field private final btnInterestPicker$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headerGradientView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headerView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isBottomOverlay:Z

.field private isImmersiveHeader:Z

.field public languageService:Lcom/narvii/language/ContentLanguageService;

.field private final receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showMasterTopBar:Z

.field private storyListShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a03b6

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lw7/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerView$delegate:Lw7/m;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a062c

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerGradientView$delegate:Lw7/m;

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0aec

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lw7/m;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->btnInterestPicker$delegate:Lw7/m;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;-><init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    .line 41
    return-void
.end method

.method private final bind(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/master/home/discover/DiscoverTabFragment;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/master/home/discover/DiscoverTabFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/master/home/discover/DiscoverTabFragment$bind$1;-><init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/master/home/discover/DiscoverTabFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "TopicPickerIcon"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    const-class p1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static synthetic q(Lcom/narvii/master/home/discover/DiscoverTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->onViewCreated$lambda$0(Lcom/narvii/master/home/discover/DiscoverTabFragment;Landroid/view/View;)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final updateHeaderView()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isImmersiveHeader:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_0
    return-void
.end method

.method private final updateMasterTopBar(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of p1, p1, Lcom/narvii/master/MasterTabFragment;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->updateTopbar()V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lw7/z;

    .line 8
    .line 9
    .line 10
    const v2, 0x7f1207b5

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    new-instance v3, Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    const-class v4, Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v4, v3}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    new-instance v6, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v1, 0xa

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Lw7/z;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lw7/z;->d()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Ljava/lang/Number;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 78
    move-result v2

    .line 79
    .line 80
    .line 81
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v3

    .line 90
    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    check-cast v3, Lw7/z;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    check-cast v3, Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 113
    move-result v1

    .line 114
    .line 115
    .line 116
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v1

    .line 125
    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    check-cast v1, Lw7/z;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lw7/z;->f()Ljava/lang/Object;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    check-cast v1, Landroid/os/Bundle;

    .line 139
    .line 140
    .line 141
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    const/4 v9, 0x0

    .line 144
    .line 145
    const/16 v10, 0x8

    .line 146
    const/4 v11, 0x0

    .line 147
    move-object v5, p0

    .line 148
    .line 149
    .line 150
    invoke-static/range {v5 .. v11}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 151
    move-result-object v0

    .line 152
    return-object v0
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nested/tab/ScrollTabViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nested/tab/ScrollTabViewDelegate;-><init>()V

    .line 6
    return-object v0
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "accountService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getBtnInterestPicker()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->btnInterestPicker$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public final getHeaderGradientView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerGradientView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->headerView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getImmersiveHeaderHeight()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

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

    const-string/jumbo v0, "story_discover"

    return-object v0
.end method

.method public final getShowMasterTopBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    return v0
.end method

.method public final getStoryListShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    return v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d0726

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0e27

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-object p1
.end method

.method public final isBottomOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isImmersiveHeader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isImmersiveHeader:Z

    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    return v0
.end method

.method public onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 2
    .param p1    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 18
    move-result v0

    .line 19
    sub-int/2addr p2, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 23
    move-result v0

    .line 24
    add-int/2addr p2, v0

    .line 25
    int-to-float p2, p2

    .line 26
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    mul-float/2addr p2, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    .line 40
    move-result v1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    int-to-float v0, v0

    .line 43
    div-float/2addr p2, v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 47
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

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
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToExplore()V

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "getService(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->setAccountService(Lcom/narvii/account/AccountService;)V

    .line 25
    .line 26
    const-string v0, "content_language"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->setLanguageService(Lcom/narvii/language/ContentLanguageService;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    .line 41
    .line 42
    new-instance v1, Landroid/content/IntentFilter;

    .line 43
    .line 44
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    const-string/jumbo v0, "showMasterTopBar"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    .line 61
    .line 62
    const-string v0, "isBottomOverlay"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 66
    move-result p1

    .line 67
    .line 68
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    .line 69
    :cond_0
    const/4 p1, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 73
    .line 74
    .line 75
    const p1, 0x7f1203ff

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f121056

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    const p2, 0x7f080459

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const/4 p2, 0x2

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 37
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
    const p3, 0x7f0d02c5

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

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/nested/CoordinateTabFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverTabFragment$receiver$1;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateInterPicker()V

    .line 4
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f121056

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-class v0, Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string/jumbo v1, "tab"

    .line 23
    .line 24
    const-string v2, "community"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    const v1, 0x7f010037

    .line 38
    .line 39
    .line 40
    const v2, 0x7f010038

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 47
    move-result p1

    .line 48
    return p1
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
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string/jumbo v0, "showMasterTopBar"

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    const-string v0, "isBottomOverlay"

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "f"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V

    .line 9
    .line 10
    instance-of p2, p1, Lcom/narvii/master/home/story/CommentSheetDisplayHost;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    instance-of p2, p2, Lcom/narvii/master/MasterTabFragment;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/master/home/story/CommentSheetDisplayHost;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const-string v0, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    check-cast p2, Lcom/narvii/master/MasterTabFragment;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/narvii/master/MasterTabFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, p2}, Lcom/narvii/master/home/story/CommentSheetDisplayHost;->setBottomSheetLayout(Landroid/widget/FrameLayout;)V

    .line 39
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
    const-string/jumbo v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string p2, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 31
    move-result p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0702f4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderView()Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    add-int/2addr p1, p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getBtnInterestPicker()Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    new-instance p2, Lcom/narvii/master/home/discover/a;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/a;-><init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateInterPicker()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    new-instance p2, Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 87
    .line 88
    const-string v0, "#66000000"

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 92
    move-result v0

    .line 93
    .line 94
    const-string v1, "overlayColor"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    :cond_1
    return-void
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setBottomOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    return-void
.end method

.method public final setImmersiveHeader(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isImmersiveHeader:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateHeaderView()V

    .line 6
    return-void
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1
    .param p1    # Lcom/narvii/language/ContentLanguageService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setShowMasterTopBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->showMasterTopBar:Z

    return-void
.end method

.method public final setStoreBadged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/master/MasterTabFragment;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/master/MasterTabFragment;->setStoreBadged()V

    .line 20
    :cond_1
    return-void
.end method

.method public final setStoryListShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    return-void
.end method

.method public final setTopBarElementsVisibility(IZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/narvii/master/MasterTabFragment;->setTopBarElementsVisibility(IZ)V

    .line 23
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "getChildFragmentManager(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0dd1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->l0(I)Landroidx/fragment/app/Fragment;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->setUserVisibleHint(Z)V

    .line 24
    :goto_0
    return-void
.end method

.method public final storyListShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing:Z

    return v0
.end method

.method public final updateImmersiveHeader(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    const v0, 0x7f080316

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getHeaderGradientView()Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 20
    .line 21
    .line 22
    const v1, -0xecf1bd

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :goto_0
    return-void
.end method

.method public final updateInterPicker()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithEnAsDefault()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "getRequestPrefLanguageWithEnAsDefault(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    const-string v3, "en"

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->getBtnInterestPicker()Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    const/4 v4, 0x4

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    return-void
.end method

.method public updateMasterBottomBar(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterTabFragment;->setBottomTabOverlay(Z)V

    .line 25
    :cond_0
    return-void
.end method
