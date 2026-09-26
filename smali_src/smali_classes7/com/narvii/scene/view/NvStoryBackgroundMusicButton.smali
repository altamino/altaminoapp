.class public Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private updateView(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->button_background_music_bg_edit_mode:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget v1, Lcom/narvii/mediaeditor/R$color;->music_button_edit_text_color:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    .line 33
    .line 34
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_logo_music:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    sget p1, Lcom/narvii/mediaeditor/R$drawable;->button_background_music_bg:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sget v1, Lcom/narvii/mediaeditor/R$color;->story_theme_color:I

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    sget v2, Lcom/narvii/mediaeditor/R$string;->background_music:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    .line 81
    .line 82
    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_scene_logo_music:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 95
    move-result v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 99
    .line 100
    :goto_0
    iget p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    .line 101
    const/4 v0, 0x1

    .line 102
    .line 103
    if-ne p1, v0, :cond_1

    .line 104
    .line 105
    .line 106
    const p1, 0x3e99999a    # 0.3f

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 116
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/mediaeditor/R$layout;->story_background_music_button:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    sget p1, Lcom/narvii/mediaeditor/R$id;->iv_music:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->ivMusic:Lcom/narvii/widget/TintButton;

    .line 21
    .line 22
    sget p1, Lcom/narvii/mediaeditor/R$id;->tv_title:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->tvTitle:Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    sget v0, Lcom/narvii/mediaeditor/R$string;->background_music:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->updateView(Ljava/lang/String;)V

    .line 44
    .line 45
    new-instance p1, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->onClickListener:Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p0, p1}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;->onClick(Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;I)V

    .line 14
    :cond_1
    return-void
.end method

.method public setMode(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$MODE;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->mode:I

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    sget p2, Lcom/narvii/mediaeditor/R$string;->untitled:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->updateView(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public setOnButtonClickListener(Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->onClickListener:Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;

    return-void
.end method
