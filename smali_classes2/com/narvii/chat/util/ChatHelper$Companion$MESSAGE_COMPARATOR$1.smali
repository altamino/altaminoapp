.class final Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;
.super Ljava/lang/Object;
.source "ChatHelper.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/util/ChatHelper;
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
.field public static final INSTANCE:Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;

    invoke-direct {v0}, Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;-><init>()V

    sput-object v0, Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;->INSTANCE:Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I
    .locals 2

    .line 60
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isAllNullOrEqual(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p1, Lcom/narvii/model/ChatMessage;

    check-cast p2, Lcom/narvii/model/ChatMessage;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper$Companion$MESSAGE_COMPARATOR$1;->compare(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)I

    move-result p1

    return p1
.end method
