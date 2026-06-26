.class public final Lcom/narvii/chat/core/ChatService$Companion;
.super Ljava/lang/Object;
.source "ChatService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/core/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateClientRefId()I
    .locals 4

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xa

    int-to-long v2, v2

    div-long/2addr v0, v2

    const v2, 0x3b9aca00

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
