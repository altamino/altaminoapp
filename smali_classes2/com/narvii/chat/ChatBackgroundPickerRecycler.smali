.class public Lcom/narvii/chat/ChatBackgroundPickerRecycler;
.super Lcom/narvii/widget/recycleview/NVRecyclerView;
.source "ChatBackgroundPickerRecycler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundViewHolder;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;,
        Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;
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

.field private final layout:Landroid/support/v7/widget/LinearLayoutManager;

.field private listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

.field private shownPicker:Z

.field private userUploaded:Lcom/narvii/model/Media;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const/4 v2, 0x0

    const-string v3, "http://static.narvii.com/default-chat-room-background/1_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/2_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/3_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/4_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/5_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/6_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/7_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/8_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/9_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    new-instance v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    const-string v3, "http://static.narvii.com/default-chat-room-background/10_00.png"

    invoke-direct {v1, v3, v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;-><init>(Ljava/lang/String;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    sget-object v0, Lcom/narvii/amino/R$styleable;->ChatBackgroundPickerRecycler:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 74
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->shownPicker:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    new-instance p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;Lcom/narvii/chat/ChatBackgroundPickerRecycler$1;)V

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 78
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->layout:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->layout:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 80
    new-instance p1, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, p0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;-><init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->shownPicker:Z

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->userUploaded:Lcom/narvii/model/Media;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/model/Media;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->currentSelect:Lcom/narvii/model/Media;

    return-object p0
.end method

.method private getPositionInList(Lcom/narvii/model/Media;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 153
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/4 v1, 0x0

    .line 154
    :goto_0
    sget-object v2, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 155
    sget-object v2, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->defaultBackgrounds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    .line 156
    invoke-static {v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->access$200(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->access$200(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_1
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private themeBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 179
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 180
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v3, "config"

    .line 181
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    const-string v4, "themePack"

    .line 182
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 183
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    sget-object v4, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private themeColor()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "config"

    .line 191
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v2, "themePack"

    .line 192
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 193
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 195
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 196
    aget v2, v1, v0

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    aput v2, v1, v0

    .line 197
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 198
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public getCurrentSelect()Lcom/narvii/model/Media;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->currentSelect:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public getDefaultBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->themeBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->themeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 89
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 90
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    if-gez v0, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    if-eqz p1, :cond_5

    .line 97
    invoke-interface {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onStartPick()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 100
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 101
    invoke-interface {p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onSelectBackground(Lcom/narvii/model/Media;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 104
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    if-eqz p1, :cond_5

    .line 105
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->userUploaded:Lcom/narvii/model/Media;

    invoke-interface {p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onSelectBackground(Lcom/narvii/model/Media;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    new-array v1, v2, [I

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 111
    aget p1, v1, p1

    div-int/2addr v3, v2

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    if-le p1, v1, :cond_4

    .line 112
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getBackgroundEntryByPosition(I)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    if-eqz v0, :cond_5

    .line 116
    invoke-static {p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;->access$200(Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundEntry;)Lcom/narvii/model/Media;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;->onSelectBackground(Lcom/narvii/model/Media;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p1, "FilterSelectorRecyclerView click with NO_POSITION"

    .line 91
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentSelect(Lcom/narvii/model/Media;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;Z)V

    return-void
.end method

.method public setCurrentSelect(Lcom/narvii/model/Media;Z)V
    .locals 2

    .line 130
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->currentSelect:Lcom/narvii/model/Media;

    .line 132
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getPositionInList(Lcom/narvii/model/Media;)I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->userUploaded:Lcom/narvii/model/Media;

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->adapter:Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public setOnSelectBackgroundListener(Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->listener:Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;

    return-void
.end method
