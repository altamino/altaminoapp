.class public final Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter$ipc$1;
.super Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
.source "GlobalChatsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;-><init>(Lcom/narvii/chat/global/GlobalChatsFragment;Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
        "Lcom/narvii/chat/global/GlobalChatThread;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    if-eqz p2, :cond_0

    .line 195
    iget-object v0, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/chat/global/GlobalChatThread;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/chat/global/GlobalChatThread;

    iget-object v0, v0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    check-cast p2, Lcom/narvii/chat/global/GlobalChatThread;

    iget p2, p2, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "objectNdcId"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_1
    return-void
.end method
