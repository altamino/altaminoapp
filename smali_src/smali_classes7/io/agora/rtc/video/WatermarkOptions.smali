.class public Lio/agora/rtc/video/WatermarkOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/WatermarkOptions$Rectangle;
    }
.end annotation


# instance fields
.field public positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

.field public positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

.field public visibleInPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/video/WatermarkOptions;->visibleInPreview:Z

    .line 7
    .line 8
    new-instance v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lio/agora/rtc/video/WatermarkOptions$Rectangle;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    .line 14
    .line 15
    new-instance v0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lio/agora/rtc/video/WatermarkOptions$Rectangle;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    .line 21
    return-void
.end method
