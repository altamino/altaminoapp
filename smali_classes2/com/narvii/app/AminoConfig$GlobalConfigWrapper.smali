.class Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;
.super Lcom/narvii/app/AminoConfig;
.source "AminoConfig.java"


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

    .line 103
    iput-object p1, p0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;->this$0:Lcom/narvii/app/AminoConfig;

    .line 104
    iget-object p1, p1, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p1}, Lcom/narvii/app/AminoConfig;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 118
    iget-object v0, p0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;->this$0:Lcom/narvii/app/AminoConfig;

    invoke-virtual {v0, p1}, Lcom/narvii/app/AminoConfig;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;->this$0:Lcom/narvii/app/AminoConfig;

    invoke-virtual {v0}, Lcom/narvii/app/AminoConfig;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 0

    return-void
.end method
