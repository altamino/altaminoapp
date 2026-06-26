.class public Lcom/narvii/flag/FlagTag;
.super Ljava/lang/Object;
.source "FlagTag.java"


# instance fields
.field private containIcon:Z

.field private flagContent:Ljava/lang/String;

.field private flgType:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/narvii/flag/FlagTag;->containIcon:Z

    .line 23
    iput p2, p0, Lcom/narvii/flag/FlagTag;->flgType:I

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/narvii/flag/FlagTag;->containIcon:Z

    const/16 p1, 0x3e7

    .line 29
    iput p1, p0, Lcom/narvii/flag/FlagTag;->flgType:I

    .line 30
    iput-object p2, p0, Lcom/narvii/flag/FlagTag;->flagContent:Ljava/lang/String;

    return-void
.end method

.method public static getFlagTagList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/flag/FlagTag;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 54
    new-instance v2, Lcom/narvii/flag/FlagTag;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/narvii/flag/FlagTag;-><init>(ZI)V

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getBackColor()I
    .locals 1

    const/16 v0, 0x30

    .line 41
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getFlagContentStrId(I)I
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const p1, 0x7f0f0d13

    return p1

    :pswitch_0
    const p1, 0x7f0f06e2

    return p1

    :pswitch_1
    const p1, 0x7f0f06d7

    return p1

    :pswitch_2
    const p1, 0x7f0f06f2

    return p1

    :pswitch_3
    const p1, 0x7f0f06d8

    return p1

    :pswitch_4
    const p1, 0x7f0f06fe

    return p1

    :pswitch_5
    const p1, 0x7f0f06f4

    return p1

    :pswitch_6
    const p1, 0x7f0f06d4

    return p1

    :pswitch_7
    const p1, 0x7f0f06f3

    return p1

    :cond_0
    const p1, 0x7f0f06d3

    return p1

    :cond_1
    const p1, 0x7f0f06d0

    return p1

    :cond_2
    const p1, 0x7f0f06cd

    return p1

    :cond_3
    const p1, 0x7f0f06f7

    return p1

    :cond_4
    const p1, 0x7f0f06d9

    return p1

    :cond_5
    const p1, 0x7f0f06c7

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 34
    iget v0, p0, Lcom/narvii/flag/FlagTag;->flgType:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/FlagTag;->flagContent:Ljava/lang/String;

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/flag/FlagTag;->getFlagContentStrId(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isContainIcon()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/narvii/flag/FlagTag;->containIcon:Z

    return v0
.end method
