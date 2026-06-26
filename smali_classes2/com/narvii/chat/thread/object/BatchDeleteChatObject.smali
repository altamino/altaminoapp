.class public final Lcom/narvii/chat/thread/object/BatchDeleteChatObject;
.super Lcom/narvii/model/NVObject;
.source "BatchDeleteChatObject.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBatchDeleteChatObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BatchDeleteChatObject.kt\ncom/narvii/chat/thread/object/BatchDeleteChatObject\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,28:1\n1596#2,3:29\n*E\n*S KotlinDebug\n*F\n+ 1 BatchDeleteChatObject.kt\ncom/narvii/chat/thread/object/BatchDeleteChatObject\n*L\n12#1,3:29\n*E\n"
.end annotation


# instance fields
.field private ndcId:I

.field private selectThreadIdsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNdcId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->ndcId:I

    return v0
.end method

.method public final getSelectThreadIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->selectThreadIdsList:Ljava/util/List;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->selectThreadIdsList:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 30
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_0

    const-string v2, ","

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final setNdcId(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->ndcId:I

    return-void
.end method

.method public final setSelectThreadIdsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->selectThreadIdsList:Ljava/util/List;

    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
