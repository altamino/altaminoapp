.class public Lcom/narvii/pushservice/DeviceResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "DeviceResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/DeviceResponse$DetailLogging;
    }
.end annotation


# instance fields
.field public detailLogging:Lcom/narvii/pushservice/DeviceResponse$DetailLogging;

.field public devOptions:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
