.class public final Lcom/narvii/video/AudioEditorFragment;
.super Lcom/narvii/video/BaseViceTimeLineFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioEditorFragment.kt\ncom/narvii/video/AudioEditorFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,381:1\n1855#2,2:382\n1549#2:384\n1620#2,3:385\n*S KotlinDebug\n*F\n+ 1 AudioEditorFragment.kt\ncom/narvii/video/AudioEditorFragment\n*L\n371#1:382,2\n158#1:384\n158#1:385,3\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final audioEditingPanelCallback:Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

.field private audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private outputFolderPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectedAudioTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/video/AudioEditorFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/video/AudioEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/video/AudioEditorFragment;->selectedAudioTrackIndex:I

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/video/AudioEditorFragment$binding$2;->INSTANCE:Lcom/narvii/video/AudioEditorFragment$binding$2;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditingPanelCallback:Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

    .line 22
    return-void
.end method

.method public static synthetic D(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->onActivityCreated$lambda$7(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;ILjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/AudioEditorFragment;->onPickMediaResult$lambda$9(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic F(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->onActivityCreated$lambda$3(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->onActivityCreated$lambda$5(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->onViceTrackClicked$lambda$11(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V

    return-void
.end method

.method public static synthetic I(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->onActivityCreated$lambda$4(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/AudioEditorFragment;->onActivityCreated$lambda$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->onActivityCreated$lambda$2(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/AudioEditorFragment;->onTimeLineClicked$lambda$13(Lcom/narvii/video/AudioEditorFragment;)V

    return-void
.end method

.method public static final synthetic access$getAudioEditorPanel$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/widget/AudioEditorPanel;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAudioWaveRetrieverManager$p(Lcom/narvii/video/AudioEditorFragment;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSelectedAudioTrackIndex$p(Lcom/narvii/video/AudioEditorFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/AudioEditorFragment;->selectedAudioTrackIndex:I

    .line 3
    return p0
.end method

.method public static final synthetic access$updateAddMusicButton(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateAddMusicButton()V

    .line 4
    return-void
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/AudioEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 14
    return-object v0
.end method

.method private static final onActivityCreated$lambda$2(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v2

    .line 37
    move v3, v1

    .line 38
    .line 39
    :goto_1
    if-ge v3, v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    const-string v5, "get(...)"

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 62
    move-result v5

    .line 63
    .line 64
    iget v6, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 65
    add-int/2addr v5, v6

    .line 66
    .line 67
    if-le v5, v0, :cond_1

    .line 68
    .line 69
    iget v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 73
    move-result v6

    .line 74
    .line 75
    iget v7, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 76
    add-int/2addr v6, v7

    .line 77
    sub-int/2addr v6, v0

    .line 78
    sub-int/2addr v5, v6

    .line 79
    .line 80
    iput v5, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 81
    .line 82
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    move-result v0

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x0

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    :goto_2
    const-string v2, "clipInfoList"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    const-string v0, "isVideoTrimming"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    .line 132
    .line 133
    const/16 v2, 0xa

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 137
    move-result v2

    .line 138
    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 157
    .line 158
    iget v2, v2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    .line 165
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    goto :goto_3

    .line 167
    .line 168
    .line 169
    :cond_4
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    const-string/jumbo v1, "videoVolumeList"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/4 v0, -0x1

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 184
    return-void
.end method

.method private static final onActivityCreated$lambda$3(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 17
    .line 18
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const-string p0, "mediaPickerFragment"

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    move-object v3, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v3, p0

    .line 29
    :goto_0
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    .line 32
    const/16 v6, 0x4206

    .line 33
    const/4 v7, 0x1

    .line 34
    const/4 v8, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    .line 38
    return-void
.end method

.method private static final onActivityCreated$lambda$4(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 17
    .line 18
    new-instance v5, Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo p1, "targetOnlineAudioTabName"

    .line 25
    .line 26
    const-string v0, "SFX"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    iget-object p0, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    const-string p0, "mediaPickerFragment"

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 39
    move-object v3, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v3, p0

    .line 42
    :goto_0
    const/4 v4, 0x0

    .line 43
    .line 44
    const/16 v6, 0x4206

    .line 45
    const/4 v7, 0x1

    .line 46
    const/4 v8, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    .line 50
    return-void
.end method

.method private static final onActivityCreated$lambda$5(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
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
    const/16 v0, 0x8

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateMuteIcon()V

    .line 15
    return-void
.end method

.method private static final onActivityCreated$lambda$6(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final onActivityCreated$lambda$7(Lcom/narvii/video/AudioEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->isAllVideoClipMute()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/video/AudioEditorFragment;->setVideoInputClipListVolume(F)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateMuteIcon()V

    .line 23
    return-void
.end method

.method private static final onPickMediaResult$lambda$9(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;ILjava/lang/Boolean;)V
    .locals 6

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
    const-string v0, "$audioClipList"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p3

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addAudioClipList(Ljava/util/ArrayList;)V

    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result p3

    .line 49
    .line 50
    if-eqz p3, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    check-cast p3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 57
    .line 58
    iget p3, p3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 59
    .line 60
    sub-int p3, p2, p3

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v1, 0x1

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x4

    .line 72
    const/4 v5, 0x0

    .line 73
    move-object v0, p0

    .line 74
    .line 75
    .line 76
    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateAddMusicButton()V

    .line 80
    :cond_1
    return-void
.end method

.method private static final onTimeLineClicked$lambda$13(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v2, v3, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoVolumePanel:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method

.method private static final onViceTrackClicked$lambda$11(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V
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
    const-string v0, "$viceClip"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0, v1, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 22
    .line 23
    iget-object v4, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/io/j;->s(Ljava/io/File;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    move-object v5, v0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    :goto_1
    const-string v0, "default"

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :goto_2
    const-string v6, "audio_wave"

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x1

    .line 48
    const/4 v9, 0x4

    .line 49
    const/4 v10, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static/range {v4 .. v10}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 55
    .line 56
    const-string v2, "audioEditorPanel"

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 62
    move-object v0, v3

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    iget-object v8, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 68
    .line 69
    if-eqz v8, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 77
    move-object v4, v3

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move-object v4, v0

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Ljava/lang/Number;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 93
    move-result v6

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 97
    move-result-object v7

    .line 98
    .line 99
    iget-object v9, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditingPanelCallback:Lcom/narvii/video/AudioEditorFragment$audioEditingPanelCallback$1;

    .line 100
    move-object v5, p1

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v4 .. v9}, Lcom/narvii/video/widget/AudioEditorPanel;->bind(Lcom/narvii/video/model/AVClipInfoPack;ILcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 104
    :cond_5
    return-void
.end method

.method private final setVideoInputClipListVolume(F)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 25
    .line 26
    iput p1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v1, v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method private final updateAddMusicButton()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    :goto_0
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 25
    .line 26
    const/high16 v3, 0x3f000000    # 0.5f

    .line 27
    .line 28
    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    move v5, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v3

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 42
    .line 43
    iget-object v2, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->optionAddSfx:Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    move v3, v4

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->optionAddSfx:Landroid/widget/ImageView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 55
    return-void
.end method

.method private final updateMuteIcon()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->muteIv:Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->isAllVideoClipMute()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_mute:I

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sget v1, Lcom/narvii/mediaeditor/R$drawable;->ic_unmute:I

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Translucent_NoActionBar:I

    .line 12
    :goto_0
    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "scene_music_edit"

    return-object v0
.end method

.method public getTargetClipListForViceTracks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 39
    .line 40
    iget v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 44
    move-result v4

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 48
    move-result v4

    .line 49
    add-int/2addr v3, v4

    .line 50
    .line 51
    iput v3, v2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 55
    move-result v3

    .line 56
    .line 57
    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public getViceTrackDataType(I)I
    .locals 0

    const/16 p1, 0x65

    return p1
.end method

.method public initComponent()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initComponent()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoDuration:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoPlaybackTime:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 18
    .line 19
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->divider:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 28
    .line 29
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->playerButton:Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 33
    .line 34
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 35
    .line 36
    const-string v2, "audioEditorPanel"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/video/AudioEditorFragment;->audioEditorPanel:Lcom/narvii/video/widget/AudioEditorPanel;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v2, "viceTimeLinePanel"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->setViceTimeLinePanel(Landroid/widget/LinearLayout;)V

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 58
    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 14

    .line 1
    .line 2
    const-string v0, "frameRetrieverOutputFolder"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/video/AudioEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x6

    .line 23
    const/4 v6, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    .line 34
    const-string/jumbo v8, "timeline_tmp"

    .line 35
    .line 36
    const-string v9, "audio"

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    .line 40
    const/16 v12, 0xc

    .line 41
    const/4 v13, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v7 .. v13}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 45
    .line 46
    :goto_0
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 52
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateAddMusicButton()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->muteRl:Landroid/widget/RelativeLayout;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->updateMuteIcon()V

    .line 20
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->optionDone:Landroid/widget/ImageView;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/video/a;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/video/a;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->optionAddMusic:Landroid/widget/ImageView;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/video/b;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/video/b;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->optionAddSfx:Landroid/widget/ImageView;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/video/c;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/video/c;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoVolumePanel:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/video/d;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/narvii/video/d;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoVolumePanelProgressBackground:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    new-instance v0, Lcom/narvii/video/e;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Lcom/narvii/video/e;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->muteRl:Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    new-instance v0, Lcom/narvii/video/f;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/narvii/video/f;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, "playListMediaPicker"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    instance-of v1, p1, Lcom/narvii/media/MediaPickerFragment;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    const-string v3, "mediaPickerFragment"

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 48
    move-object v1, v2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object v2, p1

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v2, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "mediaPickerFragment"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 17
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onDestroyView()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/video/AudioEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v1, v2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2, v3, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V

    .line 35
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment;->audioWaveRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 25
    :cond_1
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_e

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_b

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const-string v1, "soundDataList"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v1, v0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const-class v2, Lcom/narvii/media/online/audio/model/Sound;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move-object v1, v0

    .line 36
    .line 37
    :goto_1
    if-eqz p2, :cond_3

    .line 38
    .line 39
    const-string v2, "category"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move-object v2, v0

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    const-class v3, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    check-cast v2, Lcom/narvii/media/online/audio/model/AssetCategory;

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    move-object v2, v0

    .line 62
    .line 63
    :goto_3
    if-eqz p2, :cond_5

    .line 64
    .line 65
    const-string v3, "soundTypeList"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    goto :goto_4

    .line 71
    :cond_5
    move-object p2, v0

    .line 72
    .line 73
    .line 74
    :goto_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v3

    .line 76
    .line 77
    if-nez v3, :cond_6

    .line 78
    .line 79
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 83
    move-result-object p2

    .line 84
    goto :goto_5

    .line 85
    :cond_6
    move-object p2, v0

    .line 86
    .line 87
    .line 88
    :goto_5
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    if-eqz v4, :cond_7

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->isTailFrameCellPlaying()Lw7/u;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 108
    move-result v4

    .line 109
    const/4 v6, 0x0

    .line 110
    move v7, v6

    .line 111
    .line 112
    :goto_6
    if-ge v7, v4, :cond_d

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v8

    .line 117
    .line 118
    check-cast v8, Lcom/narvii/model/Media;

    .line 119
    .line 120
    new-instance v9, Lcom/narvii/video/model/AVClipInfoPack;

    .line 121
    .line 122
    .line 123
    invoke-direct {v9}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 124
    .line 125
    iput v7, v9, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 126
    .line 127
    iget-object v10, v8, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 131
    move-result-object v10

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 135
    move-result-object v10

    .line 136
    .line 137
    iput-object v10, v9, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v10, v8, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v10, v9, Lcom/narvii/video/model/AVClipInfoPack;->author:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v8, v8, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v8, v9, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result v8

    .line 152
    .line 153
    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 155
    move-result v10

    .line 156
    .line 157
    if-ne v8, v10, :cond_8

    .line 158
    .line 159
    if-eqz v2, :cond_8

    .line 160
    .line 161
    sget-object v8, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v10

    .line 166
    .line 167
    check-cast v10, Lcom/narvii/media/online/audio/model/Sound;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v9, v10, v2}, Lcom/narvii/video/services/SceneMediaProcessor;->fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 171
    :cond_8
    const/4 v8, 0x1

    .line 172
    .line 173
    if-eqz p2, :cond_b

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 177
    move-result v10

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 181
    move-result v11

    .line 182
    .line 183
    if-ne v10, v11, :cond_b

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object v10

    .line 188
    .line 189
    check-cast v10, Ljava/lang/Integer;

    .line 190
    .line 191
    if-nez v10, :cond_9

    .line 192
    goto :goto_7

    .line 193
    .line 194
    .line 195
    :cond_9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 196
    move-result v10

    .line 197
    const/4 v11, 0x2

    .line 198
    .line 199
    if-ne v10, v11, :cond_a

    .line 200
    move v10, v8

    .line 201
    goto :goto_8

    .line 202
    :cond_a
    :goto_7
    move v10, v6

    .line 203
    .line 204
    :goto_8
    iput-boolean v10, v9, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 205
    goto :goto_9

    .line 206
    .line 207
    :cond_b
    iput-boolean v6, v9, Lcom/narvii/video/model/AVClipInfoPack;->isSfx:Z

    .line 208
    .line 209
    :goto_9
    if-eqz v0, :cond_c

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 213
    move-result-object v10

    .line 214
    .line 215
    check-cast v10, Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    move-result v10

    .line 220
    .line 221
    if-ne v10, v8, :cond_c

    .line 222
    .line 223
    add-int/lit16 v8, v3, -0x3e8

    .line 224
    goto :goto_a

    .line 225
    :cond_c
    move v8, v3

    .line 226
    .line 227
    :goto_a
    iput v8, v9, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    add-int/lit8 v7, v7, 0x1

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    const/4 v6, 0x0

    .line 235
    .line 236
    new-instance v7, Lcom/narvii/video/g;

    .line 237
    .line 238
    .line 239
    invoke-direct {v7, p0, v5, v3}, Lcom/narvii/video/g;-><init>(Lcom/narvii/video/AudioEditorFragment;Ljava/util/ArrayList;I)V

    .line 240
    const/4 v8, 0x2

    .line 241
    const/4 v9, 0x0

    .line 242
    move-object v4, p0

    .line 243
    .line 244
    .line 245
    invoke-static/range {v4 .. v9}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList$default(Lcom/narvii/video/BaseMediaEditorFragment;Ljava/util/ArrayList;ZLcom/narvii/util/Callback;ILjava/lang/Object;)V

    .line 246
    :cond_e
    :goto_b
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    .line 20
    :cond_1
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 7
    .param p1    # Lcom/narvii/video/interfaces/ITimelineClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clipInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/video/AudioEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentAudioEditorBinding;->videoVolumePanelProgressView:Lcom/narvii/video/widget/VolumeProgressView;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "videoVolumePanelProgressView"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 29
    .line 30
    const/16 v2, 0x64

    .line 31
    int-to-float v2, v2

    .line 32
    mul-float/2addr v0, v2

    .line 33
    float-to-int v2, v0

    .line 34
    .line 35
    new-instance v3, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, p1, p0}, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$1$1;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/AudioEditorFragment;)V

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x4

    .line 41
    const/4 v6, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/widget/VolumeProgressView;->init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V

    .line 45
    .line 46
    :cond_0
    new-instance p1, Lcom/narvii/video/h;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/narvii/video/h;-><init>(Lcom/narvii/video/AudioEditorFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public onViceTrackClicked(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getAudioClipInfoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "get(...)"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 20
    .line 21
    iput p1, p0, Lcom/narvii/video/AudioEditorFragment;->selectedAudioTrackIndex:I

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/video/i;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0, v0}, Lcom/narvii/video/i;-><init>(Lcom/narvii/video/AudioEditorFragment;Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public onViceTrackOffsetChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->onAudioTrackOffsetChanged(I)V

    .line 8
    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
