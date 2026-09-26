.class public Lcom/narvii/model/BubbleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIRECTION_BOTTOM:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x3

.field public static final DIRECTION_TOP:I = 0x1

.field public static final ELEMENT_TYPE_BG:Ljava/lang/String; = "background"


# instance fields
.field public allowedSlots:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/SlotPoint;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/SlotPoint;",
            ">;"
        }
    .end annotation
.end field

.field public backgroundPath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "backgroundPath"
    .end annotation
.end field

.field public color:I
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$ColorDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$ColorSerializer;
    .end annotation
.end field

.field public contentInsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public coverImage:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public linkColor:I
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$ColorDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$ColorSerializer;
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public previewBackgroundUrl:Ljava/lang/String;

.field public slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/BubbleSlot;",
            ">;"
        }
    .end annotation
.end field

.field public templateId:Ljava/lang/String;

.field public version:I

.field public vertexInset:I

.field public zoomPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/model/BubbleInfo;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/BubbleInfo;

    .line 3
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BubbleInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    return-object v0
.end method

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
    instance-of v2, p1, Lcom/narvii/model/BubbleInfo;

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/model/BubbleInfo;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget-object v2, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 37
    .line 38
    iget-object v3, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    :cond_2
    move v0, v1

    .line 62
    :cond_3
    return v0
.end method

.method public getBubbleUploadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkColor()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/BubbleInfo;->linkColor:I

    return v0
.end method

.method public getPath(Lcom/narvii/model/SlotPoint;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/BubbleSlot;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "background"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/BubbleSlot;

    .line 5
    iget v2, v1, Lcom/narvii/model/BubbleSlot;->align:I

    iget v3, v1, Lcom/narvii/model/BubbleSlot;->x:I

    iget v4, v1, Lcom/narvii/model/BubbleSlot;->y:I

    invoke-static {v2, v3, v4}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, v1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSlotByPosition(Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/BubbleSlot;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/SlotPoint;->getSlotKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Ljava/lang/String;)Lcom/narvii/model/BubbleSlot;

    move-result-object p1

    return-object p1
.end method

.method public getSlotByPosition(Ljava/lang/String;)Lcom/narvii/model/BubbleSlot;
    .locals 6

    iget-object v0, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/BubbleSlot;

    .line 3
    iget v3, v2, Lcom/narvii/model/BubbleSlot;->align:I

    iget v4, v2, Lcom/narvii/model/BubbleSlot;->x:I

    iget v5, v2, Lcom/narvii/model/BubbleSlot;->y:I

    invoke-static {v3, v4, v5}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/BubbleInfo;->color:I

    return v0
.end method

.method public updateSlot(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    const-string p1, "BubbleService"

    .line 16
    .line 17
    .line 18
    const-string/jumbo p2, "the point is null"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/BubbleSlot;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/model/BubbleSlot;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/narvii/model/BubbleSlot;-><init>()V

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    :cond_2
    if-eqz p2, :cond_4

    .line 41
    .line 42
    iget v1, p1, Lcom/narvii/model/SlotPoint;->x:I

    .line 43
    .line 44
    iput v1, v0, Lcom/narvii/model/BubbleSlot;->x:I

    .line 45
    .line 46
    iget v1, p1, Lcom/narvii/model/SlotPoint;->y:I

    .line 47
    .line 48
    iput v1, v0, Lcom/narvii/model/BubbleSlot;->y:I

    .line 49
    .line 50
    iget p1, p1, Lcom/narvii/model/SlotPoint;->align:I

    .line 51
    .line 52
    iput p1, v0, Lcom/narvii/model/BubbleSlot;->align:I

    .line 53
    .line 54
    iget-object p1, p2, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p1, v0, Lcom/narvii/model/BubbleSlot;->stickerId:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p3, :cond_3

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/model/Sticker;->getStickerPath()Ljava/lang/String;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    :goto_0
    iput-object p3, v0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_4
    iget-object p1, p0, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    :goto_1
    return-void
.end method
