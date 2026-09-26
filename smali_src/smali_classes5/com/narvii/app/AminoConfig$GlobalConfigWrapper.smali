.class Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;
.super Lcom/narvii/app/AminoConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/AminoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalConfigWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/AminoConfig;


# direct methods
.method public constructor <init>(Lcom/narvii/app/AminoConfig;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;->this$0:Lcom/narvii/app/AminoConfig;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/app/AminoConfig;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getCommunityId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;->this$0:Lcom/narvii/app/AminoConfig;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/app/AminoConfig;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;->this$0:Lcom/narvii/app/AminoConfig;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/AminoConfig;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public start()V
    .locals 0

    return-void
.end method
