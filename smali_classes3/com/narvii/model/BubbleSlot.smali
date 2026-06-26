.class public Lcom/narvii/model/BubbleSlot;
.super Ljava/lang/Object;
.source "BubbleSlot.java"


# instance fields
.field public align:I

.field public path:Ljava/lang/String;

.field public stickerId:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p2, p0, Lcom/narvii/model/BubbleSlot;->x:I

    .line 17
    iput p3, p0, Lcom/narvii/model/BubbleSlot;->y:I

    .line 18
    iput-object p1, p0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    return-void
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

    .line 35
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/BubbleSlot;

    if-eqz v2, :cond_2

    .line 36
    check-cast p1, Lcom/narvii/model/BubbleSlot;

    .line 37
    iget v2, p1, Lcom/narvii/model/BubbleSlot;->x:I

    iget v3, p0, Lcom/narvii/model/BubbleSlot;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/BubbleSlot;->y:I

    iget v3, p0, Lcom/narvii/model/BubbleSlot;->y:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/model/BubbleSlot;->align:I

    iget v3, p0, Lcom/narvii/model/BubbleSlot;->align:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 40
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/model/BubbleSlot;->stickerId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/BubbleSlot;->stickerId:Ljava/lang/String;

    .line 41
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
