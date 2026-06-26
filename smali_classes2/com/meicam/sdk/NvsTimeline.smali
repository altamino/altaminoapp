.class public Lcom/meicam/sdk/NvsTimeline;
.super Lcom/meicam/sdk/NvsObject;
.source "NvsTimeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;
    }
.end annotation


# static fields
.field public static final NvsTimelineWatermarkPosition_BottomLeft:I = 0x2

.field public static final NvsTimelineWatermarkPosition_BottomRight:I = 0x3

.field public static final NvsTimelineWatermarkPosition_TopLeft:I = 0x1

.field public static final NvsTimelineWatermarkPosition_TopRight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/meicam/sdk/NvsObject;-><init>()V

    return-void
.end method

.method private native nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeAddBuiltinTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeAddCompoundCaption(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
.end method

.method private native nativeAddCustomTimelineVideoFx(JJJLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeAddPackagedTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeAddWatermark(JLjava/lang/String;IIFIII)Z
.end method

.method private native nativeAppendAudioTrack(J)Lcom/meicam/sdk/NvsAudioTrack;
.end method

.method private native nativeAppendVideoTrack(J)Lcom/meicam/sdk/NvsVideoTrack;
.end method

.method private native nativeApplyTheme(JLjava/lang/String;)Z
.end method

.method private native nativeAudioTrackCount(J)I
.end method

.method private native nativeChangeVideoSize(JII)Z
.end method

.method private native nativeDeleteWatermark(J)V
.end method

.method private native nativeGetAnimatedStickersByTimelinePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineAnimatedSticker;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAudioFadeOutDuration(J)J
.end method

.method private native nativeGetAudioRes(J)Lcom/meicam/sdk/NvsAudioResolution;
.end method

.method private native nativeGetAudioTrackByIndex(JI)Lcom/meicam/sdk/NvsAudioTrack;
.end method

.method private native nativeGetCaptionsByTimelinePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineCaption;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCompoundCaptionsByTimelinePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineCompoundCaption;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCurrentThemeId(J)Ljava/lang/String;
.end method

.method private native nativeGetDuration(J)J
.end method

.method private native nativeGetFirstAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetFirstTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetLastAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetLastTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetNextAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetNextCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeGetNextCompoundCaption(JLcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
.end method

.method private native nativeGetNextTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetPlaybackRateControl(J)[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;
.end method

.method private native nativeGetPrevAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetPrevCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeGetPrevCompoundCaption(JLcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
.end method

.method private native nativeGetPrevTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetThemeMusicVolumeGain(J)Lcom/meicam/sdk/NvsVolume;
.end method

.method private native nativeGetTimelineVideoFxByTimelinePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineVideoFx;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetVideoFps(J)Lcom/meicam/sdk/NvsRational;
.end method

.method private native nativeGetVideoRes(J)Lcom/meicam/sdk/NvsVideoResolution;
.end method

.method private native nativeGetVideoTrackByIndex(JI)Lcom/meicam/sdk/NvsVideoTrack;
.end method

.method private native nativeRemoveAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeRemoveAudioTrack(JI)Z
.end method

.method private native nativeRemoveCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeRemoveCompoundCaption(JLcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
.end method

.method private native nativeRemoveCurrentTheme(J)V
.end method

.method private native nativeRemoveTimelineEndingLogo(J)V
.end method

.method private native nativeRemoveTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeRemoveVideoTrack(JI)Z
.end method

.method private native nativeSetAudioFadeOutDuration(JJ)V
.end method

.method private native nativeSetCaptionBoundingRectMode(JZ)V
.end method

.method private native nativeSetPlaybackRateControl(J[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;)V
.end method

.method private native nativeSetThemeMusicVolumeGain(JFF)V
.end method

.method private native nativeSetThemeTitleCaptionText(JLjava/lang/String;)V
.end method

.method private native nativeSetThemeTrailerCaptionText(JLjava/lang/String;)V
.end method

.method private native nativeSetTimelineEndingLogo(JLjava/lang/String;IIII)Z
.end method

.method private native nativeSetWatermarkOpacity(JF)Z
.end method

.method private native nativeSetupInputCacheForCaption(JLcom/meicam/sdk/NvsTimelineCaption;J)V
.end method

.method private native nativeVideoTrackCount(J)I
.end method

.method private native natvieGetFirstCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native natvieGetFirstCompoundCaption(J)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
.end method

.method private native natvieGetLastCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native natvieGetLastCompoundCaption(J)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
.end method


# virtual methods
.method public addAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 12

    .line 688
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 689
    iget-wide v1, v11, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addBuiltinTimelineVideoFx(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 8

    .line 876
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 877
    iget-wide v1, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsTimeline;->nativeAddBuiltinTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public addCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 11

    .line 402
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 403
    iget-wide v1, v10, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsTimeline;->nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public addCompoundCaption(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
    .locals 8

    .line 561
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 562
    iget-wide v1, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsTimeline;->nativeAddCompoundCaption(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 12

    .line 733
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 734
    iget-wide v1, v11, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addCustomPanoramicAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 12

    .line 757
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 758
    iget-wide v1, v11, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addCustomTimelineVideoFx(JJLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 8

    .line 917
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 918
    iget-wide v1, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsTimeline;->nativeAddCustomTimelineVideoFx(JJJLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public addPackagedTimelineVideoFx(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 8

    .line 896
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 897
    iget-wide v1, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsTimeline;->nativeAddPackagedTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public addPanoramicAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 12

    .line 710
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v11, p0

    .line 711
    iget-wide v1, v11, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addPanoramicCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 11

    .line 426
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 427
    iget-wide v1, v10, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    const/4 v9, 0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsTimeline;->nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public addWatermark(Ljava/lang/String;IIFIII)Z
    .locals 11

    .line 1085
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    move-object v10, p0

    .line 1086
    iget-wide v1, v10, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsTimeline;->nativeAddWatermark(JLjava/lang/String;IIFIII)Z

    move-result v0

    return v0
.end method

.method public appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;
    .locals 2

    .line 142
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 143
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeAppendAudioTrack(J)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v0

    return-object v0
.end method

.method public appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;
    .locals 2

    .line 123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 124
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeAppendVideoTrack(J)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v0

    return-object v0
.end method

.method public applyTheme(Ljava/lang/String;)Z
    .locals 2

    .line 974
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 975
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeApplyTheme(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public audioTrackCount()I
    .locals 2

    .line 216
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 217
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeAudioTrackCount(J)I

    move-result v0

    return v0
.end method

.method public changeVideoSize(II)Z
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeChangeVideoSize(JII)Z

    move-result p1

    return p1
.end method

.method public deleteWatermark()V
    .locals 2

    .line 1101
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1102
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeDeleteWatermark(J)V

    return-void
.end method

.method public getAnimatedStickersByTimelinePosition(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineAnimatedSticker;",
            ">;"
        }
    .end annotation

    .line 667
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 668
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAnimatedStickersByTimelinePosition(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAudioFadeOutDuration()J
    .locals 2

    .line 1190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1191
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAudioFadeOutDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioRes()Lcom/meicam/sdk/NvsAudioResolution;
    .locals 2

    .line 76
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 77
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAudioRes(J)Lcom/meicam/sdk/NvsAudioResolution;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;
    .locals 2

    .line 254
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 255
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAudioTrackByIndex(JI)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object p1

    return-object p1
.end method

.method public getCaptionsByTimelinePosition(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineCaption;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 380
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeGetCaptionsByTimelinePosition(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCompoundCaptionsByTimelinePosition(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineCompoundCaption;",
            ">;"
        }
    .end annotation

    .line 537
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 538
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeGetCompoundCaptionsByTimelinePosition(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentThemeId()Ljava/lang/String;
    .locals 2

    .line 949
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 950
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetCurrentThemeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 104
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 105
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstAnimatedSticker()Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .line 595
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 596
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetFirstAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCaption()Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .line 306
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 307
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->natvieGetFirstCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCompoundCaption()Lcom/meicam/sdk/NvsTimelineCompoundCaption;
    .locals 2

    .line 460
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 461
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->natvieGetFirstCompoundCaption(J)Lcom/meicam/sdk/NvsTimelineCompoundCaption;

    move-result-object v0

    return-object v0
.end method

.method public getFirstTimelineVideoFx()Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .line 788
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 789
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetFirstTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getLastAnimatedSticker()Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .line 610
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 611
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetLastAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getLastCaption()Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .line 322
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 323
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->natvieGetLastCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public getLastCompoundCaption()Lcom/meicam/sdk/NvsTimelineCompoundCaption;
    .locals 2

    .line 477
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 478
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->natvieGetLastCompoundCaption(J)Lcom/meicam/sdk/NvsTimelineCompoundCaption;

    move-result-object v0

    return-object v0
.end method

.method public getLastTimelineVideoFx()Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .line 802
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 803
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetLastTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getNextAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .line 644
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 645
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetNextAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object p1

    return-object p1
.end method

.method public getNextCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .line 356
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 357
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetNextCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object p1

    return-object p1
.end method

.method public getNextCaption(Lcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
    .locals 2

    .line 513
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 514
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetNextCompoundCaption(JLcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public getNextTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .line 834
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 835
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetNextTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public getPlaybackRateControl()[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;
    .locals 2

    .line 1210
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1211
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPlaybackRateControl(J)[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;

    move-result-object v0

    return-object v0
.end method

.method public getPrevAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .line 627
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 628
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPrevAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object p1

    return-object p1
.end method

.method public getPrevCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .line 339
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 340
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPrevCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object p1

    return-object p1
.end method

.method public getPrevCaption(Lcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
    .locals 2

    .line 495
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 496
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPrevCompoundCaption(JLcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public getPrevTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .line 818
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 819
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPrevTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public getThemeMusicVolumeGain()Lcom/meicam/sdk/NvsVolume;
    .locals 2

    .line 1055
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1056
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetThemeMusicVolumeGain(J)Lcom/meicam/sdk/NvsVolume;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineVideoFxByTimelinePosition(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsTimelineVideoFx;",
            ">;"
        }
    .end annotation

    .line 856
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 857
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeGetTimelineVideoFxByTimelinePosition(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getVideoFps()Lcom/meicam/sdk/NvsRational;
    .locals 2

    .line 90
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 91
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetVideoFps(J)Lcom/meicam/sdk/NvsRational;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;
    .locals 2

    .line 63
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 64
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetVideoRes(J)Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTrackByIndex(I)Lcom/meicam/sdk/NvsVideoTrack;
    .locals 2

    .line 235
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 236
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetVideoTrackByIndex(JI)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object p1

    return-object p1
.end method

.method public removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .line 774
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 775
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object p1

    return-object p1
.end method

.method public removeAudioTrack(I)Z
    .locals 2

    .line 184
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 185
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveAudioTrack(JI)Z

    move-result p1

    return p1
.end method

.method public removeCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .line 443
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 444
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object p1

    return-object p1
.end method

.method public removeCompoundCaption(Lcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;
    .locals 2

    .line 579
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 580
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveCompoundCaption(JLcom/meicam/sdk/NvsTimelineCompoundCaption;)Lcom/meicam/sdk/NvsTimelineCompoundCaption;

    move-result-object p1

    return-object p1
.end method

.method public removeCurrentTheme()V
    .locals 2

    .line 990
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 991
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveCurrentTheme(J)V

    return-void
.end method

.method public removeTimelineEndingLogo()V
    .locals 2

    .line 1157
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1158
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveTimelineEndingLogo(J)V

    return-void
.end method

.method public removeTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .line 933
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 934
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object p1

    return-object p1
.end method

.method public removeVideoTrack(I)Z
    .locals 2

    .line 163
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 164
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveVideoTrack(JI)Z

    move-result p1

    return p1
.end method

.method public setAudioFadeOutDuration(J)V
    .locals 2

    .line 1174
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1175
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeSetAudioFadeOutDuration(JJ)V

    return-void
.end method

.method public setCaptionBoundingRectInActualMode(Z)V
    .locals 2

    .line 291
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetCaptionBoundingRectMode(JZ)V

    return-void
.end method

.method public setPlaybackRateControl([Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;)V
    .locals 2

    .line 1204
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1205
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetPlaybackRateControl(J[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;)V

    return-void
.end method

.method public setThemeMusicVolumeGain(FF)V
    .locals 2

    .line 1039
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1040
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeSetThemeMusicVolumeGain(JFF)V

    return-void
.end method

.method public setThemeTitleCaptionText(Ljava/lang/String;)V
    .locals 2

    .line 1006
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1007
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetThemeTitleCaptionText(JLjava/lang/String;)V

    return-void
.end method

.method public setThemeTrailerCaptionText(Ljava/lang/String;)V
    .locals 2

    .line 1022
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1023
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetThemeTrailerCaptionText(JLjava/lang/String;)V

    return-void
.end method

.method public setTimelineEndingLogo(Ljava/lang/String;IIII)Z
    .locals 8

    .line 1142
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1143
    iget-wide v1, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/sdk/NvsTimeline;->nativeSetTimelineEndingLogo(JLjava/lang/String;IIII)Z

    move-result p1

    return p1
.end method

.method public setWatermarkOpacity(F)Z
    .locals 2

    .line 1117
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1118
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetWatermarkOpacity(JF)Z

    move-result p1

    return p1
.end method

.method public setupInputCacheForCaption(Lcom/meicam/sdk/NvsTimelineCaption;J)V
    .locals 6

    .line 1217
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1218
    iget-wide v1, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsTimeline;->nativeSetupInputCacheForCaption(JLcom/meicam/sdk/NvsTimelineCaption;J)V

    return-void
.end method

.method public videoTrackCount()I
    .locals 2

    .line 200
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 201
    iget-wide v0, p0, Lcom/meicam/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeVideoTrackCount(J)I

    move-result v0

    return v0
.end method
