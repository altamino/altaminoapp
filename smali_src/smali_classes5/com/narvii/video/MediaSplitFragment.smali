.class public final Lcom/narvii/video/MediaSplitFragment;
.super Lcom/narvii/video/ScrollingTimeLineFragment;
.source "SourceFile"


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
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private orgClipCount:I

.field private outputFolderPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pendingSplit:Z

.field private pendingUndoSplit:Z

.field private splitEnabled:Z

.field private final splitOpStack$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final splitTimeStack$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/video/MediaSplitFragment;

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
    sput-object v0, Lcom/narvii/video/MediaSplitFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/video/MediaSplitFragment$splitOpStack$2;->INSTANCE:Lcom/narvii/video/MediaSplitFragment$splitOpStack$2;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitOpStack$delegate:Lw7/m;

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;->INSTANCE:Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitTimeStack$delegate:Lw7/m;

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    .line 23
    .line 24
    sget-object v0, Lcom/narvii/video/MediaSplitFragment$binding$2;->INSTANCE:Lcom/narvii/video/MediaSplitFragment$binding$2;

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->binding$delegate:Lkotlin/properties/d;

    .line 31
    return-void
.end method

.method public static synthetic A(Lcom/narvii/video/MediaSplitFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->onActivityCreated$lambda$1(Lcom/narvii/video/MediaSplitFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getOrgClipCount$p(Lcom/narvii/video/MediaSplitFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/MediaSplitFragment;->orgClipCount:I

    .line 3
    return p0
.end method

.method private final checkSplitAvailability(J)V
    .locals 8

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x1e

    .line 15
    .line 16
    .line 17
    const v2, 0x3ecccccd    # 0.4f

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->doSplit:Landroid/widget/ImageView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 32
    move-result p1

    .line 33
    .line 34
    cmpg-float p1, p1, v4

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->doSplit:Landroid/widget/ImageView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 46
    .line 47
    :cond_0
    iput-boolean v3, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_7

    .line 55
    .line 56
    iget v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 57
    move v5, v3

    .line 58
    move v6, v5

    .line 59
    .line 60
    :goto_0
    if-ge v5, v1, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    .line 67
    invoke-interface {v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 68
    move-result-object v7

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 73
    .line 74
    check-cast v7, Lcom/narvii/video/model/AVClipInfoPack;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    .line 78
    move-result v7

    .line 79
    add-int/2addr v6, v7

    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    int-to-long v5, v6

    .line 84
    sub-long/2addr p1, v5

    .line 85
    .line 86
    const/16 v1, 0x64

    .line 87
    int-to-long v5, v1

    .line 88
    div-long/2addr p1, v5

    .line 89
    mul-long/2addr p1, v5

    .line 90
    .line 91
    const-wide/16 v5, 0x3e8

    .line 92
    .line 93
    cmp-long v1, p1, v5

    .line 94
    .line 95
    if-ltz v1, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 99
    move-result v0

    .line 100
    .line 101
    add-int/lit16 v0, v0, -0x3e8

    .line 102
    int-to-long v0, v0

    .line 103
    .line 104
    cmp-long p1, p1, v0

    .line 105
    .line 106
    if-lez p1, :cond_3

    .line 107
    goto :goto_2

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->doSplit:Landroid/widget/ImageView;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 117
    move-result p1

    .line 118
    .line 119
    cmpg-float p1, p1, v4

    .line 120
    .line 121
    if-nez p1, :cond_4

    .line 122
    goto :goto_1

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->doSplit:Landroid/widget/ImageView;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 132
    :goto_1
    const/4 p1, 0x1

    .line 133
    .line 134
    iput-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    .line 135
    goto :goto_3

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->doSplit:Landroid/widget/ImageView;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 145
    move-result p1

    .line 146
    .line 147
    cmpg-float p1, p1, v4

    .line 148
    .line 149
    if-nez p1, :cond_6

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->doSplit:Landroid/widget/ImageView;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 159
    .line 160
    :cond_6
    iput-boolean v3, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    .line 161
    :cond_7
    :goto_3
    return-void
.end method

.method private final checkUndoStatus()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->undoSplit:Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    return-void
.end method

.method private final doSplit()V
    .locals 14

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x1e

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget v1, Lcom/narvii/mediaeditor/R$string;->reach_max_clips:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    return-void

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/narvii/video/MediaSplitFragment;->splitEnabled:Z

    .line 42
    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    :cond_1
    const/4 v1, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoPlaybackTimeText()Landroid/widget/TextView;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 64
    move-result-object v2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitTimeStack()Ljava/util/Stack;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    .line 88
    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 89
    move-result v4

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-interface {v3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 104
    move-result-object v5

    .line 105
    .line 106
    iget v3, v0, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-interface {v4}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInClip()I

    .line 114
    move-result v4

    .line 115
    int-to-double v6, v4

    .line 116
    .line 117
    iget-wide v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 118
    mul-double/2addr v6, v8

    .line 119
    .line 120
    const/16 v4, 0x64

    .line 121
    int-to-double v8, v4

    .line 122
    div-double/2addr v6, v8

    .line 123
    double-to-int v6, v6

    .line 124
    mul-int/2addr v6, v4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 128
    move-result v4

    .line 129
    sub-int/2addr v4, v6

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 133
    move-result-object v7

    .line 134
    .line 135
    const-string v8, "copy(...)"

    .line 136
    .line 137
    .line 138
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    iget v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 141
    add-int/2addr v8, v6

    .line 142
    .line 143
    iput v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 147
    move-result v6

    .line 148
    .line 149
    iput v6, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 150
    .line 151
    .line 152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    iput-object v0, v7, Lcom/narvii/video/model/BaseClipInfoPack;->clipId:Ljava/lang/String;

    .line 160
    .line 161
    iput v8, v7, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 162
    add-int/2addr v8, v4

    .line 163
    .line 164
    iput v8, v7, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 168
    move-result v0

    .line 169
    .line 170
    iput v0, v7, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 171
    .line 172
    add-int/lit8 v0, v3, 0x1

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 179
    move-result-object v4

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v8, 0x4

    .line 182
    const/4 v9, 0x0

    .line 183
    move v6, v0

    .line 184
    .line 185
    .line 186
    invoke-static/range {v4 .. v9}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->resetVideoClipList$default(Lcom/narvii/video/interfaces/IPreviewPlayer;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v1, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 193
    move-result-object v8

    .line 194
    .line 195
    if-eqz v8, :cond_3

    .line 196
    const/4 v10, 0x0

    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v12, 0x6

    .line 199
    const/4 v13, 0x0

    .line 200
    move v9, v0

    .line 201
    .line 202
    .line 203
    invoke-static/range {v8 .. v13}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoPlaybackTimeText()Landroid/widget/TextView;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    if-nez v0, :cond_4

    .line 210
    goto :goto_1

    .line 211
    .line 212
    .line 213
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    :goto_1
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->checkUndoStatus()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 224
    move-result v0

    .line 225
    int-to-long v0, v0

    .line 226
    .line 227
    .line 228
    invoke-direct {p0, v0, v1}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    .line 229
    :cond_5
    :goto_2
    return-void
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/MediaSplitFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 14
    return-object v0
.end method

.method private final getSplitOpStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitOpStack$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Stack;

    .line 9
    return-object v0
.end method

.method private final getSplitTimeStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->splitTimeStack$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Stack;

    .line 9
    return-object v0
.end method

.method private static final onActivityCreated$lambda$0(Lcom/narvii/video/MediaSplitFragment;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingSplit:Z

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->doSplit()V

    .line 20
    :goto_0
    return-void
.end method

.method private static final onActivityCreated$lambda$1(Lcom/narvii/video/MediaSplitFragment;Landroid/view/View;)V
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
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->isSeeking()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingUndoSplit:Z

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->undoSplit()V

    .line 20
    :goto_0
    return-void
.end method

.method private final undoSplit()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitTimeStack()Ljava/util/Stack;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitTimeStack()Ljava/util/Stack;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getSplitOpStack()Ljava/util/Stack;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 53
    .line 54
    if-ltz v3, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x1

    .line 60
    sub-int/2addr v4, v5

    .line 61
    .line 62
    if-lt v3, v4, :cond_1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0, v5, v5}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 71
    .line 72
    iget v4, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 73
    .line 74
    add-int/lit8 v6, v4, 0x1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-object v1, v0

    .line 82
    .line 83
    :goto_0
    if-ge v3, v4, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 91
    move-result-object v6

    .line 92
    .line 93
    .line 94
    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 105
    move-result v6

    .line 106
    sub-int/2addr v1, v6

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_0

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 124
    move-result v1

    .line 125
    .line 126
    .line 127
    invoke-interface {v3, v2, v4, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetVideoClipList(Ljava/util/ArrayList;II)Lcom/narvii/video/model/AVClipInfoPack;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v5, v4}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    move-result v1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->checkUndoStatus()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 147
    move-result v0

    .line 148
    int-to-long v0, v0

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, v0, v1}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    .line 152
    return-void

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->checkUndoStatus()V

    .line 156
    return-void

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->undoSplit:Landroid/widget/ImageView;

    .line 163
    .line 164
    const/16 v1, 0x8

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public static synthetic z(Lcom/narvii/video/MediaSplitFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/MediaSplitFragment;->onActivityCreated$lambda$0(Lcom/narvii/video/MediaSplitFragment;Landroid/view/View;)V

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

.method public initComponent()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->videoPlaybackTime:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->playerButton:Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->pauseShadow:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 52
    .line 53
    sget v1, Lcom/narvii/mediaeditor/R$string;->split:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    const-string v2, "getString(...)"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    new-instance v2, Lcom/narvii/video/MediaSplitFragment$initComponent$1;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p0}, Lcom/narvii/video/MediaSplitFragment$initComponent$1;-><init>(Lcom/narvii/video/MediaSplitFragment;)V

    .line 68
    const/4 v3, 0x4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 72
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
    iput-object v0, p0, Lcom/narvii/video/MediaSplitFragment;->outputFolderPath:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/narvii/video/MediaSplitFragment;->outputFolderPath:Ljava/lang/String;

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
    .line 37
    const-string/jumbo v9, "video"

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    .line 41
    const/16 v12, 0xc

    .line 42
    const/4 v13, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static/range {v7 .. v13}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 46
    :goto_0
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/video/MediaSplitFragment;->orgClipCount:I

    .line 18
    .line 19
    const-string v0, "activeClipIndex"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    const-string v1, "inClipPlaybackTime"

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(II)V

    .line 38
    :cond_1
    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->onActiveVideoChanged(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 11
    move-result p1

    .line 12
    int-to-long p1, p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    .line 16
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
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->doSplit:Landroid/widget/ImageView;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/video/g0;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/video/g0;-><init>(Lcom/narvii/video/MediaSplitFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;->undoSplit:Landroid/widget/ImageView;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/video/h0;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/video/h0;-><init>(Lcom/narvii/video/MediaSplitFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_media_split:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

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
    iget-object v1, p0, Lcom/narvii/video/MediaSplitFragment;->outputFolderPath:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 25
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->onFrameLocatedDuringMove(II)V

    .line 4
    int-to-long p1, p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    .line 8
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
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/video/ScrollingTimeLineFragment;->onPlayerTick(JJ)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/MediaSplitFragment;->checkSplitAvailability(J)V

    .line 7
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

.method protected onSeekingStatusChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onSeekingStatusChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingSplit:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->doSplit()V

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/video/MediaSplitFragment;->pendingSplit:Z

    .line 17
    .line 18
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/video/MediaSplitFragment;->pendingUndoSplit:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/video/MediaSplitFragment;->undoSplit()V

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/narvii/video/MediaSplitFragment;->pendingUndoSplit:Z

    .line 26
    :cond_2
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->onTimeLineLayout()V

    .line 4
    .line 5
    const-string v0, "activeClipIndex"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    const-string v1, "inClipPlaybackTime"

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(II)V

    .line 24
    :cond_1
    return-void
.end method
