.class final Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaRetrieveController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CutterPosInfo"
.end annotation


# instance fields
.field private controllerLeftEnd:F

.field private controllerRightEnd:F

.field private cutterMaxWidth:F

.field private cutterMinWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final getControllerLeftEnd()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->controllerLeftEnd:F

    return v0
.end method

.method public final getControllerRightEnd()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->controllerRightEnd:F

    return v0
.end method

.method public final getCutterMaxWidth()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->cutterMaxWidth:F

    return v0
.end method

.method public final getCutterMinWidth()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->cutterMinWidth:F

    return v0
.end method

.method public final setControllerLeftEnd(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->controllerLeftEnd:F

    return-void
.end method

.method public final setControllerRightEnd(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->controllerRightEnd:F

    return-void
.end method

.method public final setCutterMaxWidth(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->cutterMaxWidth:F

    return-void
.end method

.method public final setCutterMinWidth(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterPosInfo;->cutterMinWidth:F

    return-void
.end method
