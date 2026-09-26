.class public Lio/agora/rtc/video/CameraHelper$Capability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capability"
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1


# instance fields
.field public facing:I

.field public height:I

.field public id:I

.field public maxFps:I

.field public width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "facing",
            "w",
            "h",
            "fps"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lio/agora/rtc/video/CameraHelper$Capability;->id:I

    .line 6
    .line 7
    iput p2, p0, Lio/agora/rtc/video/CameraHelper$Capability;->facing:I

    .line 8
    .line 9
    iput p3, p0, Lio/agora/rtc/video/CameraHelper$Capability;->width:I

    .line 10
    .line 11
    iput p4, p0, Lio/agora/rtc/video/CameraHelper$Capability;->height:I

    .line 12
    .line 13
    iput p5, p0, Lio/agora/rtc/video/CameraHelper$Capability;->maxFps:I

    .line 14
    return-void
.end method
