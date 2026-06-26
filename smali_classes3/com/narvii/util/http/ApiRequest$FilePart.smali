.class public Lcom/narvii/util/http/ApiRequest$FilePart;
.super Lcom/narvii/util/http/ApiRequest$MultiPart;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/http/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilePart"
.end annotation


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiRequest$MultiPart;-><init>(Ljava/lang/String;)V

    .line 669
    iput-object p2, p0, Lcom/narvii/util/http/ApiRequest$FilePart;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/narvii/util/http/ApiRequest$FilePart;->file:Ljava/io/File;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 663
    invoke-super {p0}, Lcom/narvii/util/http/ApiRequest$MultiPart;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
