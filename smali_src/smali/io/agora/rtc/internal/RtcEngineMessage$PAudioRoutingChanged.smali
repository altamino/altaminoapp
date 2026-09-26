.class Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;
.super Lio/agora/rtc/internal/Marshallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PAudioRoutingChanged"
.end annotation


# instance fields
.field routing:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public marshall()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public unmarshall([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    .line 7
    move-result p1

    .line 8
    .line 9
    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;->routing:I

    .line 10
    return-void
.end method
