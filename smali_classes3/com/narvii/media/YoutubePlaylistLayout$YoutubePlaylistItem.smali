.class public Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;
.super Lcom/narvii/model/NVObject;
.source "YoutubePlaylistLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/YoutubePlaylistLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YoutubePlaylistItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem$YoutubePlaylistItemDeserializer;
    }
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
