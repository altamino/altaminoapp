.class public Lcom/narvii/video/model/EngineConfig;
.super Ljava/lang/Object;
.source "EngineConfig.java"


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mClientRole:I

.field public mUid:I

.field public mVideoProfile:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/narvii/video/model/EngineConfig;->mChannel:Ljava/lang/String;

    return-void
.end method
