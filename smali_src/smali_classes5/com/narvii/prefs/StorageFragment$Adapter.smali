.class final Lcom/narvii/prefs/StorageFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/StorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field private final ASSETS_TAG:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final CACHE_TAG:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final DRAFT_TAG:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/prefs/StorageFragment$StorageModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/prefs/StorageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/StorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/narvii/prefs/StorageFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/prefs/StorageFragment$StorageModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modelList"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/util/Tag;

    .line 20
    .line 21
    const-string p2, "cache"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/util/Tag;

    .line 29
    .line 30
    const-string p2, "assets"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/util/Tag;

    .line 38
    .line 39
    const-string p2, "drafts"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    .line 45
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d0315

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    .line 12
    const p3, 0x7f0a0e9e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    check-cast p3, Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getTitle()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const p3, 0x7f0a042b

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    check-cast p3, Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getDetail()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getDetail()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v0

    .line 74
    const/4 v1, 0x0

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move v0, v1

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    const p3, 0x7f0a0db9

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p3

    .line 91
    .line 92
    check-cast p3, Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    const p3, 0x7f0a081d

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object p3

    .line 115
    .line 116
    check-cast p3, Lcom/narvii/widget/SpinningView;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    check-cast p1, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    move-result p1

    .line 133
    .line 134
    if-eqz p1, :cond_1

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    const/4 v1, 0x4

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 143
    return-object p2
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    :cond_0
    const-string v0, "DIVIDER"

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    :cond_2
    if-eqz p1, :cond_3

    .line 29
    .line 30
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    :cond_3
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_4
    return-void
.end method

.method public final getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/prefs/StorageFragment$StorageModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->modelList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/StorageFragment$Adapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/StorageFragment$Adapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    const/4 p1, 0x2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/StorageFragment$Adapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string p2, "getView(...)"

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/widget/ListAdapter;
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
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->CACHE_TAG:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    const/4 p4, 0x0

    .line 9
    .line 10
    const-string p5, "list"

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getList$p(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p4, p3

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    check-cast p2, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/narvii/prefs/StorageFragment;->access$cleanCache(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V

    .line 40
    return v0

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->ASSETS_TAG:Lcom/narvii/util/Tag;

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const-class p1, Lcom/narvii/prefs/AssetsStorageFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    .line 57
    .line 58
    const/16 p3, 0x2711

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p1, p3}, Lcom/narvii/prefs/StorageFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 62
    return v0

    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->DRAFT_TAG:Lcom/narvii/util/Tag;

    .line 65
    .line 66
    .line 67
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$Adapter;->this$0:Lcom/narvii/prefs/StorageFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getList$p(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-static {p5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object p4, p2

    .line 84
    :goto_1
    const/4 p2, 0x2

    .line 85
    .line 86
    .line 87
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    check-cast p2, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/narvii/prefs/StorageFragment$StorageModel;->getStorageSize()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lcom/narvii/prefs/StorageFragment;->access$cleanDrafts(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V

    .line 98
    return v0

    .line 99
    :cond_4
    return p2
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
