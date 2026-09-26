.class public Lcom/narvii/model/api/CategoryPreviewResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/model/api/CategoryPreviewResponse$PreviewDeserializer;
    }
.end annotation


# instance fields
.field public itemPreviews:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/model/api/CategoryPreviewResponse$PreviewDeserializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;>;"
        }
    .end annotation
.end field


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
