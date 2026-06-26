.class public Lcom/narvii/scene/notification/StoryCheckEligible;
.super Lcom/narvii/model/NVObject;
.source "StoryCheckEligible.java"


# static fields
.field public static final ACTION_CHECK_ACTIVATION:I = 0x1

.field public static final ACTION_ELIGIBLE_FAIL:I = 0x2

.field public static final ACTION_FINISH:I = 0x3


# instance fields
.field public action:I

.field public message:Ljava/lang/String;

.field public sceneDraftId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/narvii/scene/notification/StoryCheckEligible;->sceneDraftId:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/narvii/scene/notification/StoryCheckEligible;->action:I

    .line 23
    iput-object p3, p0, Lcom/narvii/scene/notification/StoryCheckEligible;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/scene/notification/StoryCheckEligible;->sceneDraftId:Ljava/lang/String;

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

    .line 43
    invoke-virtual {p0}, Lcom/narvii/scene/notification/StoryCheckEligible;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
