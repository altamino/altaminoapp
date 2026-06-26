.class public Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "StoryPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/StoryPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckUneditablePollResponse"
.end annotation


# instance fields
.field public sceneUneditableWidgetsMapping:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/blog/post/StoryPostActivity$PollAttachWrapper;
        keyAs = Ljava/lang/String;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/blog/post/StoryPostActivity$PollAttachWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1394
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
