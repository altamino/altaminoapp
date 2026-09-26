.class public final Lcom/narvii/scene/view/EditSceneBGMLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.implements Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;
    }
.end annotation


# instance fields
.field private activeClip:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fadeInView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fadeOutView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isFadeIn:Z

.field private isFadeOut:Z

.field private mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/view/EditSceneBGMLayout;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/view/EditSceneBGMLayout;->initTimeLine$lambda$1$lambda$0(Lcom/narvii/scene/view/EditSceneBGMLayout;Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method private final initTimeLine(Ljava/util/List;IF)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;IF)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    iget-object v0, v15, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v6, v15, Lcom/narvii/scene/view/EditSceneBGMLayout;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 9
    .line 10
    const/16 v1, 0x65

    .line 11
    .line 12
    const/16 v2, 0xc9

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v8

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v14, 0x0

    .line 24
    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    .line 28
    const v17, 0xbe00

    .line 29
    .line 30
    const/16 v18, 0x0

    .line 31
    .line 32
    move-object/from16 v4, p1

    .line 33
    .line 34
    move/from16 v7, p2

    .line 35
    .line 36
    move/from16 v9, p3

    .line 37
    .line 38
    move-object/from16 v15, p0

    .line 39
    .line 40
    .line 41
    invoke-static/range {v0 .. v18}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    .line 42
    .line 43
    :cond_0
    move-object/from16 v0, p0

    .line 44
    .line 45
    iget-object v1, v0, Lcom/narvii/scene/view/EditSceneBGMLayout;->activeClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 50
    .line 51
    if-lez v2, :cond_1

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/scene/view/c;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v0, v1}, Lcom/narvii/scene/view/c;-><init>(Lcom/narvii/scene/view/EditSceneBGMLayout;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 57
    .line 58
    const-wide/16 v3, 0x64

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 62
    :cond_1
    return-void
.end method

.method static synthetic initTimeLine$default(Lcom/narvii/scene/view/EditSceneBGMLayout;Ljava/util/List;IFILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const/high16 p3, -0x40800000    # -1.0f

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/scene/view/EditSceneBGMLayout;->initTimeLine(Ljava/util/List;IF)V

    .line 10
    return-void
.end method

.method private static final initTimeLine$lambda$1$lambda$0(Lcom/narvii/scene/view/EditSceneBGMLayout;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$it"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    .line 25
    const/16 v9, 0x76

    .line 26
    const/4 v10, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final init(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/FrameRetrieverManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "frameRetrieverManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_in_view:I

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    goto :goto_2

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ne v1, v0, :cond_3

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    .line 26
    .line 27
    xor-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 38
    .line 39
    :goto_1
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;

    .line 40
    .line 41
    if-eqz p1, :cond_6

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0, v1}, Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;->onFade(ZZ)V

    .line 49
    goto :goto_4

    .line 50
    .line 51
    :cond_3
    :goto_2
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_out_view:I

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    goto :goto_4

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result p1

    .line 59
    .line 60
    if-ne p1, v0, :cond_6

    .line 61
    .line 62
    iget-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 63
    .line 64
    xor-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    iput-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 75
    .line 76
    :goto_3
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    .line 81
    .line 82
    iget-boolean v1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0, v1}, Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;->onFade(ZZ)V

    .line 86
    :cond_6
    :goto_4
    return-void
.end method

.method public onControllerActive()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onControllerActive()V

    .line 8
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/scene/view/AudioOptionPanel;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;

    .line 14
    .line 15
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 24
    .line 25
    sget v0, Lcom/narvii/mediaeditor/R$id;->balance_seek_bar:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/scene/view/BalanceSeekBar;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    .line 34
    .line 35
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_in_view:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    .line 42
    .line 43
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_out_view:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/narvii/scene/view/BalanceSeekBar;->setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V

    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Lcom/narvii/scene/view/AudioOptionPanel;->setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V

    .line 78
    :cond_3
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    .line 8
    :cond_0
    return-void
.end method

.method public onOptionDelete(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;->onOptionDelete(Landroid/view/View;)V

    .line 14
    :cond_0
    return-void
.end method

.method public onOptionSubmit(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;->onOptionSubmit(Landroid/view/View;)V

    .line 14
    :cond_0
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onPlayerTick(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;JJ)V

    .line 4
    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onReplayTriggered(III)V

    .line 8
    :cond_0
    return-void
.end method

.method public onSeek(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeek(F)V

    .line 8
    :cond_0
    return-void
.end method

.method public onSeekFinish(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;->onSeekFinish(F)V

    .line 8
    :cond_0
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 0
    .param p1    # Lcom/narvii/video/interfaces/ITimelineClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 4
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 4
    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineScrolledOffsetChanged(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;I)V

    .line 4
    return-void
.end method

.method public final pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method public final setBGMusicClip(Lcom/narvii/video/model/AVClipInfoPack;J)V
    .locals 2
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "bgMusicClip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->activeClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    long-to-int v1, p2

    .line 13
    long-to-float p2, p2

    .line 14
    .line 15
    const/16 p3, 0x8

    .line 16
    int-to-float p3, p3

    .line 17
    div-float/2addr p2, p3

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v1, p2}, Lcom/narvii/scene/view/EditSceneBGMLayout;->initTimeLine(Ljava/util/List;IF)V

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->audioOptionPanel:Lcom/narvii/scene/view/AudioOptionPanel;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3, v0}, Lcom/narvii/scene/view/AudioOptionPanel;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    :cond_0
    iget-object p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Lcom/narvii/scene/view/BalanceSeekBar;->setRange(F)V

    .line 41
    .line 42
    :cond_1
    iget-boolean p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    .line 43
    .line 44
    iput-boolean p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeIn:Z

    .line 45
    .line 46
    iget-boolean p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    .line 47
    .line 48
    iput-boolean p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeInView:Landroid/view/View;

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 57
    .line 58
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->fadeOutView:Landroid/view/View;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_3
    iget-boolean p2, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->isFadeOut:Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 67
    :goto_1
    return-void
.end method

.method public final setOnFadeListener(Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onFadeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onFadeListener:Lcom/narvii/scene/view/EditSceneBGMLayout$OnFadeListener;

    return-void
.end method

.method public final setOnOptionClickListener(Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onOptionClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onOptionClickListener:Lcom/narvii/scene/view/AudioOptionPanel$OnOptionClickListener;

    return-void
.end method

.method public final setOnSeekListener(Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;)V
    .locals 1
    .param p1    # Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onSeekListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->onSeekListener:Lcom/narvii/scene/view/BalanceSeekBar$OnSeekListener;

    return-void
.end method

.method public final setTimelineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "timeLineCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method

.method public final updatePlaybackTime(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/EditSceneBGMLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updatePlaybackTime(J)V

    .line 8
    :cond_0
    return-void
.end method
