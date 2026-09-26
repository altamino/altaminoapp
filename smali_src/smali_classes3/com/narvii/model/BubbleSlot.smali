.class public Lcom/narvii/model/BubbleSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public align:I

.field public path:Ljava/lang/String;

.field public stickerId:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/narvii/model/BubbleSlot;->x:I

    iput p3, p0, Lcom/narvii/model/BubbleSlot;->y:I

    iput-object p1, p0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/BubbleSlot;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/model/BubbleSlot;

    .line 15
    .line 16
    iget v2, p1, Lcom/narvii/model/BubbleSlot;->x:I

    .line 17
    .line 18
    iget v3, p0, Lcom/narvii/model/BubbleSlot;->x:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_2

    .line 21
    .line 22
    iget v2, p1, Lcom/narvii/model/BubbleSlot;->y:I

    .line 23
    .line 24
    iget v3, p0, Lcom/narvii/model/BubbleSlot;->y:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget v2, p1, Lcom/narvii/model/BubbleSlot;->align:I

    .line 29
    .line 30
    iget v3, p0, Lcom/narvii/model/BubbleSlot;->align:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/model/BubbleSlot;->stickerId:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/model/BubbleSlot;->stickerId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    move v0, v1

    .line 54
    :cond_2
    return v0
.end method
