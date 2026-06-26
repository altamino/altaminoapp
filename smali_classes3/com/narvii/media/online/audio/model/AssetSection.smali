.class public Lcom/narvii/media/online/audio/model/AssetSection;
.super Ljava/lang/Object;
.source "AssetSection.java"


# instance fields
.field public name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetSection;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
