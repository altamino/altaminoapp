.class public Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public crop:Lcom/narvii/theme/ThemeImage;

.field public inputType:I

.field public videoTrimEnd:J

.field public videoTrimStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimStart:J

    .line 8
    .line 9
    const-wide/16 v0, 0x3a98

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->crop:Lcom/narvii/theme/ThemeImage;

    .line 15
    return-void
.end method
