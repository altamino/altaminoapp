.class public final Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter$ipc$1;
.super Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
.source "SourceFile"


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
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0be6

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    .line 7
    return-void
.end method


# virtual methods
.method public completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/logging/ObjectInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/LogEvent$Builder;",
            "Lcom/narvii/logging/ObjectInfo<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object v0, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/global/GlobalChatThread;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v0, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/chat/global/GlobalChatThread;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalChatThread;->chatThreadId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    .line 37
    .line 38
    check-cast p2, Lcom/narvii/chat/global/GlobalChatThread;

    .line 39
    .line 40
    iget p2, p2, Lcom/narvii/chat/global/GlobalChatThread;->communityId:I

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    const-string v0, "objectNdcId"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 50
    :cond_1
    return-void
.end method
