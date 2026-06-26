.class public final Lcom/narvii/chat/video/utils/VVChatLogHelper;
.super Ljava/lang/Object;
.source "VVChatLogHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVVChatLogHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VVChatLogHelper.kt\ncom/narvii/chat/video/utils/VVChatLogHelper\n*L\n1#1,80:1\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final logJoinsActiveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public final logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public final logMinimizeLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public final logStartLiveChannel(IZLjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public final logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 0

    return-void
.end method

.method public final statChannelType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "Screening Room"

    return-object p1

    :cond_1
    const-string p1, "Video"

    return-object p1

    :cond_2
    const-string p1, "Avatar"

    return-object p1

    :cond_3
    const-string p1, "Voice"

    return-object p1
.end method
