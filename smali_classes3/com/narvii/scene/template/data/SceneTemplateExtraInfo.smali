.class public Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;
.super Ljava/lang/Object;
.source "SceneTemplateExtraInfo.java"


# instance fields
.field public crop:Lcom/narvii/theme/ThemeImage;

.field public inputType:I

.field public videoTrimEnd:J

.field public videoTrimStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    const-wide/16 v0, 0x3a98

    .line 13
    iput-wide v0, p0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    return-void
.end method
