.class public abstract Lcom/narvii/share/ShareDarkRoomFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/share/ShareDarkRoomFragment$FakeElement;
    }
.end annotation


# static fields
.field public static KEY_SHARE_OBJECT:Ljava/lang/String; = "share_object"

.field public static KEY_STATISTIC_CONTENT:Ljava/lang/String; = "statistic_content"

.field public static KEY_STATISTIC_SOURCE:Ljava/lang/String; = "statistic_source"


# instance fields
.field private final checkForScreenshot:Ljava/lang/Runnable;

.field private contentContainer:Landroid/view/ViewGroup;

.field private contentView:Landroid/view/View;

.field elementUtils:Lcom/narvii/share/elements/ElementUtils;

.field private inflater:Landroid/view/LayoutInflater;

.field readyForScreenshot:Z

.field private rootView:Landroid/view/View;

.field private scrollView:Landroid/widget/ScrollView;

.field shareDarkRoomHelper:Lcom/narvii/share/ShareDarkRoomHelper;

.field protected shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

.field shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

.field sharePayload:Lcom/narvii/share/SharePayload;

.field shareToolBarContainer:Landroid/widget/GridLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/share/ShareDarkRoomFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomFragment$1;-><init>(Lcom/narvii/share/ShareDarkRoomFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->checkForScreenshot:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/share/ShareDarkRoomFragment$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomFragment$2;-><init>(Lcom/narvii/share/ShareDarkRoomFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 18
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/share/ShareDarkRoomFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    move-result v2

    .line 12
    .line 13
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Landroid/graphics/Canvas;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v2, "Failed to capture screenshot because:"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_2
    return-object v0
.end method

.method public abstract configContentView(Landroid/view/View;)V
.end method

.method public abstract contentLayoutId()I
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public abstract getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDarkRoomHelper:Lcom/narvii/share/ShareDarkRoomHelper;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/share/elements/ElementUtils;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/share/elements/ElementUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->elementUtils:Lcom/narvii/share/elements/ElementUtils;

    .line 18
    return-void
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
    sget p3, Lcom/narvii/lib/R$layout;->share_dark_room_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->rootView:Landroid/view/View;

    .line 10
    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->checkForScreenshot:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->checkForScreenshot:Ljava/lang/Runnable;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    instance-of v0, p2, Landroid/widget/ImageView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    check-cast p2, Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sget v1, Lcom/narvii/lib/R$drawable;->share_close:I

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    :cond_0
    sget p2, Lcom/narvii/lib/R$string;->share:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->inflater:Landroid/view/LayoutInflater;

    .line 58
    .line 59
    sget p2, Lcom/narvii/lib/R$id;->share_content_container:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    check-cast p2, Landroid/view/ViewGroup;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentContainer:Landroid/view/ViewGroup;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->inflater:Landroid/view/LayoutInflater;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/share/ShareDarkRoomFragment;->contentLayoutId()I

    .line 73
    move-result v0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentContainer:Landroid/view/ViewGroup;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentView:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Lcom/narvii/share/ShareDarkRoomFragment;->configContentView(Landroid/view/View;)V

    .line 85
    .line 86
    sget p2, Lcom/narvii/lib/R$id;->scroll:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    check-cast p2, Landroid/widget/ScrollView;

    .line 93
    .line 94
    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->scrollView:Landroid/widget/ScrollView;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 98
    move-result p2

    .line 99
    .line 100
    if-eqz p2, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 111
    .line 112
    .line 113
    const v1, -0xebebec    # -1.9683E38f

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    :cond_1
    sget p2, Lcom/narvii/lib/R$id;->bg:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDarkRoomHelper:Lcom/narvii/share/ShareDarkRoomHelper;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/narvii/share/ShareDarkRoomHelper;->getDynamicThemeBg()Landroid/graphics/drawable/Drawable;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    if-eqz v0, :cond_2

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    goto :goto_0

    .line 140
    .line 141
    :cond_2
    const-string p2, "config"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 148
    .line 149
    const-string v0, "community"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 159
    move-result p2

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 163
    .line 164
    :goto_0
    sget p2, Lcom/narvii/lib/R$id;->share_targets_layout:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object p2

    .line 169
    .line 170
    check-cast p2, Landroid/widget/GridLayout;

    .line 171
    .line 172
    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareToolBarContainer:Landroid/widget/GridLayout;

    .line 173
    .line 174
    new-instance p2, Lcom/narvii/share/ShareViewHelper;

    .line 175
    .line 176
    .line 177
    invoke-direct {p2, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 178
    .line 179
    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 180
    .line 181
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    iput-object v0, p2, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 188
    .line 189
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 190
    .line 191
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_CONTENT:Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    iput-object v0, p2, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    .line 198
    .line 199
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareToolBarContainer:Landroid/widget/GridLayout;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v0, v1}, Lcom/narvii/share/ShareViewHelper;->configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V

    .line 207
    .line 208
    sget p2, Lcom/narvii/lib/R$id;->share_dialog_first_button:I

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object p2

    .line 213
    .line 214
    check-cast p2, Lcom/narvii/share/ShareDialogButton;

    .line 215
    .line 216
    if-eqz p2, :cond_3

    .line 217
    .line 218
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/narvii/share/ShareButtonCustomInfo;->getTextString()I

    .line 225
    move-result v1

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v1}, Lcom/narvii/share/ShareDialogButton;->setText(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/narvii/share/ShareButtonCustomInfo;->getIcon()I

    .line 232
    move-result v1

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v1}, Lcom/narvii/share/ShareDialogButton;->setIcon(I)V

    .line 236
    .line 237
    sget v1, Lcom/narvii/lib/R$id;->share_button_target_info:I

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 241
    .line 242
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    .line 247
    :cond_3
    sget p2, Lcom/narvii/lib/R$id;->share_dialog_second_button:I

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    check-cast p1, Lcom/narvii/share/ShareDialogButton;

    .line 254
    .line 255
    if-eqz p1, :cond_4

    .line 256
    .line 257
    new-instance p2, Lcom/narvii/share/ShareButtonSaveImage;

    .line 258
    .line 259
    .line 260
    invoke-direct {p2, p0}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonSaveImage;->getTextString()I

    .line 264
    move-result v0

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setText(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonSaveImage;->getIcon()I

    .line 271
    move-result v0

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setIcon(I)V

    .line 275
    .line 276
    sget v0, Lcom/narvii/lib/R$id;->share_button_target_info:I

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 280
    .line 281
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_4
    return-void
.end method

.method protected preCheck()V
    .locals 0

    return-void
.end method

.method protected scrollToTop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->scrollView:Landroid/widget/ScrollView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 10
    return-void
.end method

.method protected storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    const-string v2, "jpg"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p1, v2}, Lcom/narvii/util/image/Screenshot;->getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance v1, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    const/16 v2, 0x64

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v2, v1}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->getUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    .line 37
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    return-object p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    sget p1, Lcom/narvii/lib/R$string;->out_of_memory:I

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    sget p1, Lcom/narvii/lib/R$string;->normal_error:I

    .line 56
    :goto_0
    const/4 v1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 64
    :cond_1
    return-object v0
.end method
