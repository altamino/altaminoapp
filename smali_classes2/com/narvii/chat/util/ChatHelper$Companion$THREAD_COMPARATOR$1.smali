.class final Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;
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
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;

    invoke-direct {v0}, Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;-><init>()V

    sput-object v0, Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;->INSTANCE:Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatThread;)I
    .locals 4

    .line 67
    iget-boolean v0, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    iget-boolean v1, p2, Lcom/narvii/model/ChatThread;->isPinned:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 70
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    iget-object v1, p2, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isAllNullOrEqual(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    iget-object p2, p2, Lcom/narvii/model/ChatThread;->lastPinOperationTime:Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 73
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    iget-object p2, p2, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p1, Lcom/narvii/model/ChatThread;

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatHelper$Companion$THREAD_COMPARATOR$1;->compare(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatThread;)I

    move-result p1

    return p1
.end method
