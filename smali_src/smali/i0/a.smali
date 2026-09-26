.class public Li0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/airbnb/lottie/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/i<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/airbnb/lottie/model/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/b;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/airbnb/lottie/model/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/airbnb/lottie/model/i;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Li0/a;->tempPair:Lcom/airbnb/lottie/model/i;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Li0/a;->fontMap:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Li0/a;->fontFamilies:Ljava/util/Map;

    .line 25
    .line 26
    const-string v0, ".ttf"

    .line 27
    .line 28
    iput-object v0, p0, Li0/a;->defaultFontFileExtension:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Li0/a;->delegate:Lcom/airbnb/lottie/b;

    .line 31
    .line 32
    instance-of p2, p1, Landroid/view/View;

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    const-string p1, "LOTTIE"

    .line 37
    .line 38
    const-string p2, "LottieDrawable must be inside of a view for images to work."

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 p1, 0x0

    .line 43
    .line 44
    iput-object p1, p0, Li0/a;->assetManager:Landroid/content/res/AssetManager;

    .line 45
    return-void

    .line 46
    .line 47
    :cond_0
    check-cast p1, Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iput-object p1, p0, Li0/a;->assetManager:Landroid/content/res/AssetManager;

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Li0/a;->fontFamilies:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Typeface;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Li0/a;->delegate:Lcom/airbnb/lottie/b;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Li0/a;->delegate:Lcom/airbnb/lottie/b;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Li0/a;->assetManager:Landroid/content/res/AssetManager;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    :cond_2
    if-nez v0, :cond_3

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v1, "fonts/"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v1, p0, Li0/a;->defaultFontFileExtension:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v1, p0, Li0/a;->assetManager:Landroid/content/res/AssetManager;

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    :cond_3
    iget-object v1, p0, Li0/a;->fontFamilies:Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method private d(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    .line 2
    const-string v0, "Italic"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-string v1, "Bold"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    const/4 p2, 0x3

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    const/4 p2, 0x2

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    const/4 p2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-ne v0, p2, :cond_3

    .line 34
    return-object p1

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Li0/a;->tempPair:Lcom/airbnb/lottie/model/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/model/i;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Li0/a;->fontMap:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v1, p0, Li0/a;->tempPair:Lcom/airbnb/lottie/model/i;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/graphics/Typeface;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p1}, Li0/a;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Li0/a;->d(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p0, Li0/a;->fontMap:Ljava/util/Map;

    .line 29
    .line 30
    iget-object v0, p0, Li0/a;->tempPair:Lcom/airbnb/lottie/model/i;

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object p1
.end method

.method public c(Lcom/airbnb/lottie/b;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Li0/a;->delegate:Lcom/airbnb/lottie/b;

    return-void
.end method
