.class public Lcom/narvii/quiz/theme/QuizThemeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public setTheme(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Blog;Lcom/narvii/model/QuizQuestion;Z)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0079

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0803b5

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    if-eqz p4, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    move-result-object p4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    move-result-object p4

    .line 52
    .line 53
    const/16 v0, 0x400

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 60
    move-result-object p4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    move-result-object p4

    .line 65
    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 67
    .line 68
    .line 69
    const v1, -0xebebec    # -1.9683E38f

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 79
    move-result-object p4

    .line 80
    .line 81
    if-eqz p4, :cond_6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 85
    move-result-object p4

    .line 86
    .line 87
    .line 88
    const v0, 0x7f0a0192

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object p4

    .line 93
    .line 94
    check-cast p4, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 95
    .line 96
    if-eqz p4, :cond_3

    .line 97
    const/4 v0, 0x2

    .line 98
    .line 99
    new-array v0, v0, [Lcom/narvii/image/BackgroundSource;

    .line 100
    const/4 v1, 0x0

    .line 101
    .line 102
    aput-object p3, v0, v1

    .line 103
    const/4 p3, 0x1

    .line 104
    .line 105
    aput-object p2, v0, p3

    .line 106
    .line 107
    .line 108
    invoke-virtual {p4, v0}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 112
    move-result-object p3

    .line 113
    .line 114
    .line 115
    const p4, 0x7f0a0bab

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p3

    .line 120
    .line 121
    const-string p4, "hellMode"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 125
    move-result p4

    .line 126
    .line 127
    if-eqz p4, :cond_5

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    const p4, 0x7f060401

    .line 135
    .line 136
    .line 137
    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 138
    move-result p1

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    const/16 p2, 0xd8

    .line 147
    .line 148
    .line 149
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 150
    move-result p1

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    :cond_5
    return-void

    .line 155
    .line 156
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    const-string p2, "setTheme should be invoked after onCreateView"

    .line 159
    .line 160
    .line 161
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p1
.end method
