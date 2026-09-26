.class final Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AssetsStorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AssetsAdapter"
.end annotation


# instance fields
.field private final FONTS_TAG:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final MUSIC_TAG:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final STICKER_TAG:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TEXT_TAG:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/prefs/AssetsStorageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/narvii/prefs/AssetsStorageFragment;
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
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
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
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/util/Tag;

    .line 20
    .line 21
    const-string p2, "music"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/util/Tag;

    .line 29
    .line 30
    const-string p2, "fonts"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/util/Tag;

    .line 38
    .line 39
    const-string p2, "text"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    .line 45
    .line 46
    new-instance p1, Lcom/narvii/util/Tag;

    .line 47
    .line 48
    const-string p2, "sticker"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    .line 54
    return-void
.end method

.method private final setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d02a8

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
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getTitle()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const p3, 0x7f0a0d1b

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
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    check-cast v1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSize()J

    .line 56
    move-result-wide v1

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/narvii/prefs/AssetsStorageFragment;->access$calculateSize(Lcom/narvii/prefs/AssetsStorageFragment;J)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    iget-object p3, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

    .line 66
    .line 67
    .line 68
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    const p3, 0x7f0a0cd4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 85
    const/4 v0, 0x4

    .line 86
    const/4 v1, 0x0

    .line 87
    .line 88
    if-eqz p1, :cond_0

    .line 89
    move v2, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move v2, v0

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    const p3, 0x7f0a0f2c

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object p3

    .line 102
    .line 103
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 104
    .line 105
    if-eqz p1, :cond_1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move v0, v1

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 119
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
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

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
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

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
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    :cond_4
    if-eqz p1, :cond_5

    .line 46
    .line 47
    sget-object v1, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    :cond_5
    if-eqz p1, :cond_6

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_6
    return-void
.end method

.method public final getModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->modelList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    const/4 p1, 0x2

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    const/4 p1, 0x3

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->setView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string p2, "getView(...)"

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
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
    if-eqz p5, :cond_3

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->MUSIC_TAG:Lcom/narvii/util/Tag;

    .line 5
    .line 6
    .line 7
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->FONTS_TAG:Lcom/narvii/util/Tag;

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->TEXT_TAG:Lcom/narvii/util/Tag;

    .line 35
    .line 36
    .line 37
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 43
    const/4 v1, 0x2

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->STICKER_TAG:Lcom/narvii/util/Tag;

    .line 50
    .line 51
    .line 52
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 58
    const/4 v1, 0x3

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 65
    move-result p1

    .line 66
    return p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
