.class public abstract Lcom/narvii/model/api/ObjectResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/model/api/ApiResponse;"
    }
.end annotation


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


# virtual methods
.method public abstract object()Lcom/narvii/model/NVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
