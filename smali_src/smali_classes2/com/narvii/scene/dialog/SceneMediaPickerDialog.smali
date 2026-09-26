.class public final Lcom/narvii/scene/dialog/SceneMediaPickerDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerDialog.kt\ncom/narvii/scene/dialog/SceneMediaPickerDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,137:1\n1#2:138\n*E\n"
.end annotation


# instance fields
.field private final backgroundImage:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cancel:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onlineVideo:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final photo$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final photoLibrary:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentMedia:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentMediaContainer:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentMediaIcon:Lcom/narvii/widget/ThumbImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentMediaName:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentMediaPath:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sceneSpHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoTempalteLayout:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoTemplate:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 8
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/mediaeditor/R$style;->CustomDialogWithAnimation:I

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneSpHelper$delegate:Lw7/m;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photo$delegate:Lw7/m;

    .line 33
    .line 34
    sget p1, Lcom/narvii/mediaeditor/R$layout;->dialog_scene_media_pick:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 38
    .line 39
    sget p1, Lcom/narvii/mediaeditor/R$id;->photo_library:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string v0, "findViewById(...)"

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photoLibrary:Landroid/view/View;

    .line 51
    .line 52
    sget v1, Lcom/narvii/mediaeditor/R$id;->online_video:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    iput-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onlineVideo:Landroid/view/View;

    .line 62
    .line 63
    sget v2, Lcom/narvii/mediaeditor/R$id;->video_template:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    iput-object v2, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTemplate:Landroid/view/View;

    .line 73
    .line 74
    sget v3, Lcom/narvii/mediaeditor/R$id;->video_template_layout:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    iput-object v3, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTempalteLayout:Landroid/view/View;

    .line 84
    .line 85
    sget v4, Lcom/narvii/mediaeditor/R$id;->cancel:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    iput-object v4, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->cancel:Landroid/view/View;

    .line 95
    .line 96
    sget v5, Lcom/narvii/mediaeditor/R$id;->recent_media_container:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-static {v5, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    iput-object v5, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    .line 106
    .line 107
    sget v6, Lcom/narvii/mediaeditor/R$id;->recent_media:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v6

    .line 112
    .line 113
    .line 114
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    iput-object v6, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMedia:Landroid/view/View;

    .line 117
    .line 118
    sget v7, Lcom/narvii/mediaeditor/R$id;->recent_media_icon:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v7

    .line 123
    .line 124
    .line 125
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    check-cast v7, Lcom/narvii/widget/ThumbImageView;

    .line 128
    .line 129
    iput-object v7, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaIcon:Lcom/narvii/widget/ThumbImageView;

    .line 130
    .line 131
    sget v7, Lcom/narvii/mediaeditor/R$id;->recent_media_name:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v7

    .line 136
    .line 137
    .line 138
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    check-cast v7, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object v7, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaName:Landroid/widget/TextView;

    .line 143
    .line 144
    sget v7, Lcom/narvii/mediaeditor/R$id;->recent_media_path:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v7

    .line 149
    .line 150
    .line 151
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    check-cast v7, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v7, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaPath:Landroid/widget/TextView;

    .line 156
    .line 157
    sget v7, Lcom/narvii/mediaeditor/R$id;->media_content_view:I

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object v7

    .line 162
    .line 163
    .line 164
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    iput-object v7, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->contentView:Landroid/view/View;

    .line 167
    .line 168
    sget v7, Lcom/narvii/mediaeditor/R$id;->blur_bg:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 172
    move-result-object v7

    .line 173
    .line 174
    .line 175
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    iput-object v7, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->backgroundImage:Landroid/view/View;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const/4 p1, 0x0

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    const/16 p1, 0x8

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    return-void
.end method

.method public static synthetic a(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onClick$lambda$0(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V

    return-void
.end method

.method private final getMediaPath(Lcom/narvii/model/Media;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "http://youtu.be/"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->getPhoto()Lcom/narvii/photos/PhotoManager;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    .line 48
    :goto_0
    if-nez v0, :cond_3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object p1, v0

    .line 51
    :goto_1
    return-object p1
.end method

.method private static final onClick$lambda$0(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V
    .locals 1

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
    iget-object p0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickVideoTemplate()V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final getBackgroundImage()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->backgroundImage:Landroid/view/View;

    return-object v0
.end method

.method public final getCancel()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->cancel:Landroid/view/View;

    return-object v0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public final getOnPickerListener()Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    return-object v0
.end method

.method public final getOnlineVideo()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onlineVideo:Landroid/view/View;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "scene_source"

    return-object v0
.end method

.method public final getPhoto()Lcom/narvii/photos/PhotoManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photo$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 14
    return-object v0
.end method

.method public final getPhotoLibrary()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->photoLibrary:Landroid/view/View;

    return-object v0
.end method

.method public final getRecentMedia()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMedia:Landroid/view/View;

    return-object v0
.end method

.method public final getRecentMediaContainer()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    return-object v0
.end method

.method public final getRecentMediaIcon()Lcom/narvii/widget/ThumbImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaIcon:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public final getRecentMediaName()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRecentMediaPath()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaPath:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSceneRecentMedia()Lcom/narvii/scene/model/SceneRecentMedia;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    return-object v0
.end method

.method public final getSceneSpHelper()Lcom/narvii/scene/helper/SceneSpHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneSpHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/helper/SceneSpHelper;

    .line 9
    return-object v0
.end method

.method public final getVideoTempalteLayout()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTempalteLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getVideoTemplate()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->videoTemplate:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    .line 15
    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->photo_library:I

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-ne v2, v1, :cond_3

    .line 25
    .line 26
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "PhotoLibrary"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickPhoto()V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 50
    .line 51
    goto/16 :goto_9

    .line 52
    .line 53
    :cond_3
    :goto_1
    sget v1, Lcom/narvii/mediaeditor/R$id;->online_video:I

    .line 54
    .line 55
    if-nez p1, :cond_4

    .line 56
    goto :goto_2

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v2

    .line 61
    .line 62
    if-ne v2, v1, :cond_6

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickOnlineVideo()V

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 73
    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :cond_6
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_template_layout:I

    .line 77
    .line 78
    if-nez p1, :cond_7

    .line 79
    goto :goto_3

    .line 80
    .line 81
    .line 82
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v2

    .line 84
    .line 85
    if-ne v2, v1, :cond_8

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_8
    :goto_3
    sget v1, Lcom/narvii/mediaeditor/R$id;->video_template:I

    .line 89
    .line 90
    if-nez p1, :cond_9

    .line 91
    goto :goto_5

    .line 92
    .line 93
    .line 94
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v2

    .line 96
    .line 97
    if-ne v2, v1, :cond_a

    .line 98
    .line 99
    :goto_4
    new-instance p1, Lcom/narvii/scene/dialog/a;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p0}, Lcom/narvii/scene/dialog/a;-><init>(Lcom/narvii/scene/dialog/SceneMediaPickerDialog;)V

    .line 103
    .line 104
    const-wide/16 v0, 0xfa

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 108
    .line 109
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    const-string v0, "VideoTemplates"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 126
    goto :goto_9

    .line 127
    .line 128
    :cond_a
    :goto_5
    sget v1, Lcom/narvii/mediaeditor/R$id;->recent_media:I

    .line 129
    .line 130
    if-nez p1, :cond_b

    .line 131
    goto :goto_6

    .line 132
    .line 133
    .line 134
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result v2

    .line 136
    .line 137
    if-ne v2, v1, :cond_e

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    .line 140
    .line 141
    if-eqz p1, :cond_d

    .line 142
    .line 143
    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    .line 144
    .line 145
    if-eqz v1, :cond_c

    .line 146
    .line 147
    iget-object v0, v1, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 148
    .line 149
    .line 150
    :cond_c
    invoke-interface {p1, v0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;->onPickRecentMedia(Lcom/narvii/model/Media;)V

    .line 151
    .line 152
    :cond_d
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 153
    .line 154
    .line 155
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    const-string v0, "RecentVideo"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 169
    goto :goto_9

    .line 170
    .line 171
    :cond_e
    :goto_6
    sget v0, Lcom/narvii/mediaeditor/R$id;->blur_bg:I

    .line 172
    .line 173
    if-nez p1, :cond_f

    .line 174
    goto :goto_7

    .line 175
    .line 176
    .line 177
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 178
    move-result v1

    .line 179
    .line 180
    if-ne v1, v0, :cond_10

    .line 181
    goto :goto_8

    .line 182
    .line 183
    :cond_10
    :goto_7
    sget v0, Lcom/narvii/mediaeditor/R$id;->cancel:I

    .line 184
    .line 185
    if-nez p1, :cond_11

    .line 186
    goto :goto_9

    .line 187
    .line 188
    .line 189
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 190
    move-result p1

    .line 191
    .line 192
    if-ne p1, v0, :cond_12

    .line 193
    .line 194
    .line 195
    :goto_8
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 196
    :cond_12
    :goto_9
    return-void
.end method

.method public final setOnPickerListener(Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->onPickerListener:Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;

    return-void
.end method

.method public final setSceneRecentMedia(Lcom/narvii/scene/model/SceneRecentMedia;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/model/SceneRecentMedia;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->getSceneSpHelper()Lcom/narvii/scene/helper/SceneSpHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneSpHelper;->getRecentVideo()Lcom/narvii/scene/model/SceneRecentMedia;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaIcon:Lcom/narvii/widget/ThumbImageView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaName:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 38
    .line 39
    iget-object v1, v1, Lcom/narvii/scene/model/SceneRecentMedia;->title:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaPath:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->sceneRecentMedia:Lcom/narvii/scene/model/SceneRecentMedia;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    iget-object v1, v1, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 52
    .line 53
    const-string v2, "media"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->getMediaPath(Lcom/narvii/model/Media;)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->recentMediaContainer:Landroid/view/View;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->backgroundImage:Landroid/view/View;

    .line 77
    .line 78
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 79
    const/4 v2, 0x0

    .line 80
    .line 81
    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 85
    .line 86
    const-wide/16 v2, 0xc8

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->contentView:Landroid/view/View;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    sget v2, Lcom/narvii/mediaeditor/R$anim;->slide_up:I

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method
