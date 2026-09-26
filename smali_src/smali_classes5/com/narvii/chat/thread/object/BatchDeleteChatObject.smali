.class public final Lcom/narvii/chat/thread/object/BatchDeleteChatObject;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBatchDeleteChatObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BatchDeleteChatObject.kt\ncom/narvii/chat/thread/object/BatchDeleteChatObject\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,28:1\n1864#2,3:29\n*S KotlinDebug\n*F\n+ 1 BatchDeleteChatObject.kt\ncom/narvii/chat/thread/object/BatchDeleteChatObject\n*L\n12#1:29,3\n*E\n"
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final getNdcId()I
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->selectThreadIdsList:Ljava/util/List;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->selectThreadIdsList:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast v1, Ljava/lang/Iterable;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    add-int/lit8 v4, v2, 0x1

    .line 29
    .line 30
    if-gez v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 34
    .line 35
    :cond_0
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    const-string v2, ","

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move v2, v4

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "toString(...)"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final setNdcId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->ndcId:I

    return-void
.end method

.method public final setSelectThreadIdsList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method
