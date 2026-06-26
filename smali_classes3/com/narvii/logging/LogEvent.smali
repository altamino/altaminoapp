.class public Lcom/narvii/logging/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/logging/LogEvent$Builder;
    }
.end annotation


# static fields
.field public static final OBJECT_NDCID:Ljava/lang/String; = "objectNdcId"


# instance fields
.field public actSemantic:Ljava/lang/String;

.field public actType:Ljava/lang/String;

.field public allowNoPage:Z

.field public eventArea:Ljava/lang/String;

.field public eventId:Ljava/lang/String;

.field public eventPage:Ljava/lang/String;

.field public eventSubArea:Ljava/lang/String;

.field public eventType:Ljava/lang/String;

.field public extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public ndcId:I

.field public nvObject:Lcom/narvii/model/NVObject;

.field public objectId:Ljava/lang/String;

.field public objectSubType:Ljava/lang/String;

.field public objectType:Ljava/lang/String;

.field public onlyInternalLogging:Z

.field public pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

.field public parentId:Ljava/lang/String;

.field public pvId:Ljava/lang/String;

.field public reqId:Ljava/lang/String;

.field public screenPos:I

.field public sendToThirdParty:Z

.field private sent:Z

.field public strategyInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/narvii/logging/LogEvent;->screenPos:I

    .line 44
    iput v0, p0, Lcom/narvii/logging/LogEvent;->ndcId:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/narvii/logging/LogEvent;->allowNoPage:Z

    .line 49
    iput-boolean v0, p0, Lcom/narvii/logging/LogEvent;->sendToThirdParty:Z

    .line 50
    iput-boolean v0, p0, Lcom/narvii/logging/LogEvent;->onlyInternalLogging:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/logging/LogEvent;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/narvii/logging/LogEvent;->sent:Z

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/logging/LogEvent;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/narvii/logging/LogEvent;->sent:Z

    return p1
.end method

.method public static builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 401
    new-instance v0, Lcom/narvii/logging/LogEvent$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/logging/LogEvent$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public static clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 422
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 418
    invoke-static {p0, v0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ObjectInfo;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ObjectInfo;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 426
    new-instance v0, Lcom/narvii/logging/LogEvent$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/logging/LogEvent$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 427
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 428
    invoke-virtual {v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 429
    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    return-object v0
.end method

.method public static clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 414
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 406
    sget-object v0, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ObjectInfo;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 410
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 397
    iget-object v1, p0, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "|"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
