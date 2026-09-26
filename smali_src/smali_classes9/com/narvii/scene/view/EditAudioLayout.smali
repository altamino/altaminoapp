.class public Lcom/narvii/scene/view/EditAudioLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

.field private fadeInView:Landroid/view/View;

.field private fadeOutView:Landroid/view/View;

.field private mediaOptionPanel:Lcom/narvii/video/widget/MediaOptionPanel;

.field private mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
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
    check-cast v0, Lcom/narvii/video/widget/MediaOptionPanel;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->mediaOptionPanel:Lcom/narvii/video/widget/MediaOptionPanel;

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
    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

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
    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

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
    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->fadeInView:Landroid/view/View;

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
    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->fadeOutView:Landroid/view/View;

    .line 50
    return-void
.end method
