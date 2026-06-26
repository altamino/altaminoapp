.class public Lcom/narvii/util/http/ApiRequest$FormPart;
.super Lcom/narvii/util/http/ApiRequest$MultiPart;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/http/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormPart"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 653
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiRequest$MultiPart;-><init>(Ljava/lang/String;)V

    .line 654
    iput-object p2, p0, Lcom/narvii/util/http/ApiRequest$FormPart;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$FormPart;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 648
    invoke-super {p0}, Lcom/narvii/util/http/ApiRequest$MultiPart;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
