.class public Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;
.super Landroid/widget/RelativeLayout;
.source "NvStoryBackgroundMusicButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;,
        Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$MODE;
    }
.end annotation


# static fields
.field public static final MODE_ADD:I = 0x2

.field public static final MODE_DISABLE:I = 0x1

.field public static final MODE_EDIT:I = 0x3


# instance fields
.field private ivMusic:Lcom/narvii/widget/TintButton;

.field public mode:I
    .annotation build Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$MODE;
    .end annotation
.end field

.field private onClickListener:Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 27
    iput p2, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private updateView(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget v0, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 68
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->button_background_music_bg_edit_mode:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$color;->music_button_edit_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_logo_music:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    goto :goto_0

    .line 75
    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->button_background_music_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 76
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$color;->story_theme_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$string;->background_music:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_logo_music:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$color;->story_theme_color:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 82
    :goto_0
    iget p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p1, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$layout;->story_background_music_button:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget p1, Lcom/narvii/mediaeditor/R$id;->iv_music:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    .line 52
    sget p1, Lcom/narvii/mediaeditor/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$string;->background_music:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->updateView(Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/narvii/util/OnPreventRepeatedClickListener;

    invoke-direct {p1, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->onClickListener:Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0, p0, p1}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;->onClick(Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;I)V

    :cond_1
    return-void
.end method

.method public setMode(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$MODE;
        .end annotation
    .end param

    .line 61
    iput p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    .line 62
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$string;->untitled:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->updateView(Ljava/lang/String;)V

    return-void
.end method

.method public setOnButtonClickListener(Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->onClickListener:Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;

    return-void
.end method
