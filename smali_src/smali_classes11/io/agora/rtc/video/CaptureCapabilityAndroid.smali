.class public Lio/agora/rtc/video/CaptureCapabilityAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mPreviewFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewFramerates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/video/CaptureCapabilityAndroid;->mPreviewSizes:Ljava/util/List;

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/video/CaptureCapabilityAndroid;->mPreviewFormats:Ljava/util/List;

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/video/CaptureCapabilityAndroid;->mPreviewFramerates:Ljava/util/List;

    .line 11
    return-void
.end method
