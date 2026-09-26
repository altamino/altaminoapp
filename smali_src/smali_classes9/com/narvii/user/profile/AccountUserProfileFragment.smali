.class public Lcom/narvii/user/profile/AccountUserProfileFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d077a

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo p2, "user"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-class v0, Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/model/User;

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/User;->isModerator()Z

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSystem()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 44
    .line 45
    .line 46
    :goto_1
    const v2, 0x7f0a0d25

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Lcom/narvii/widget/SlideshowView;

    .line 53
    .line 54
    iput-boolean v1, v2, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    .line 55
    .line 56
    iget-object v3, p2, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/narvii/widget/SlideshowView;->setMediaList(Ljava/util/List;)V

    .line 60
    const/4 v3, 0x4

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    move v4, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v4, v1

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    const v2, 0x7f0a0221

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    check-cast v2, Lcom/narvii/widget/BubbleBackground;

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    iget-object v4, p2, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 82
    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 87
    move-result v4

    .line 88
    .line 89
    if-eqz v4, :cond_4

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move v1, v3

    .line 92
    .line 93
    .line 94
    :cond_5
    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    const-string v0, "config"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->drawerImage()Landroid/graphics/drawable/Drawable;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    const v0, 0x7f0a0171

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    const v0, 0x7f0a09f9

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    check-cast p1, Landroid/widget/TextView;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method
