.class public Lcom/narvii/logging/PageSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lastSessionPagePauseTime:J

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/logging/PageSession;->resetSessionId()V

    .line 7
    return-void
.end method


# virtual methods
.method public resetSessionId()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/logging/PageSession;->sessionId:Ljava/lang/String;

    .line 11
    return-void
.end method
