.class public Lcom/narvii/logging/LogEvent;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/logging/LogEvent;->screenPos:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/logging/LogEvent;->ndcId:I

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/logging/LogEvent;->allowNoPage:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/logging/LogEvent;->sendToThirdParty:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/logging/LogEvent;->onlyInternalLogging:Z

    .line 16
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/logging/LogEvent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/logging/LogEvent;->sent:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/logging/LogEvent;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/logging/LogEvent;->sent:Z

    return-void
.end method

.method public static builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/logging/LogEvent$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/logging/LogEvent$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method public static clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ObjectInfo;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ObjectInfo;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 3
    new-instance v0, Lcom/narvii/logging/LogEvent$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/logging/LogEvent$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 5
    invoke-virtual {v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    return-object v0
.end method

.method public static clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 3
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

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ObjectInfo;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string/jumbo v1, "|"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
