.class public abstract Lcom/narvii/util/http/ApiResponseProgressListener;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ApiResponseProgressListener.java"

# interfaces
.implements Lcom/narvii/util/http/PostProgressListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/api/ApiResponse;",
        ">",
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TT;>;",
        "Lcom/narvii/util/http/PostProgressListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method
