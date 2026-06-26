.class public Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/meishe/cafconvertor/webpcoder/WebpImageView;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;->c:I

    return-void
.end method

.method private static a(Landroid/app/Activity;)I
    .locals 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/meishe/cafconvertor/webpcoder/NvsDecodeF;->nvsDecoder:Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;

    invoke-static {p0}, Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;->a(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p0}, Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;->a(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setLayout(II)V

    sget p1, Lcom/meishe/cafconvertor/R$layout;->activity_nvs_decoder:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/meishe/cafconvertor/R$id;->webp_image_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;

    iput-object p1, p0, Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;->a:Lcom/meishe/cafconvertor/webpcoder/WebpImageView;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/meishe/cafconvertor/webpcoder/NvsDecoder;->a:Lcom/meishe/cafconvertor/webpcoder/WebpImageView;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/webpcoder/WebpImageView;->destroy()V

    return-void
.end method
