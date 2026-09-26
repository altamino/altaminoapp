.class public Lcom/narvii/flag/FlagTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private containIcon:Z

.field private flagContent:Ljava/lang/String;

.field private flgType:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/flag/FlagTag;->containIcon:Z

    iput p2, p0, Lcom/narvii/flag/FlagTag;->flgType:I

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/flag/FlagTag;->containIcon:Z

    const/16 p1, 0x3e7

    iput p1, p0, Lcom/narvii/flag/FlagTag;->flgType:I

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

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Integer;

    .line 26
    .line 27
    new-instance v2, Lcom/narvii/flag/FlagTag;

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3, v1}, Lcom/narvii/flag/FlagTag;-><init>(ZI)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getBackColor()I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x30

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 6
    move-result v0

    .line 7
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

    const p1, 0x7f120e39

    return p1

    :pswitch_0
    const p1, 0x7f12078b

    return p1

    :pswitch_1
    const p1, 0x7f120783

    return p1

    :pswitch_2
    const p1, 0x7f12079b

    return p1

    :pswitch_3
    const p1, 0x7f120784

    return p1

    :pswitch_4
    const p1, 0x7f1207a7

    return p1

    :pswitch_5
    const p1, 0x7f12079d

    return p1

    :pswitch_6
    const p1, 0x7f120780

    return p1

    :pswitch_7
    const p1, 0x7f12079c

    return p1

    :cond_0
    const p1, 0x7f12077f

    return p1

    :cond_1
    const p1, 0x7f12077c

    return p1

    :cond_2
    const p1, 0x7f120779

    return p1

    :cond_3
    const p1, 0x7f1207a0

    return p1

    :cond_4
    const p1, 0x7f120785

    return p1

    :cond_5
    const p1, 0x7f120773

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

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/flag/FlagTag;->flgType:I

    .line 3
    .line 4
    const/16 v1, 0x3e7

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/flag/FlagTag;->flagContent:Ljava/lang/String;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/flag/FlagTag;->getFlagContentStrId(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public isContainIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/flag/FlagTag;->containIcon:Z

    return v0
.end method
