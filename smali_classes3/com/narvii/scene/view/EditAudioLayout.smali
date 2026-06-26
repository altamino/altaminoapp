.class public Lcom/narvii/scene/view/EditAudioLayout;
.super Landroid/widget/LinearLayout;
.source "EditAudioLayout.java"


# instance fields
.field private balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

.field private fadeInView:Landroid/view/View;

.field private fadeOutView:Landroid/view/View;

.field private mediaOptionPanel:Lcom/narvii/video/widget/MediaOptionPanel;

.field private mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 37
    sget v0, Lcom/narvii/mediaeditor/R$id;->options_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaOptionPanel;

    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->mediaOptionPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 38
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line_component:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent;

    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->mediaTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 39
    sget v0, Lcom/narvii/mediaeditor/R$id;->balance_seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/view/BalanceSeekBar;

    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->balanceSeekBar:Lcom/narvii/scene/view/BalanceSeekBar;

    .line 40
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_in_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->fadeInView:Landroid/view/View;

    .line 41
    sget v0, Lcom/narvii/mediaeditor/R$id;->fade_out_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/view/EditAudioLayout;->fadeOutView:Landroid/view/View;

    return-void
.end method
