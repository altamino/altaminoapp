.class public Lcom/narvii/chat/ChatBackgroundPickerRecycler;
.super Lcom/narvii/widget/recycleview/NVRecyclerView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;
    }
.end annotation


# static fields
.field private static defaultBackgrounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

.field private currentSelect:Lcom/narvii/model/Media;

.field private final layout:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

.field private shownPicker:Z

.field private userUploaded:Lcom/narvii/model/Media;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 10
    .line 11
    const-string v2, "http://static.altamino.top/default-chat-room-background/1_00.png"

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 23
    .line 24
    const-string v2, "http://static.altamino.top/default-chat-room-background/2_00.png"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 33
    .line 34
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 35
    .line 36
    const-string v2, "http://static.altamino.top/default-chat-room-background/3_00.png"

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 47
    .line 48
    const-string v2, "http://static.altamino.top/default-chat-room-background/4_00.png"

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 57
    .line 58
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 59
    .line 60
    const-string v2, "http://static.altamino.top/default-chat-room-background/5_00.png"

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 69
    .line 70
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 71
    .line 72
    const-string v2, "http://static.altamino.top/default-chat-room-background/6_00.png"

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 81
    .line 82
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 83
    .line 84
    const-string v2, "http://static.altamino.top/default-chat-room-background/7_00.png"

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 93
    .line 94
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 95
    .line 96
    const-string v2, "http://static.altamino.top/default-chat-room-background/8_00.png"

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 105
    .line 106
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 107
    .line 108
    const-string v2, "http://static.altamino.top/default-chat-room-background/9_00.png"

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 117
    .line 118
    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 119
    .line 120
    const-string v2, "http://static.altamino.top/default-chat-room-background/10_00.png"

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/d;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lcom/narvii/amino/R$styleable;->ChatBackgroundPickerRecycler:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->shownPicker:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Lcom/narvii/chat/c;)V

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->layout:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    new-instance p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->currentSelect:Lcom/narvii/model/Media;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->shownPicker:Z

    return p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->userUploaded:Lcom/narvii/model/Media;

    return-object p0
.end method

.method static bridge synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    return-object v0
.end method

.method private getPositionInList(Lcom/narvii/model/Media;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    sget-object v2, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v1, v2, :cond_3

    .line 16
    .line 17
    sget-object v2, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    const/4 v2, 0x0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    return v1

    .line 45
    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return v0
.end method

.method private themeBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27
    .line 28
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result v2

    .line 33
    .line 34
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .line 36
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result v1

    .line 41
    .line 42
    const-string v3, "config"

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 49
    .line 50
    const-string v4, "themePack"

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 60
    move-result v3

    .line 61
    .line 62
    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method private themeColor()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    const-string v1, "config"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 21
    .line 22
    const-string v2, "themePack"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x3

    .line 38
    .line 39
    new-array v1, v1, [F

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 43
    const/4 v0, 0x2

    .line 44
    .line 45
    aget v2, v1, v0

    .line 46
    .line 47
    .line 48
    const v3, 0x3f59999a    # 0.85f

    .line 49
    mul-float/2addr v2, v3

    .line 50
    .line 51
    aput v2, v1, v0

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 55
    move-result v0

    .line 56
    .line 57
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public getCurrentSelect()Lcom/narvii/model/Media;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->currentSelect:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public getDefaultBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->themeBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->themeColor()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemCount()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-ge v0, v1, :cond_6

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemViewType(I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    .line 29
    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onStartPick()V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onSelectBackground(Lcom/narvii/model/Media;)V

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x3

    .line 48
    .line 49
    if-ne v1, v2, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->userUploaded:Lcom/narvii/model/Media;

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onSelectBackground(Lcom/narvii/model/Media;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v2, 0x2

    .line 61
    .line 62
    if-ne v1, v2, :cond_5

    .line 63
    .line 64
    new-array v1, v2, [I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 68
    move-result v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 72
    const/4 p1, 0x0

    .line 73
    .line 74
    aget p1, v1, p1

    .line 75
    div-int/2addr v3, v2

    .line 76
    add-int/2addr p1, v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 84
    move-result v1

    .line 85
    .line 86
    if-le p1, v1, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getBackgroundEntryByPosition(I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->a(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onSelectBackground(Lcom/narvii/model/Media;)V

    .line 107
    :cond_5
    :goto_0
    return-void

    .line 108
    .line 109
    :cond_6
    :goto_1
    const-string p1, "FilterSelectorRecyclerView click with NO_POSITION"

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setCurrentSelect(Lcom/narvii/model/Media;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;Z)V

    return-void
.end method

.method public setCurrentSelect(Lcom/narvii/model/Media;Z)V
    .locals 2

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->currentSelect:Lcom/narvii/model/Media;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getPositionInList(Lcom/narvii/model/Media;)I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->userUploaded:Lcom/narvii/model/Media;

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public setOnSelectBackgroundListener(Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    return-void
.end method
