.class public Lcom/narvii/headlines/category/HeadLineChannel;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    const-string v2, "hot"

    .line 3
    .line 4
    new-instance v6, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    const v4, 0x7f08049b

    .line 10
    .line 11
    .line 12
    const v5, 0x7f120819

    .line 13
    move-object v0, v6

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/narvii/headlines/category/HeadLineChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 17
    .line 18
    sput-object v6, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 21
    const/4 v8, 0x0

    .line 22
    .line 23
    sget-object v9, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    .line 24
    const/4 v10, 0x0

    .line 25
    .line 26
    .line 27
    const v11, 0x7f08049c

    .line 28
    .line 29
    .line 30
    const v12, 0x7f120d15

    .line 31
    move-object v7, v0

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v7 .. v12}, Lcom/narvii/headlines/category/HeadLineChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/headlines/category/HeadLineChannel;->title:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/headlines/category/HeadLineChannel;->iconResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/headlines/category/HeadLineChannel;->title:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/headlines/category/HeadLineChannel;->iconResId:I

    iput p5, p0, Lcom/narvii/headlines/category/HeadLineChannel;->titleResId:I

    return-void
.end method


# virtual methods
.method public getLocalEditIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f08049f

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 15
    .line 16
    if-ne p0, v0, :cond_1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0804a0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public getLocalIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_1
    :goto_0
    iget v0, p0, Lcom/narvii/headlines/category/HeadLineChannel;->iconResId:I

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getLocalTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/headlines/category/HeadLineChannel;->titleResId:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public isLocalChannel()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_HOT_ID:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method
