.class public final Lcom/narvii/account/AuidResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "AuidService.kt"


# instance fields
.field private auid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuid()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/account/AuidResponse;->auid:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuid(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/account/AuidResponse;->auid:Ljava/lang/String;

    return-void
.end method
