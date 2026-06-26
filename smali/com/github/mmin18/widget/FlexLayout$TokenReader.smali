.class Lcom/github/mmin18/widget/FlexLayout$TokenReader;
.super Ljava/lang/Object;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenReader"
.end annotation


# instance fields
.field private chars:[C

.field private from:Ljava/lang/String;

.field private i:I

.field private n:I

.field private orig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    .line 1336
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->chars:[C

    .line 1337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->n:I

    const/4 p1, 0x0

    .line 1338
    iput p1, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    .line 1339
    iput-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    return-void
.end method

.method private parseDimen(Landroid/content/Context;Ljava/lang/StringBuilder;I)F
    .locals 6

    const-string v0, ", "

    const-string v1, "="

    const/4 v2, -0x1

    if-eq p3, v2, :cond_4

    const/4 v2, 0x1

    .line 1514
    invoke-virtual {p2, v2, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr p3, v2

    .line 1515
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "dimen"

    .line 1517
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "unknown identifier "

    if-eqz v4, :cond_0

    .line 1518
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v4, "android:dimen"

    .line 1519
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "android"

    .line 1524
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_2

    .line 1526
    sget-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 1527
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported in AndroidStudio Preview, "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1529
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1532
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1

    .line 1522
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1512
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown token "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseStr(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/Object;
    .locals 11

    const-string/jumbo v0, "unknown token "

    const-string v1, "="

    const-string v2, ", "

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p3, v4, :cond_2

    .line 1441
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1442
    sget-object p2, Lcom/github/mmin18/widget/FlexLayout;->OPS:[Lcom/github/mmin18/widget/FlexLayout$Operator;

    array-length p3, p2

    :goto_0
    if-ge v3, p3, :cond_1

    aget-object v4, p2, v3

    .line 1443
    iget-object v5, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->op:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1447
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1449
    :cond_2
    invoke-virtual {p2, v3, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr p3, v5

    .line 1450
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "this"

    .line 1452
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_3
    const-string/jumbo p3, "prev"

    .line 1454
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    goto/16 :goto_2

    :cond_4
    const-string p3, "next"

    .line 1456
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p1, 0x2

    goto :goto_2

    :cond_5
    const-string/jumbo p3, "parent"

    .line 1458
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p1, 0x3

    goto :goto_2

    :cond_6
    const-string/jumbo p3, "screen"

    .line 1460
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p1, 0x4

    goto :goto_2

    :cond_7
    const-string p3, "android:"

    .line 1464
    invoke-virtual {v4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const-string v9, "id"

    if-eqz p3, :cond_8

    .line 1465
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {v4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const-string v10, "android"

    invoke-virtual {p1, p3, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 1467
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, v9, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-nez p1, :cond_a

    .line 1470
    sget-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    if-eqz p1, :cond_9

    .line 1472
    invoke-static {v4}, Lcom/github/mmin18/widget/FlexLayout;->getEditModeId(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    .line 1474
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown identifier "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    const-string p3, "left"

    .line 1481
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    goto/16 :goto_3

    :cond_b
    const-string/jumbo p3, "top"

    .line 1483
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const-string/jumbo p3, "right"

    .line 1485
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    const/4 v3, 0x2

    goto :goto_3

    :cond_d
    const-string p3, "bottom"

    .line 1487
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    const/4 v3, 0x3

    goto :goto_3

    :cond_e
    const-string p3, "centerX"

    .line 1489
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    const/4 v3, 0x4

    goto :goto_3

    :cond_f
    const-string p3, "centerY"

    .line 1491
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    const/4 v3, 0x5

    goto :goto_3

    :cond_10
    const-string/jumbo p3, "width"

    .line 1493
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    const/4 v3, 0x6

    goto :goto_3

    :cond_11
    const-string p3, "height"

    .line 1495
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    const/4 v3, 0x7

    goto :goto_3

    :cond_12
    const-string/jumbo p3, "visible"

    .line 1497
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    const/16 v3, 0xa

    goto :goto_3

    :cond_13
    const-string p3, "gone"

    .line 1499
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    const/16 v3, 0xb

    goto :goto_3

    :cond_14
    const-string/jumbo p3, "tag"

    .line 1501
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    const/16 v3, 0xf

    .line 1506
    :goto_3
    new-instance p2, Lcom/github/mmin18/widget/FlexLayout$Ref;

    invoke-direct {p2, p1, v3}, Lcom/github/mmin18/widget/FlexLayout$Ref;-><init>(II)V

    return-object p2

    .line 1504
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public readToken(Landroid/content/Context;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 1351
    :goto_0
    iget v9, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    iget v10, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->n:I

    if-ge v9, v10, :cond_25

    .line 1352
    iget-object v10, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->chars:[C

    aget-char v9, v10, v9

    const/16 v11, 0x41

    const/16 v12, 0x7a

    const/16 v13, 0x5f

    const/16 v14, 0x61

    const/16 v15, 0x2e

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v10, 0x1

    if-nez v4, :cond_12

    if-nez v5, :cond_12

    if-nez v6, :cond_12

    if-lt v9, v2, :cond_0

    if-le v9, v3, :cond_1

    :cond_0
    if-ne v9, v15, :cond_3

    .line 1355
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v4, v2

    :cond_2
    :goto_1
    const/16 v16, -0x1

    goto/16 :goto_9

    :cond_3
    const/16 v2, 0x20

    if-eq v9, v2, :cond_2

    const/16 v2, 0x9

    if-ne v9, v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x40

    if-ne v9, v2, :cond_5

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1360
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v5, v2

    goto :goto_1

    :cond_5
    if-lt v9, v14, :cond_6

    if-le v9, v12, :cond_11

    :cond_6
    if-eq v9, v13, :cond_11

    if-lt v9, v11, :cond_7

    const/16 v2, 0x5a

    if-gt v9, v2, :cond_7

    goto/16 :goto_4

    .line 1366
    :cond_7
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/lit8 v2, v1, 0x1

    iget v3, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->n:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_8

    iget-object v2, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->chars:[C

    add-int/2addr v1, v10

    aget-char v1, v2, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_c

    if-ne v9, v2, :cond_9

    .line 1369
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    .line 1370
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    return-object v1

    :cond_9
    const/16 v1, 0x21

    if-ne v9, v1, :cond_a

    .line 1372
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    .line 1373
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_NOT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    return-object v1

    :cond_a
    const/16 v1, 0x3c

    if-ne v9, v1, :cond_b

    .line 1375
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    .line 1376
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_LT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    return-object v1

    :cond_b
    const/16 v1, 0x3e

    if-ne v9, v1, :cond_e

    .line 1378
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    .line 1379
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_GT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    return-object v1

    :cond_c
    const/16 v2, 0x26

    if-ne v9, v2, :cond_d

    const/16 v2, 0x26

    if-ne v1, v2, :cond_d

    .line 1382
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    .line 1383
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->LOG_AND:Lcom/github/mmin18/widget/FlexLayout$Operator;

    return-object v1

    :cond_d
    const/16 v2, 0x7c

    if-ne v9, v2, :cond_e

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_e

    .line 1385
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    .line 1386
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->LOG_OR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    return-object v1

    .line 1388
    :cond_e
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->OPS:[Lcom/github/mmin18/widget/FlexLayout$Operator;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_10

    aget-object v5, v1, v3

    .line 1389
    iget-object v6, v5, Lcom/github/mmin18/widget/FlexLayout$Operator;->op:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_f

    iget-object v6, v5, Lcom/github/mmin18/widget/FlexLayout$Operator;->op:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_f

    .line 1390
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    return-object v5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1394
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->from:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->orig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1362
    :cond_11
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v6, v2

    goto/16 :goto_1

    :cond_12
    if-eqz v4, :cond_16

    if-lt v9, v2, :cond_13

    if-le v9, v3, :cond_14

    :cond_13
    if-ne v9, v15, :cond_15

    .line 1398
    :cond_14
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1400
    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_16
    const/16 v10, 0x3a

    if-eqz v5, :cond_1e

    if-lt v9, v2, :cond_18

    if-le v9, v3, :cond_17

    goto :goto_6

    :cond_17
    :goto_5
    const/4 v2, -0x1

    goto :goto_7

    :cond_18
    :goto_6
    if-lt v9, v14, :cond_19

    if-le v9, v12, :cond_17

    :cond_19
    if-eq v9, v13, :cond_17

    if-lt v9, v11, :cond_1a

    const/16 v2, 0x5a

    if-gt v9, v2, :cond_1a

    goto :goto_5

    :cond_1a
    const/16 v2, 0x2f

    if-ne v9, v2, :cond_1b

    const/4 v2, -0x1

    if-ne v7, v2, :cond_1c

    .line 1406
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1407
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v3

    goto/16 :goto_1

    :cond_1b
    const/4 v2, -0x1

    :cond_1c
    if-ne v9, v10, :cond_1d

    .line 1408
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "@android"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1409
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1411
    :cond_1d
    invoke-direct {v0, v1, v5, v7}, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->parseDimen(Landroid/content/Context;Ljava/lang/StringBuilder;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 1404
    :goto_7
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1e
    const/16 v16, -0x1

    if-lt v9, v2, :cond_1f

    if-le v9, v3, :cond_24

    :cond_1f
    if-lt v9, v14, :cond_20

    if-le v9, v12, :cond_24

    :cond_20
    if-eq v9, v13, :cond_24

    if-lt v9, v11, :cond_21

    const/16 v2, 0x5a

    if-gt v9, v2, :cond_21

    goto :goto_8

    :cond_21
    if-ne v9, v15, :cond_22

    .line 1417
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1418
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v2

    goto :goto_9

    :cond_22
    if-ne v9, v10, :cond_23

    .line 1419
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1420
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1422
    :cond_23
    invoke-direct {v0, v1, v6, v8}, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->parseStr(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1415
    :cond_24
    :goto_8
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1425
    :goto_9
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->i:I

    goto/16 :goto_0

    :cond_25
    if-eqz v4, :cond_26

    .line 1428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_26
    if-eqz v5, :cond_27

    .line 1431
    invoke-direct {v0, v1, v5, v7}, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->parseDimen(Landroid/content/Context;Ljava/lang/StringBuilder;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_27
    if-eqz v6, :cond_28

    .line 1434
    invoke-direct {v0, v1, v6, v8}, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->parseStr(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method
