.class public Lcom/narvii/pushservice/DeviceResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/DeviceResponse$DetailLogging;
    }
.end annotation


# instance fields
.field public detailLogging:Lcom/narvii/pushservice/DeviceResponse$DetailLogging;

.field public devOptions:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 4
    return-void
.end method
