.class final Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;
.super Ljava/lang/Object;
.source "ChatHelper.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatHelper;->appendNewMessageWithSort(Ljava/util/List;Lcom/narvii/model/ChatMessage;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/model/ChatMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;

    invoke-direct {v0}, Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;-><init>()V

    sput-object v0, Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;->INSTANCE:Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I
    .locals 3

    .line 434
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v2, p2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-nez v2, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 439
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/narvii/model/ChatMessage;

    check-cast p2, Lcom/narvii/model/ChatMessage;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper$appendNewMessageWithSort$insertIndex$1;->compare(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I

    move-result p1

    return p1
.end method
