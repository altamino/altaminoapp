.class public Lcom/narvii/headlines/category/HeadLineChannel;
.super Ljava/lang/Object;
.source "HeadLineChannel.java"


# static fields
.field public static final CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

.field public static final CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

.field public static CHANNEL_HOT_ID:Ljava/lang/String; = "hot"

.field public static CHANNEL_MY_AMINO_ID:Ljava/lang/String; = "my-aminos"


# instance fields
.field public channelId:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconResId:I

.field public title:Ljava/lang/String;

.field public titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 18
    new-instance v6, Lcom/narvii/headlines/category/HeadLineChannel;

    sget-object v2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_HOT_ID:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const v4, 0x7f080382

    const v5, 0x7f0f076a

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/narvii/headlines/category/HeadLineChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v6, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 20
    new-instance v0, Lcom/narvii/headlines/category/HeadLineChannel;

    sget-object v9, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const v11, 0x7f080383

    const v12, 0x7f0f0bea

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/narvii/headlines/category/HeadLineChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/narvii/headlines/category/HeadLineChannel;->title:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/narvii/headlines/category/HeadLineChannel;->iconResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/narvii/headlines/category/HeadLineChannel;->title:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/narvii/headlines/category/HeadLineChannel;->iconResId:I

    .line 46
    iput p5, p0, Lcom/narvii/headlines/category/HeadLineChannel;->titleResId:I

    return-void
.end method


# virtual methods
.method public getLocalEditIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 57
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    if-ne p0, v0, :cond_0

    const v0, 0x7f080386

    .line 58
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    if-ne p0, v0, :cond_1

    const v0, 0x7f080387

    .line 61
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 50
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_1
    :goto_0
    iget v0, p0, Lcom/narvii/headlines/category/HeadLineChannel;->iconResId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getLocalTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/narvii/headlines/category/HeadLineChannel;->titleResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLocalChannel()Z
    .locals 2

    .line 75
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_HOT_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
