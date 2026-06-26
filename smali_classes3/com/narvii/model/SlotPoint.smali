.class public Lcom/narvii/model/SlotPoint;
.super Ljava/lang/Object;
.source "SlotPoint.java"


# static fields
.field public static final ALIGN_BOTTOM_LEAD:I = 0x3

.field public static final ALIGN_BOTTOM_TRAIL:I = 0x4

.field public static final ALIGN_TOP_LEAD:I = 0x1

.field public static final ALIGN_TOP_TRAIL:I = 0x2

.field private static final PATTERN:Ljava/lang/String; = "x(\\d+)y(\\d+)"


# instance fields
.field public align:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/narvii/model/SlotPoint;->x:I

    .line 36
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/narvii/model/SlotPoint;->y:I

    return-void
.end method

.method public static getPoint(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "x(\\d+)y(\\d+)"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 52
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSlotKey(III)Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "y"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLegalPoint(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/SlotPoint;

    if-eqz v2, :cond_2

    .line 74
    check-cast p1, Lcom/narvii/model/SlotPoint;

    .line 75
    iget v2, p1, Lcom/narvii/model/SlotPoint;->x:I

    iget v3, p0, Lcom/narvii/model/SlotPoint;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/SlotPoint;->y:I

    iget v3, p0, Lcom/narvii/model/SlotPoint;->y:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/narvii/model/SlotPoint;->align:I

    iget v2, p0, Lcom/narvii/model/SlotPoint;->align:I

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getSlotKey()Ljava/lang/String;
    .locals 3

    .line 40
    iget v0, p0, Lcom/narvii/model/SlotPoint;->align:I

    iget v1, p0, Lcom/narvii/model/SlotPoint;->x:I

    iget v2, p0, Lcom/narvii/model/SlotPoint;->y:I

    invoke-static {v0, v1, v2}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLegalPoint()Z
    .locals 1

    .line 58
    iget v0, p0, Lcom/narvii/model/SlotPoint;->align:I

    invoke-static {v0}, Lcom/narvii/model/SlotPoint;->isLegalPoint(I)Z

    move-result v0

    return v0
.end method
