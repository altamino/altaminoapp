.class public Lcom/narvii/story/StoryNotificationStub;
.super Lcom/narvii/model/NVObject;
.source "StoryNotificationStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/StoryNotificationStub$Action;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE:Ljava/lang/String; = "delete"

.field public static final ACTION_NEW:Ljava/lang/String; = "new"

.field public static final ACTION_UNVOTE:Ljava/lang/String; = "unvote"

.field public static final ACTION_VOTE:Ljava/lang/String; = "vote"

.field public static final ACTION_VOTE_END:Ljava/lang/String; = "vote_end"

.field public static final ACTION_VOTE_START:Ljava/lang/String; = "vote_start"


# instance fields
.field public action:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public story:Lcom/narvii/model/Blog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/story/StoryNotificationStub;->id:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/story/StoryNotificationStub;->story:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    :goto_0
    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/story/StoryNotificationStub;->story:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
