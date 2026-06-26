.class public Lcom/narvii/logging/PageSession;
.super Ljava/lang/Object;
.source "PageSession.java"


# instance fields
.field public lastSessionPagePauseTime:J

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/narvii/logging/PageSession;->resetSessionId()V

    return-void
.end method


# virtual methods
.method public resetSessionId()V
    .locals 1

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/logging/PageSession;->sessionId:Ljava/lang/String;

    return-void
.end method
