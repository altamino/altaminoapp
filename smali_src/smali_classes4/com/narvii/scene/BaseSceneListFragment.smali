.class public Lcom/narvii/scene/BaseSceneListFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/scene/view/NvStoryBackgroundMusicButton$OnClickListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;
.implements Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;
.implements Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/BaseSceneListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseSceneListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSceneListFragment.kt\ncom/narvii/scene/BaseSceneListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n*L\n1#1,1374:1\n1#2:1375\n1#2:1386\n343#3,8:1376\n320#3,2:1384\n322#3,19:1387\n*S KotlinDebug\n*F\n+ 1 BaseSceneListFragment.kt\ncom/narvii/scene/BaseSceneListFragment\n*L\n597#1:1386\n560#1:1376,8\n597#1:1384,2\n597#1:1387,19\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/BaseSceneListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MODE_CREATE:I = 0x1

.field public static final MODE_EDIT:I = 0x2

.field public static final PERMISSION_COMPILE_VIDEO_TO_SHARE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BaseSceneListFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private alreadyClearUselessFile:Z

.field private final autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private autoSaveSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final backgroundMusicButton$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final createSceneLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final createSceneView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected draftId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected draftManager:Lcom/narvii/post/DraftManager;

.field private final emptyManageLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyScenePlaceholder$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final errorScenePlaceholder$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileMisssingDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isError:Z

.field private isToPreview:Z

.field private isWaitingPlaying:Z

.field private loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final manageLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private mode:I

.field protected oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oldSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private permissionDenied:Z

.field private final playerContainer$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final playerView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previewContainer$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previewLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final radiusLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final roundCornerCover$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected sceneDraft:Lcom/narvii/scene/model/SceneDraft;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

.field private sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sceneRecyclerView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedSceneId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedSceneIndex:I

.field private storyPostService:Lcom/narvii/scene/StoryPostService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private toolTipHelper:Lcom/narvii/util/ToolTipHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tvAdvancedStory$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvManage$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvTimeCurrent$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvTimeTotal$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final videoPlayButton$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final warningLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final warningView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/BaseSceneListFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/BaseSceneListFragment;->Companion:Lcom/narvii/scene/BaseSceneListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mode:I

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$id;->preview_container:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewContainer$delegate:Lw7/m;

    .line 15
    .line 16
    sget v0, Lcom/narvii/mediaeditor/R$id;->background_music_button:I

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->backgroundMusicButton$delegate:Lw7/m;

    .line 23
    .line 24
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_time_current:I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeCurrent$delegate:Lw7/m;

    .line 31
    .line 32
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_time_total:I

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeTotal$delegate:Lw7/m;

    .line 39
    .line 40
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_manage_scene:I

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvManage$delegate:Lw7/m;

    .line 47
    .line 48
    sget v0, Lcom/narvii/mediaeditor/R$id;->scene_recycler_view:I

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneRecyclerView$delegate:Lw7/m;

    .line 55
    .line 56
    sget v0, Lcom/narvii/mediaeditor/R$id;->tv_advanced_story:I

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvAdvancedStory$delegate:Lw7/m;

    .line 63
    .line 64
    sget v0, Lcom/narvii/mediaeditor/R$id;->manage_layout:I

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->manageLayout$delegate:Lw7/m;

    .line 71
    .line 72
    sget v0, Lcom/narvii/mediaeditor/R$id;->empty_manage_layout:I

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyManageLayout$delegate:Lw7/m;

    .line 79
    .line 80
    sget v0, Lcom/narvii/mediaeditor/R$id;->create_scene_layout:I

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneLayout$delegate:Lw7/m;

    .line 87
    .line 88
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_create_scene:I

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneView$delegate:Lw7/m;

    .line 95
    .line 96
    sget v0, Lcom/narvii/mediaeditor/R$id;->empty_placeholder_view:I

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyScenePlaceholder$delegate:Lw7/m;

    .line 103
    .line 104
    sget v0, Lcom/narvii/mediaeditor/R$id;->error_placeholder_view:I

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->errorScenePlaceholder$delegate:Lw7/m;

    .line 111
    .line 112
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_view:I

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerView$delegate:Lw7/m;

    .line 119
    .line 120
    sget v0, Lcom/narvii/mediaeditor/R$id;->player_container:I

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerContainer$delegate:Lw7/m;

    .line 127
    .line 128
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_play_button:I

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoPlayButton$delegate:Lw7/m;

    .line 135
    .line 136
    sget v0, Lcom/narvii/mediaeditor/R$id;->iv_warning:I

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningView$delegate:Lw7/m;

    .line 143
    .line 144
    sget v0, Lcom/narvii/mediaeditor/R$id;->fl_warning:I

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningLayout$delegate:Lw7/m;

    .line 151
    .line 152
    sget v0, Lcom/narvii/mediaeditor/R$id;->round_corner_cover:I

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->roundCornerCover$delegate:Lw7/m;

    .line 159
    .line 160
    sget v0, Lcom/narvii/mediaeditor/R$id;->radius_layout:I

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->bind(I)Lw7/m;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->radiusLayout$delegate:Lw7/m;

    .line 167
    .line 168
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$previewLayout$2;

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$previewLayout$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewLayout$delegate:Lw7/m;

    .line 178
    .line 179
    const-string v0, ""

    .line 180
    .line 181
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$fileMisssingDialog$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->fileMisssingDialog$delegate:Lw7/m;

    .line 193
    .line 194
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;

    .line 195
    .line 196
    .line 197
    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->invalidDialog$delegate:Lw7/m;

    .line 204
    .line 205
    new-instance v0, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, p0}, Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 209
    .line 210
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    .line 211
    return-void
.end method

.method public static final synthetic access$clearUselessClip(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->clearUselessClip()V

    .line 4
    return-void
.end method

.method public static final synthetic access$createPreviewLayout(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/scene/view/BaseScenePreviewLayout;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->createPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getToolTipHelper$p(Lcom/narvii/scene/BaseSceneListFragment;)Lcom/narvii/util/ToolTipHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 3
    return-object p0
.end method

.method private final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/scene/BaseSceneListFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/scene/BaseSceneListFragment$bind$1;-><init>(Lcom/narvii/scene/BaseSceneListFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final checkPermission()V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x21

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermissionAndroid13()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermissionAndroid12AndBellow()V

    .line 14
    :goto_0
    return-void
.end method

.method private final checkPermissionAndroid12AndBellow()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 7
    .line 8
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 9
    .line 10
    .line 11
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v3}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toResume(Z)V

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 35
    move-result-object v0

    .line 36
    const/4 v3, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/scene/e;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/narvii/scene/e;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->rationaleDneyCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 65
    :goto_0
    return-void
.end method

.method private static final checkPermissionAndroid12AndBellow$lambda$29(Lcom/narvii/scene/BaseSceneListFragment;Ljava/lang/Object;)V
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
    const/4 p1, 0x1

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateSceneDraft()V

    .line 13
    return-void
.end method

.method private final checkPermissionAndroid13()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "requireContext(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermissionReadImagesAndVideos(Landroid/content/Context;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toResume(Z)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    sget-object v2, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_IMAGES:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    sget-object v3, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    filled-new-array {v2, v0}, [Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    new-instance v1, Lcom/narvii/scene/f;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/narvii/scene/f;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->rationaleDneyCallback(Lcom/narvii/util/Callback;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 76
    :goto_0
    return-void
.end method

.method private static final checkPermissionAndroid13$lambda$28(Lcom/narvii/scene/BaseSceneListFragment;Ljava/lang/Object;)V
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
    const/4 p1, 0x1

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateSceneDraft()V

    .line 13
    return-void
.end method

.method private final clearUselessClip()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clearUselessClip()Lcom/narvii/scene/model/SceneDraft;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateSceneDraft()V

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->saveDraft(Z)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermission()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->startAutoSaveTask()V

    .line 35
    :cond_0
    return-void
.end method

.method private static final closeWhenDraftChanged$lambda$4(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;I)V
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
    if-nez p2, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->logEditClose()V

    .line 19
    :cond_0
    return-void
.end method

.method private final createPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x6

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p0

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    move-result-object v8

    .line 25
    .line 26
    const-string v1, "requireContext(...)"

    .line 27
    .line 28
    .line 29
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x6

    .line 33
    const/4 v12, 0x0

    .line 34
    move-object v7, v0

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v7 .. v12}, Lcom/narvii/scene/view/ScenePreviewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/k;)V

    .line 38
    :goto_0
    return-object v0
.end method

.method private final getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->backgroundMusicButton$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    .line 9
    return-object v0
.end method

.method private final getCreateSceneLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getCreateSceneView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->createSceneView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getDraftAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftManager()Lcom/narvii/post/DraftManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    :cond_1
    return-object v0
.end method

.method private final getEmptyManageLayout()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyManageLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getEmptyScenePlaceholder()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->emptyScenePlaceholder$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getErrorScenePlaceholder()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->errorScenePlaceholder$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->fileMisssingDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 9
    return-object v0
.end method

.method private final getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->invalidDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 9
    return-object v0
.end method

.method private final getManageLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->manageLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getPlayerContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerContainer$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    return-object v0
.end method

.method private final getPlayerView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->playerView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getPreviewContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewContainer$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    return-object v0
.end method

.method private final getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->previewLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 9
    return-object v0
.end method

.method private final getRadiusLayout()Lcom/narvii/widget/RadiusLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->radiusLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/RadiusLayout;

    .line 9
    return-object v0
.end method

.method private final getRoundCornerCover()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->roundCornerCover$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneRecyclerView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/scene/view/SceneRecyclerView;

    .line 9
    return-object v0
.end method

.method private final getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method private final getTvAdvancedStory()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvAdvancedStory$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getTvManage()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvManage$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getTvTimeCurrent()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeCurrent$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getTvTimeTotal()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->tvTimeTotal$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getVideoPlayButton()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoPlayButton$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getWarningLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getWarningView()Lcom/narvii/widget/TintButton;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->warningView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 9
    return-object v0
.end method

.method private final hasNoScene()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->sceneSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private final loadingVideo()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void
.end method

.method private final logEditClose()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->editClose:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "EditArea"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "storyDraftId"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 25
    return-void
.end method

.method public static synthetic n(Lcom/narvii/scene/BaseSceneListFragment;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermissionAndroid12AndBellow$lambda$29(Lcom/narvii/scene/BaseSceneListFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showTip$lambda$25(Lcom/narvii/scene/BaseSceneListFragment;)V

    return-void
.end method

.method private static final onClick$lambda$15(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;)V
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
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    .line 10
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/narvii/scene/BaseSceneListFragment;Landroid/view/View;)V
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
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string p1, "PollQuiz"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 22
    return-void
.end method

.method public static synthetic p(Lcom/narvii/scene/BaseSceneListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->onViewCreated$lambda$3(Lcom/narvii/scene/BaseSceneListFragment;Landroid/view/View;)V

    return-void
.end method

.method private final pickBackgroundMusic()V
    .locals 6

    .line 1
    .line 2
    new-instance v2, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "type"

    .line 9
    .line 10
    const-string v1, "audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftManager()Lcom/narvii/post/DraftManager;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, v3, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;

    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    .line 52
    const/16 v3, 0x4206

    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    .line 58
    return-void
.end method

.method public static synthetic q(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/BaseSceneListFragment;->closeWhenDraftChanged$lambda$4(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/scene/BaseSceneListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->showInvalidDialog$lambda$27(Lcom/narvii/scene/BaseSceneListFragment;Landroid/view/View;)V

    return-void
.end method

.method private final resetSelectedScene()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iput v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    move-result v0

    .line 44
    move v1, v3

    .line 45
    .line 46
    :goto_0
    if-ge v1, v0, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Lcom/narvii/model/Scene;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iput v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 70
    return-void

    .line 71
    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    iput v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    check-cast v0, Lcom/narvii/model/Scene;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "sceneId"

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :cond_3
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    move-result v0

    .line 108
    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    iput v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 112
    .line 113
    iput-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 114
    return-void

    .line 115
    .line 116
    :cond_4
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    move-result v0

    .line 121
    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 128
    .line 129
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 130
    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 133
    move-result v0

    .line 134
    move v1, v3

    .line 135
    .line 136
    :goto_1
    if-ge v1, v0, :cond_6

    .line 137
    .line 138
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 139
    .line 140
    .line 141
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 142
    .line 143
    iget-object v2, v2, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 144
    .line 145
    .line 146
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v4, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 157
    move-result v2

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    iput v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 162
    return-void

    .line 163
    .line 164
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_1

    .line 166
    .line 167
    :cond_6
    iput v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 168
    .line 169
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 173
    .line 174
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 182
    .line 183
    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 186
    .line 187
    const-string v1, "id"

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 193
    :goto_2
    return-void
.end method

.method public static synthetic s(Lcom/narvii/scene/BaseSceneListFragment;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermissionAndroid13$lambda$28(Lcom/narvii/scene/BaseSceneListFragment;Ljava/lang/Object;)V

    return-void
.end method

.method private final sceneChanged(ILjava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneCanPlaying(ZLjava/lang/String;)V

    .line 37
    .line 38
    :cond_0
    iput p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer()V

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v1, "sceneChanged  >>>  sceneId = "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p2, "  index = "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    const-string p2, "BaseSceneListFragment"

    .line 74
    .line 75
    .line 76
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private final sceneSize()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    move-result v1

    .line 29
    :cond_1
    :goto_0
    return v1
.end method

.method private final showInvalidDialog()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->b(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sget v1, Lcom/narvii/mediaeditor/R$string;->invalid_input:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    new-instance v1, Lcom/narvii/scene/g;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/narvii/scene/g;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 45
    .line 46
    .line 47
    const v2, 0x104000a

    .line 48
    const/4 v3, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getInvalidDialog()Lcom/narvii/util/dialog/AlertDialog;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 66
    :cond_0
    return-void
.end method

.method private static final showInvalidDialog$lambda$27(Lcom/narvii/scene/BaseSceneListFragment;Landroid/view/View;)V
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
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 14
    return-void
.end method

.method private final showTip()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/helper/ScenePrefsHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "requireContext(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/ScenePrefsHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/scene/helper/ScenePrefsHelper;->isFirstEdit()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/util/ToolTipHelper;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/scene/a;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/narvii/scene/a;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/narvii/scene/BaseSceneListFragment$showTip$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method private static final showTip$lambda$25(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 2

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
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->getItemView(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sget v1, Lcom/narvii/mediaeditor/R$string;->tap_to_add_videos:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 43
    :cond_0
    return-void
.end method

.method private final startAutoSaveTask()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraftInterval()I

    .line 19
    move-result v1

    .line 20
    int-to-long v1, v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 24
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->onClick$lambda$15(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "sceneListHelper"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V

    .line 18
    return-void
.end method

.method private final updateBgMusicButton()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    goto :goto_2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v1, v0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x2

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sget v3, Lcom/narvii/mediaeditor/R$string;->background_music:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->setMode(ILjava/lang/String;)V

    .line 59
    goto :goto_2

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_3

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v2, 0x3

    .line 72
    .line 73
    :goto_1
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->fileName:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2, v0}, Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;->setMode(ILjava/lang/String;)V

    .line 79
    :cond_4
    :goto_2
    return-void
.end method

.method private final updateData()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    instance-of v0, v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->setSceneList(Ljava/util/List;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method private final updateList()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneList(Ljava/util/List;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getManageLayout()Landroid/view/View;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneLayout()Landroid/view/View;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->hasNoScene()Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getManageLayout()Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneLayout()Landroid/view/View;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    goto :goto_1

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getManageLayout()Landroid/view/View;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneLayout()Landroid/view/View;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :goto_1
    return-void
.end method

.method private final updatePlayerContainer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer(Ljava/lang/String;)V

    return-void
.end method

.method private final updatePlayerContainer(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getErrorScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getErrorScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvManage()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->hasNoScene()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x32ffffff

    goto :goto_1

    :cond_3
    const v0, -0x50503

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 19
    :cond_4
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 24
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isCanPlay()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 25
    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 26
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 27
    :cond_6
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneInfo;->isError()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    .line 31
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    .line 35
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 36
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private final updatePreviewLayout()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.ScenePreviewLayout"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/ScenePreviewLayout;->setSceneDraft(Lcom/narvii/scene/model/SceneDraft;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/scene/view/ScenePreviewLayout;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/ScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    instance-of v0, v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v1, "null cannot be cast to non-null type com.narvii.scene.view.EditScenePreviewLayout"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/EditScenePreviewLayout;->setSceneList(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    check-cast v0, Lcom/narvii/scene/view/EditScenePreviewLayout;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/EditScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method private final updateSceneDraft()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateData()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toResume(Z)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 19
    return-void
.end method

.method private final updateTitle()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const/16 v1, 0x2f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->sceneSize()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    return-void
.end method

.method private final updateView()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->resetSelectedScene()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 16
    return-void
.end method


# virtual methods
.method protected final autoSaveDraftInterval()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public beforePlayingPause()V
    .locals 0

    return-void
.end method

.method public beforePlayingStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    .line 10
    :cond_0
    return-void
.end method

.method protected closeWhenDraftChanged()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$string;->discard_changes:I

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/scene/b;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/scene/b;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 27
    return-void
.end method

.method public editVideo(Lcom/narvii/scene/model/SceneInfo;I)V
    .locals 0
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/BaseSceneListFragment;->toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V

    .line 12
    return-void
.end method

.method protected getActionBarLayoutId()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_dark_layout:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$layout;->actionbar_layout_no_shadow:I

    .line 12
    :goto_0
    return v0
.end method

.method public final getBooleanParam(Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method public getCustomTheme()I
    .locals 1

    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method protected final getDraftManager()Lcom/narvii/post/DraftManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "draftManager"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method protected getMajorTextColor()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    const v0, -0xb5b5b6

    .line 12
    :goto_0
    return v0
.end method

.method protected final getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "mediaPickerFragment"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "story_edit"

    return-object v0
.end method

.method protected final getRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    .line 15
    :goto_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const-string p2, ""

    .line 24
    :cond_1
    return-object p2
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEditMode()Z
    .locals 2

    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifySceneDraftChanged(Z)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "update"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 12
    .line 13
    new-instance v2, Lcom/narvii/scene/notification/SceneDraftWrapper;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3, v4, p1}, Lcom/narvii/scene/notification/SceneDraftWrapper;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/scene/notification/SceneDraftWrapper;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3, p1}, Lcom/narvii/scene/notification/SceneDraftWrapper;-><init>(Lcom/narvii/scene/model/SceneDraft;Z)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 40
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVDialog;->onActiveChanged(Z)V

    .line 11
    :cond_0
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
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    sget v0, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setBackButtonTint(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    sget v0, Lcom/narvii/mediaeditor/R$color;->story_theme_text_color:I

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleColor(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v1, "onActivityResult  >>>  requestCode = "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "    resultCode = "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "BaseSceneListFragment"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 36
    .line 37
    const-string v1, "sceneListHelper"

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 44
    move-object v0, v2

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneQuizResult(IILandroid/content/Intent;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 54
    .line 55
    const-string p1, "sceneId"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    const-string p2, "question"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    const-class p3, Lcom/narvii/model/QuizQuestion;

    .line 68
    .line 69
    .line 70
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    check-cast p2, Lcom/narvii/model/QuizQuestion;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 77
    move-result p3

    .line 78
    .line 79
    if-eqz p3, :cond_3

    .line 80
    .line 81
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 85
    .line 86
    check-cast p3, Ljava/lang/Iterable;

    .line 87
    .line 88
    .line 89
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object p3

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    move-object v1, v0

    .line 102
    .line 103
    check-cast v1, Lcom/narvii/model/Scene;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 109
    move-result v1

    .line 110
    .line 111
    if-eqz v1, :cond_1

    .line 112
    move-object v2, v0

    .line 113
    .line 114
    :cond_2
    check-cast v2, Lcom/narvii/model/Scene;

    .line 115
    .line 116
    if-eqz v2, :cond_1b

    .line 117
    .line 118
    iput-object p2, v2, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_3
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 126
    .line 127
    .line 128
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    if-eqz p1, :cond_1b

    .line 135
    .line 136
    iput-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 140
    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :cond_4
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 144
    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 149
    move-object v0, v2

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isScenePollResult(IILandroid/content/Intent;)Z

    .line 153
    move-result v0

    .line 154
    const/4 v3, 0x1

    .line 155
    .line 156
    const-string v4, "sceneInfo"

    .line 157
    .line 158
    const-class v5, Lcom/narvii/scene/model/SceneInfo;

    .line 159
    .line 160
    if-eqz v0, :cond_b

    .line 161
    .line 162
    .line 163
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 174
    .line 175
    iget-object p2, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 181
    move-result p3

    .line 182
    .line 183
    if-eqz p3, :cond_a

    .line 184
    .line 185
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 186
    .line 187
    .line 188
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 189
    .line 190
    check-cast p3, Ljava/lang/Iterable;

    .line 191
    .line 192
    .line 193
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    move-result-object p3

    .line 195
    .line 196
    .line 197
    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    move-result v0

    .line 199
    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    .line 203
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 205
    move-object v1, v0

    .line 206
    .line 207
    check-cast v1, Lcom/narvii/model/Scene;

    .line 208
    .line 209
    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 213
    move-result v1

    .line 214
    .line 215
    if-eqz v1, :cond_6

    .line 216
    move-object v2, v0

    .line 217
    .line 218
    :cond_7
    check-cast v2, Lcom/narvii/model/Scene;

    .line 219
    .line 220
    if-eqz v2, :cond_1b

    .line 221
    .line 222
    iget-object p2, v2, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 223
    .line 224
    if-eqz p2, :cond_9

    .line 225
    .line 226
    if-eqz p1, :cond_9

    .line 227
    .line 228
    iget-boolean p3, p2, Lcom/narvii/model/PollAttach;->isModified:Z

    .line 229
    .line 230
    if-nez p3, :cond_8

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, p1}, Lcom/narvii/model/PollAttach;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result p2

    .line 235
    .line 236
    if-nez p2, :cond_8

    .line 237
    goto :goto_0

    .line 238
    .line 239
    :cond_8
    iget-object p2, v2, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 240
    .line 241
    iget-boolean v3, p2, Lcom/narvii/model/PollAttach;->isModified:Z

    .line 242
    .line 243
    :goto_0
    iput-boolean v3, p1, Lcom/narvii/model/PollAttach;->isModified:Z

    .line 244
    .line 245
    :cond_9
    iput-object p1, v2, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 246
    .line 247
    .line 248
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 249
    .line 250
    goto/16 :goto_5

    .line 251
    .line 252
    :cond_a
    iget-object p3, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 253
    .line 254
    .line 255
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, p2}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 259
    move-result-object p2

    .line 260
    .line 261
    if-eqz p2, :cond_1b

    .line 262
    .line 263
    iput-object p1, p2, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 264
    .line 265
    .line 266
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 267
    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_b
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 271
    .line 272
    if-nez v0, :cond_c

    .line 273
    .line 274
    .line 275
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 276
    move-object v0, v2

    .line 277
    .line 278
    .line 279
    :cond_c
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneManageResult(IILandroid/content/Intent;)Z

    .line 280
    move-result v0

    .line 281
    .line 282
    if-eqz v0, :cond_d

    .line 283
    .line 284
    .line 285
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 286
    .line 287
    const-string p1, "scene_list"

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object p1

    .line 292
    .line 293
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 294
    .line 295
    .line 296
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 297
    .line 298
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 302
    .line 303
    iget v0, v0, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 304
    .line 305
    const-string v1, "draft_serial_no"

    .line 306
    .line 307
    .line 308
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 309
    move-result p3

    .line 310
    .line 311
    iput p3, p2, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 312
    .line 313
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 314
    .line 315
    .line 316
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 320
    move-result-object p1

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->setSceneInfos(Ljava/util/List;)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 327
    .line 328
    .line 329
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    .line 330
    .line 331
    goto/16 :goto_5

    .line 332
    .line 333
    :cond_d
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 334
    .line 335
    if-nez v0, :cond_e

    .line 336
    .line 337
    .line 338
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 339
    move-object v0, v2

    .line 340
    .line 341
    .line 342
    :cond_e
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneEditorResult(IILandroid/content/Intent;)Z

    .line 343
    move-result v0

    .line 344
    .line 345
    if-eqz v0, :cond_13

    .line 346
    .line 347
    .line 348
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    move-result-object p1

    .line 353
    .line 354
    .line 355
    invoke-static {p1, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 356
    move-result-object p1

    .line 357
    .line 358
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 359
    .line 360
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 361
    .line 362
    .line 363
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 364
    .line 365
    if-eqz p1, :cond_f

    .line 366
    .line 367
    iget-object p3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 368
    goto :goto_1

    .line 369
    :cond_f
    move-object p3, v2

    .line 370
    .line 371
    .line 372
    :goto_1
    invoke-virtual {p2, p3}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 373
    move-result-object p2

    .line 374
    .line 375
    if-eqz p2, :cond_10

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 379
    .line 380
    :cond_10
    if-eqz p2, :cond_11

    .line 381
    .line 382
    iget-object v2, p2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 383
    .line 384
    :cond_11
    if-nez v2, :cond_12

    .line 385
    .line 386
    const-string v2, ""

    .line 387
    .line 388
    :cond_12
    iput-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 389
    .line 390
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 391
    .line 392
    .line 393
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    .line 397
    .line 398
    .line 399
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 400
    .line 401
    .line 402
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    .line 403
    .line 404
    goto/16 :goto_5

    .line 405
    .line 406
    :cond_13
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 407
    .line 408
    if-nez v0, :cond_14

    .line 409
    .line 410
    .line 411
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 412
    move-object v0, v2

    .line 413
    .line 414
    .line 415
    :cond_14
    invoke-virtual {v0, p1, p2}, Lcom/narvii/scene/helper/SceneListHelper;->isScenePreviewResult(II)Z

    .line 416
    move-result v0

    .line 417
    .line 418
    if-eqz v0, :cond_15

    .line 419
    .line 420
    .line 421
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    .line 422
    .line 423
    goto/16 :goto_5

    .line 424
    .line 425
    :cond_15
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 426
    .line 427
    if-nez v0, :cond_16

    .line 428
    .line 429
    .line 430
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 431
    move-object v0, v2

    .line 432
    .line 433
    .line 434
    :cond_16
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneListHelper;->isSceneBackgroundResult(IILandroid/content/Intent;)Z

    .line 435
    move-result v0

    .line 436
    .line 437
    if-eqz v0, :cond_17

    .line 438
    .line 439
    .line 440
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 441
    .line 442
    const-string p1, "bgMusicClip"

    .line 443
    .line 444
    .line 445
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    move-result-object p1

    .line 447
    .line 448
    const-class p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 449
    .line 450
    .line 451
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 452
    move-result-object p1

    .line 453
    .line 454
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 455
    .line 456
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 457
    .line 458
    .line 459
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->setBgMusicClip(Lcom/narvii/video/model/AVClipInfoPack;)V

    .line 463
    .line 464
    .line 465
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 466
    .line 467
    .line 468
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    .line 469
    goto :goto_5

    .line 470
    .line 471
    .line 472
    :cond_17
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 473
    move-result v0

    .line 474
    .line 475
    if-nez v0, :cond_1b

    .line 476
    const/4 v0, -0x1

    .line 477
    .line 478
    if-ne p2, v0, :cond_1b

    .line 479
    .line 480
    .line 481
    const p2, 0xfd30

    .line 482
    .line 483
    if-ne p1, p2, :cond_1b

    .line 484
    .line 485
    if-eqz p3, :cond_1b

    .line 486
    .line 487
    const-string p1, "media"

    .line 488
    .line 489
    .line 490
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    move-result-object p1

    .line 492
    .line 493
    const-class p2, Lcom/narvii/model/Media;

    .line 494
    .line 495
    .line 496
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 497
    move-result-object p1

    .line 498
    .line 499
    check-cast p1, Lcom/narvii/model/Media;

    .line 500
    .line 501
    const-string p2, "bundle"

    .line 502
    .line 503
    .line 504
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 505
    move-result-object p2

    .line 506
    .line 507
    if-nez p2, :cond_18

    .line 508
    .line 509
    new-instance p2, Landroid/os/Bundle;

    .line 510
    .line 511
    .line 512
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 513
    :cond_18
    move-object v9, p2

    .line 514
    .line 515
    .line 516
    invoke-static {v9}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 520
    .line 521
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 522
    .line 523
    if-nez p2, :cond_19

    .line 524
    .line 525
    .line 526
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 527
    move-object v4, v2

    .line 528
    goto :goto_2

    .line 529
    :cond_19
    move-object v4, p2

    .line 530
    .line 531
    .line 532
    :goto_2
    invoke-static {p1}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 533
    move-result-object v5

    .line 534
    .line 535
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    invoke-direct {p0, p2}, Lcom/narvii/scene/BaseSceneListFragment;->getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 539
    move-result-object v6

    .line 540
    .line 541
    iget p1, p1, Lcom/narvii/model/Media;->type:I

    .line 542
    .line 543
    const/16 p2, 0x64

    .line 544
    .line 545
    if-ne p1, p2, :cond_1a

    .line 546
    :goto_3
    move v7, v3

    .line 547
    goto :goto_4

    .line 548
    :cond_1a
    const/4 v3, 0x0

    .line 549
    goto :goto_3

    .line 550
    .line 551
    .line 552
    :goto_4
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 553
    move-result-object v8

    .line 554
    .line 555
    .line 556
    invoke-virtual/range {v4 .. v9}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Ljava/util/List;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 557
    :cond_1b
    :goto_5
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->closeWhenDraftChanged()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->logEditClose()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2, v1, v0}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;ZZ)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->closeWhenDraftChanged()V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->logEditClose()V

    .line 63
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_manage_scene:I

    if-nez p1, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-nez p1, :cond_2

    const-string p1, "sceneListHelper"

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, p1}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneManager(Lcom/narvii/scene/model/SceneDraft;)V

    goto/16 :goto_7

    :cond_3
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->iv_create_scene:I

    const/4 v2, 0x1

    if-nez p1, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_6

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_5

    .line 6
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->createEmptyScene()Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_5
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->sceneSize()I

    move-result p1

    if-ne p1, v2, :cond_11

    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showTip()V

    goto/16 :goto_7

    :cond_6
    :goto_3
    sget v1, Lcom/narvii/mediaeditor/R$id;->tv_advanced_story:I

    if-nez p1, :cond_7

    goto :goto_4

    .line 10
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_a

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz p1, :cond_8

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-ne p1, v2, :cond_8

    goto/16 :goto_7

    .line 12
    :cond_8
    new-instance p1, Lcom/narvii/scene/BaseSceneListFragment$onClick$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/BaseSceneListFragment$onClick$2;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    .line 13
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz p1, :cond_9

    .line 14
    new-instance v0, Lcom/narvii/scene/c;

    invoke-direct {v0, p0}, Lcom/narvii/scene/c;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_9
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->videoAdvanceDialog:Lcom/narvii/scene/dialog/VideoAdvanceDialog;

    if-eqz p1, :cond_11

    .line 15
    invoke-virtual {p1}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;->show()V

    goto :goto_7

    :cond_a
    :goto_4
    sget v1, Lcom/narvii/mediaeditor/R$id;->fl_warning:I

    if-nez p1, :cond_b

    goto :goto_5

    .line 16
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 17
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/BaseSceneListFragment;->toSceneEditor(Lcom/narvii/scene/model/SceneInfo;Z)V

    goto :goto_7

    :cond_c
    :goto_5
    sget v1, Lcom/narvii/mediaeditor/R$id;->empty_placeholder_view:I

    if-nez p1, :cond_d

    goto :goto_6

    .line 19
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_f

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    :cond_e
    if-eqz v0, :cond_11

    iget p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->pickVideo(Lcom/narvii/scene/model/SceneInfo;I)V

    goto :goto_7

    :cond_f
    :goto_6
    sget v0, Lcom/narvii/mediaeditor/R$id;->error_placeholder_view:I

    if-nez p1, :cond_10

    goto :goto_7

    .line 22
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_11

    .line 23
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateData()V

    .line 24
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    .line 25
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->play()V

    :cond_11
    :goto_7
    return-void
.end method

.method public onClick(Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;I)V
    .locals 1
    .param p1    # Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 27
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    if-nez p1, :cond_1

    const-string p1, "sceneListHelper"

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneBackgroundMusic(Lcom/narvii/scene/model/SceneDraft;Lcom/narvii/video/model/AVClipInfoPack;)V

    goto :goto_2

    .line 30
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->pickBackgroundMusic()V

    :cond_3
    :goto_2
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
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "isEdit"

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getBooleanParam(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    .line 17
    :goto_0
    iput v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->mode:I

    .line 18
    .line 19
    const-string v0, "selectedIndex"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    const-string v0, "sceneList"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-class v3, Lcom/narvii/model/Scene;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    :goto_1
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 56
    .line 57
    const-string v0, "draftId"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "alreadyClearUselessFile"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getBooleanParam(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    .line 69
    move-result p1

    .line 70
    .line 71
    iput-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->alreadyClearUselessFile:Z

    .line 72
    .line 73
    iget p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 74
    .line 75
    if-lez p1, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 84
    move-result v0

    .line 85
    .line 86
    if-ge p1, v0, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 92
    .line 93
    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    check-cast p1, Lcom/narvii/model/Scene;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 102
    .line 103
    if-nez p1, :cond_2

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move-object v2, p1

    .line 106
    .line 107
    :goto_2
    iput-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 108
    .line 109
    :cond_3
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneList:Ljava/util/List;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneList:Ljava/util/List;

    .line 122
    goto :goto_5

    .line 123
    .line 124
    :cond_4
    const-string v0, "sceneDraft"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->getStringParam(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    const-class v0, Lcom/narvii/scene/model/SceneDraft;

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    .line 137
    .line 138
    if-nez p1, :cond_5

    .line 139
    .line 140
    new-instance p1, Lcom/narvii/scene/model/SceneDraft;

    .line 141
    .line 142
    .line 143
    invoke-direct {p1}, Lcom/narvii/scene/model/SceneDraft;-><init>()V

    .line 144
    .line 145
    :cond_5
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 149
    .line 150
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    .line 151
    .line 152
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 153
    .line 154
    iget p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 155
    .line 156
    if-lez p1, :cond_8

    .line 157
    .line 158
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 162
    .line 163
    iget-object v0, v0, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 164
    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 167
    move-result v0

    .line 168
    .line 169
    if-ge p1, v0, :cond_8

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 175
    .line 176
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 177
    .line 178
    iget v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 179
    .line 180
    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    .line 185
    .line 186
    if-eqz p1, :cond_6

    .line 187
    .line 188
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    const/4 p1, 0x0

    .line 191
    .line 192
    :goto_3
    if-nez p1, :cond_7

    .line 193
    goto :goto_4

    .line 194
    :cond_7
    move-object v2, p1

    .line 195
    .line 196
    :goto_4
    iput-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 197
    .line 198
    :cond_8
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 199
    .line 200
    .line 201
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 208
    .line 209
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 210
    .line 211
    .line 212
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 219
    .line 220
    :goto_5
    const-string p1, "draft"

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    const-string v0, "getService(...)"

    .line 227
    .line 228
    .line 229
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    check-cast p1, Lcom/narvii/post/DraftManager;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->setDraftManager(Lcom/narvii/post/DraftManager;)V

    .line 235
    .line 236
    new-instance p1, Lcom/narvii/scene/helper/SceneListHelper;

    .line 237
    .line 238
    .line 239
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneListHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 240
    .line 241
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 245
    move-result p1

    .line 246
    .line 247
    if-eqz p1, :cond_9

    .line 248
    .line 249
    .line 250
    const-string/jumbo p1, "storyPost"

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    check-cast p1, Lcom/narvii/scene/StoryPostService;

    .line 257
    .line 258
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->storyPostService:Lcom/narvii/scene/StoryPostService;

    .line 259
    .line 260
    .line 261
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 262
    move-result-object p1

    .line 263
    .line 264
    const-string v0, "playListMediaPicker"

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 268
    move-result-object p1

    .line 269
    .line 270
    instance-of v1, p1, Lcom/narvii/media/MediaPickerFragment;

    .line 271
    .line 272
    if-eqz v1, :cond_a

    .line 273
    .line 274
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 275
    goto :goto_6

    .line 276
    .line 277
    :cond_a
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 278
    .line 279
    .line 280
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 284
    move-result-object v1

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 288
    move-result-object v1

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 292
    move-result-object v0

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 296
    .line 297
    .line 298
    :goto_6
    invoke-virtual {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->setMediaPickerFragment(Lcom/narvii/media/MediaPickerFragment;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;

    .line 302
    move-result-object p1

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 306
    .line 307
    new-instance p1, Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 308
    .line 309
    .line 310
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;

    .line 315
    move-result-object v1

    .line 316
    .line 317
    .line 318
    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V

    .line 319
    .line 320
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 321
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    sget v0, Lcom/narvii/lib/R$string;->compose_preview:I

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    sget v0, Lcom/narvii/lib/R$string;->ion_eye:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    const v3, 0x3f59999a    # 0.85f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget v4, Lcom/narvii/mediaeditor/R$color;->story_theme_text_color:I

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 45
    move-result v4

    .line 46
    .line 47
    const/16 v5, 0x7f

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v0, p2

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 56
    move-result-object p1

    .line 57
    const/4 p2, 0x2

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 61
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
    sget p3, Lcom/narvii/mediaeditor/R$layout;->post_scene_layout:I

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

.method public onDeletePoll(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/narvii/model/Scene;->getScene(Ljava/lang/String;Ljava/util/List;)Lcom/narvii/model/Scene;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iput-object v1, p1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iput-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    .line 34
    return-void
.end method

.method public onDeleteQuiz(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/narvii/model/Scene;->getScene(Ljava/lang/String;Ljava/util/List;)Lcom/narvii/model/Scene;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iput-object v1, p1, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iput-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->release()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMediaPickerFragment()Lcom/narvii/media/MediaPickerFragment;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 18
    return-void
.end method

.method public onEditPoll(Lcom/narvii/scene/SceneWrapper;)V
    .locals 3
    .param p1    # Lcom/narvii/scene/SceneWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    const-string v2, "sceneListHelper"

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v0

    .line 28
    .line 29
    :goto_0
    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1, v0}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditPoll(Lcom/narvii/model/Scene;Ljava/lang/String;)V

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v1, v0

    .line 47
    .line 48
    :goto_1
    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1, v0}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditPoll(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    .line 56
    :cond_3
    :goto_2
    return-void
.end method

.method public onEditQuiz(Lcom/narvii/scene/SceneWrapper;)V
    .locals 3
    .param p1    # Lcom/narvii/scene/SceneWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    const-string v2, "sceneListHelper"

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v0

    .line 28
    .line 29
    :goto_0
    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->scene:Lcom/narvii/model/Scene;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1, v0}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditQuiz(Lcom/narvii/model/Scene;Ljava/lang/String;)V

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v1, v0

    .line 47
    .line 48
    :goto_1
    iget-object p1, p1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1, v0}, Lcom/narvii/scene/helper/SceneListHelper;->launchEditQuiz(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    .line 56
    :cond_3
    :goto_2
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3
    .param p1    # Lcom/narvii/notification/Notification;
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
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    .line 9
    :goto_0
    instance-of v2, v1, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 14
    .line 15
    if-eqz p1, :cond_6

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->dismissTemplate()V

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_1
    instance-of v1, v1, Lcom/narvii/scene/notification/SceneInfoObject;

    .line 22
    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    const-string v1, "null cannot be cast to non-null type com.narvii.scene.notification.SceneInfoObject"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/scene/notification/SceneInfoObject;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/scene/notification/SceneInfoObject;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object v2, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v2, v0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {v1, v2}, Lcom/narvii/scene/model/SceneDraft;->getSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/narvii/scene/model/SceneInfo;->copyScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 55
    .line 56
    :cond_3
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v0, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 59
    .line 60
    :cond_4
    if-nez v0, :cond_5

    .line 61
    .line 62
    const-string v0, ""

    .line 63
    .line 64
    :cond_5
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->correctBgMusicClip()V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    .line 79
    :cond_6
    :goto_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$string;->compose_preview:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/logging/ActSemantic;->preview:Lcom/narvii/logging/ActSemantic;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "PreviewIcon"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isToPreview:Z

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->storyPostService:Lcom/narvii/scene/StoryPostService;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/narvii/scene/StoryPostService;->launchStoryPreview(Ljava/util/List;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    const-string v0, "sceneListHelper"

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/scene/helper/SceneListHelper;->launchScenePreview(Lcom/narvii/scene/model/SceneDraft;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->isPlaying()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toPause()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->alreadyClearUselessFile:Z

    .line 30
    .line 31
    const-string v0, "editorPackFactory"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "null cannot be cast to non-null type com.narvii.video.services.IEditorPackFactory"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/video/services/IEditorPackFactory;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Lcom/narvii/video/services/IEditorPackFactory;->getVideoRecycler()Lcom/narvii/video/interfaces/IEditorRecycler;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IEditorRecycler;->clearCacheResources()V

    .line 52
    .line 53
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveDraft:Lcom/narvii/scene/BaseSceneListFragment$autoSaveDraft$1;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    :cond_1
    return-void
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "deniedPermissions"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateSceneDraft()V

    .line 10
    :cond_0
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 17
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v6, p2

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/scene/BaseSceneListFragment;->getSelectedSceneInfo(Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    if-eqz v3, :cond_c

    .line 15
    .line 16
    if-eqz v2, :cond_c

    .line 17
    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-lez v1, :cond_c

    .line 23
    .line 24
    if-eqz v6, :cond_c

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "type"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    check-cast v5, Lcom/narvii/model/Media;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v7

    .line 43
    .line 44
    if-eqz v7, :cond_0

    .line 45
    return-void

    .line 46
    .line 47
    .line 48
    :cond_0
    const-string/jumbo v7, "video"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    move-result v7

    .line 53
    .line 54
    const-string v8, "sceneListHelper"

    .line 55
    const/4 v9, 0x0

    .line 56
    .line 57
    if-eqz v7, :cond_a

    .line 58
    .line 59
    .line 60
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 69
    move-result v5

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    move-object v7, v5

    .line 77
    .line 78
    check-cast v7, Lcom/narvii/model/Media;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Lcom/narvii/model/Media;->isVideo()Z

    .line 82
    move-result v7

    .line 83
    .line 84
    if-eqz v7, :cond_1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move-object v5, v9

    .line 87
    .line 88
    :goto_0
    check-cast v5, Lcom/narvii/model/Media;

    .line 89
    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    new-instance v1, Lcom/narvii/scene/helper/SceneSpHelper;

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v0}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 96
    .line 97
    iget-object v7, v5, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 98
    .line 99
    const-string v10, "fileName"

    .line 100
    .line 101
    .line 102
    invoke-static {v7, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v5, v7}, Lcom/narvii/scene/helper/SceneSpHelper;->saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    check-cast v1, Lcom/narvii/model/Media;

    .line 112
    .line 113
    if-eqz v1, :cond_c

    .line 114
    .line 115
    iget-object v5, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v5

    .line 120
    .line 121
    if-nez v5, :cond_c

    .line 122
    .line 123
    iget v5, v1, Lcom/narvii/model/Media;->type:I

    .line 124
    .line 125
    const/16 v7, 0x67

    .line 126
    .line 127
    const-string v10, "/scene_intermediate_file/"

    .line 128
    .line 129
    if-ne v5, v7, :cond_4

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v1, v6, v2}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_4
    const/16 v7, 0x7b

    .line 156
    const/4 v11, 0x1

    .line 157
    .line 158
    const/16 v12, 0x64

    .line 159
    .line 160
    if-ne v5, v7, :cond_8

    .line 161
    .line 162
    iget-wide v13, v1, Lcom/narvii/model/Media;->duration:J

    .line 163
    .line 164
    .line 165
    const-wide/32 v15, 0xee47

    .line 166
    .line 167
    cmp-long v5, v13, v15

    .line 168
    .line 169
    if-lez v5, :cond_5

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v1, v6, v2}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 192
    goto :goto_3

    .line 193
    .line 194
    :cond_5
    iget-object v5, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 195
    .line 196
    if-nez v5, :cond_6

    .line 197
    .line 198
    .line 199
    invoke-static {v8}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 200
    move-object v5, v9

    .line 201
    .line 202
    :cond_6
    iget v1, v1, Lcom/narvii/model/Media;->type:I

    .line 203
    .line 204
    if-ne v1, v12, :cond_7

    .line 205
    :goto_1
    move v4, v11

    .line 206
    .line 207
    .line 208
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->getDraftAbsolutePath()Ljava/lang/String;

    .line 209
    move-result-object v7

    .line 210
    move-object v1, v5

    .line 211
    .line 212
    move-object/from16 v2, p1

    .line 213
    move-object v5, v7

    .line 214
    .line 215
    move-object/from16 v6, p2

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Ljava/util/List;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 219
    goto :goto_3

    .line 220
    .line 221
    :cond_8
    iget-object v5, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 222
    .line 223
    if-nez v5, :cond_9

    .line 224
    .line 225
    .line 226
    invoke-static {v8}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 227
    move-object v5, v9

    .line 228
    .line 229
    :cond_9
    iget v1, v1, Lcom/narvii/model/Media;->type:I

    .line 230
    .line 231
    if-ne v1, v12, :cond_7

    .line 232
    goto :goto_1

    .line 233
    .line 234
    :cond_a
    const-string v2, "audio"

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 238
    move-result v1

    .line 239
    .line 240
    if-eqz v1, :cond_c

    .line 241
    .line 242
    iget-object v1, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneListHelper:Lcom/narvii/scene/helper/SceneListHelper;

    .line 243
    .line 244
    if-nez v1, :cond_b

    .line 245
    .line 246
    .line 247
    invoke-static {v8}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 248
    goto :goto_2

    .line 249
    :cond_b
    move-object v9, v1

    .line 250
    .line 251
    :goto_2
    iget-object v1, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9, v1, v5, v6}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneBackgroundMusic(Lcom/narvii/scene/model/SceneDraft;Lcom/narvii/model/Media;Landroid/os/Bundle;)V

    .line 255
    :cond_c
    :goto_3
    return-void
.end method

.method public onPlayingError(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneCanPlaying(ZLjava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 39
    .line 40
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 41
    .line 42
    .line 43
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v2}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->permissionDenied:Z

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showInvalidDialog()V

    .line 58
    .line 59
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    const-string v2, "onPlayingError >>>  previewLayout visibility : "

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 75
    move-result v2

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    move v0, v1

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string v0, "BaseSceneListFragment"

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onPlayingPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    .line 16
    return-void
.end method

.method public onPlayingProgress(JJ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeCurrent()Landroid/widget/TextView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeTotal()Landroid/widget/TextView;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p4}, Lcom/narvii/scene/helper/SceneUtils;->durationMsToUIText(J)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method

.method public onPlayingStart()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getVideoPlayButton()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->setPlaying(Z)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3, v2}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Lcom/narvii/scene/view/SceneRecyclerView;->setSceneCanPlaying(ZLjava/lang/String;)V

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v3, "onPlayingStart >>>  previewLayout visibility : "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 70
    move-result v3

    .line 71
    .line 72
    if-nez v3, :cond_2

    .line 73
    move v1, v2

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    const-string v1, "BaseSceneListFragment"

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onPlayingStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/narvii/scene/BaseSceneListFragment;->onSelected(Ljava/lang/String;I)V

    .line 14
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 18
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "menu"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v2

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v2, v0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    :goto_0
    sget v3, Lcom/narvii/mediaeditor/R$string;->compose_preview:I

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    xor-int/lit8 v3, v2, 0x1

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    sget v3, Lcom/narvii/lib/R$string;->ion_eye:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    .line 65
    const v7, 0x3f59999a    # 0.85f

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    .line 73
    move-result v4

    .line 74
    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    sget v4, Lcom/narvii/mediaeditor/R$color;->white:I

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_1
    sget v4, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 84
    move-result v8

    .line 85
    .line 86
    const/16 v9, 0xff

    .line 87
    const/4 v10, 0x0

    .line 88
    move-object v4, v2

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v4 .. v10}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 92
    goto :goto_3

    .line 93
    .line 94
    :cond_2
    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v12

    .line 99
    .line 100
    sget v3, Lcom/narvii/lib/R$string;->ion_eye:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object v13

    .line 105
    .line 106
    .line 107
    const v14, 0x3f59999a    # 0.85f

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/scene/BaseSceneListFragment;->isDarkTheme()Z

    .line 115
    move-result v4

    .line 116
    .line 117
    if-eqz v4, :cond_3

    .line 118
    .line 119
    sget v4, Lcom/narvii/mediaeditor/R$color;->white:I

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :cond_3
    sget v4, Lcom/narvii/mediaeditor/R$color;->story_theme_action_bar_view:I

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 126
    move-result v15

    .line 127
    .line 128
    const/16 v16, 0x7f

    .line 129
    .line 130
    const/16 v17, 0x0

    .line 131
    move-object v11, v2

    .line 132
    .line 133
    .line 134
    invoke-direct/range {v11 .. v17}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FIIZ)V

    .line 135
    .line 136
    .line 137
    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 138
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideoProgressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 18
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->toResume(Z)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isWaitingPlaying:Z

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->isToPreview:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->startAutoSaveTask()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->originFileMissing()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->alreadyClearUselessFile:Z

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showOriginFileMissingDialog()V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->checkPermission()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->startAutoSaveTask()V

    .line 64
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string v0, "selectedIndex"

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    const-string v0, "draftId"

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "sceneList"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "sceneDraft"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void
.end method

.method public onSceneChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "sceneId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    move-result p2

    .line 29
    .line 30
    :goto_0
    if-ge v0, p2, :cond_4

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/model/Scene;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->sceneChanged(ILjava/lang/String;)V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    iget-object p2, p2, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 67
    move-result p2

    .line 68
    .line 69
    :goto_1
    if-ge v0, p2, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 75
    .line 76
    iget-object v1, v1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 88
    move-result v1

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->sceneChanged(ILjava/lang/String;)V

    .line 94
    return-void

    .line 95
    .line 96
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    return-void
.end method

.method public onSceneEnd(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "sceneId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSeekingError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sceneId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "exception"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public onSelected(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneIndex:I

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePlayerContainer()V

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->isError:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updatePreviewLayout()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->selectedSceneId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->seekScene(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void
.end method

.method public onSizeChanged(Ljava/util/List;I)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/scene/SceneWrapper;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/scene/SceneWrapper;->getSceneInfos(Ljava/util/List;)Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/narvii/scene/model/SceneDraft;->setSceneInfos(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateTitle()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateList()V

    .line 24
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeCurrent()Landroid/widget/TextView;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    .line 17
    move-result p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeTotal()Landroid/widget/TextView;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    .line 28
    move-result p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvTimeTotal()Landroid/widget/TextView;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const/high16 p2, 0x3f000000    # 0.5f

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvManage()Landroid/widget/TextView;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    .line 48
    move-result p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyManageLayout()Landroid/widget/TextView;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getMajorTextColor()I

    .line 59
    move-result p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningView()Lcom/narvii/widget/TintButton;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->warningViewTintColor()I

    .line 70
    move-result p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvAdvancedStory()Landroid/widget/TextView;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->showAdvancedEditor()Z

    .line 81
    move-result p2

    .line 82
    .line 83
    const/16 v0, 0x8

    .line 84
    const/4 v1, 0x0

    .line 85
    .line 86
    if-eqz p2, :cond_0

    .line 87
    move p2, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move p2, v0

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getRoundCornerCover()Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->useRoundCornerCover()Z

    .line 100
    move-result p2

    .line 101
    .line 102
    if-eqz p2, :cond_1

    .line 103
    move p2, v1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move p2, v0

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->useRoundCornerCover()Z

    .line 112
    move-result p1

    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    const/high16 p2, 0x41400000    # 12.0f

    .line 122
    .line 123
    .line 124
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 125
    move-result p1

    .line 126
    float-to-int v1, p1

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getRadiusLayout()Lcom/narvii/widget/RadiusLayout;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getRadiusLayout()Lcom/narvii/widget/RadiusLayout;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvManage()Landroid/widget/TextView;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 147
    .line 148
    .line 149
    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getTvAdvancedStory()Landroid/widget/TextView;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 159
    .line 160
    .line 161
    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getCreateSceneView()Landroid/view/View;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPlayerView()Landroid/view/View;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 183
    .line 184
    .line 185
    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getWarningLayout()Landroid/view/View;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 195
    .line 196
    .line 197
    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getErrorScenePlaceholder()Landroid/view/View;

    .line 204
    move-result-object p1

    .line 205
    .line 206
    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 207
    .line 208
    .line 209
    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getEmptyScenePlaceholder()Landroid/view/View;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    new-instance p2, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 219
    .line 220
    .line 221
    invoke-direct {p2, p0}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getBackgroundMusicButton()Lcom/narvii/scene/view/NvStoryBackgroundMusicButton;

    .line 228
    move-result-object p1

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnListSizeChangedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;)V

    .line 239
    .line 240
    .line 241
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnSelectedListener(Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;)V

    .line 246
    .line 247
    .line 248
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnEditVideoListener(Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 256
    move-result-object p1

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnDialogItemClickListener(Lcom/narvii/scene/view/SceneRecyclerView$OnDialogItemClickListener;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getSceneRecyclerView()Lcom/narvii/scene/view/SceneRecyclerView;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    new-instance p2, Lcom/narvii/scene/d;

    .line 266
    .line 267
    .line 268
    invoke-direct {p2, p0}, Lcom/narvii/scene/d;-><init>(Lcom/narvii/scene/BaseSceneListFragment;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p2}, Lcom/narvii/scene/view/SceneRecyclerView;->setOnAttachPreClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 275
    move-result-object p1

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setOnPlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$OnPlayingListener;)V

    .line 279
    .line 280
    .line 281
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 282
    move-result-object p1

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->setBeforePlayingListener(Lcom/narvii/scene/interfaces/IScenePlayer$BeforePlayingListener;)V

    .line 286
    .line 287
    .line 288
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewContainer()Landroid/widget/FrameLayout;

    .line 289
    move-result-object p1

    .line 290
    .line 291
    .line 292
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 293
    move-result-object p2

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateData()V

    .line 300
    .line 301
    .line 302
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->updateView()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 306
    move-result p1

    .line 307
    .line 308
    if-eqz p1, :cond_3

    .line 309
    .line 310
    .line 311
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->loadingVideo()V

    .line 312
    :cond_3
    return-void
.end method

.method public pickVideo(Lcom/narvii/scene/model/SceneInfo;I)V
    .locals 1
    .param p1    # Lcom/narvii/scene/model/SceneInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneMediaPickerHelper:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->showPickerDialog(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;)V

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 33
    :cond_1
    return-void
.end method

.method public previewPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->pause()V

    .line 8
    return-void
.end method

.method public previewStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getPreviewLayout()Lcom/narvii/scene/view/BaseScenePreviewLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/scene/view/BaseScenePreviewLayout;->play()V

    .line 8
    return-void
.end method

.method protected final saveDraft(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneList:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneList:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-class v1, Lcom/narvii/model/Scene;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneList:Ljava/util/List;

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v2}, Lcom/narvii/scene/model/SceneDraft;->isSame(Ljava/lang/Object;ZZ)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    return-void

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/scene/BaseSceneListFragment;->autoSaveSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->notifySceneDraftChanged(Z)V

    .line 64
    return-void
.end method

.method protected final setDraftManager(Lcom/narvii/post/DraftManager;)V
    .locals 1
    .param p1    # Lcom/narvii/post/DraftManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    return-void
.end method

.method protected final setMediaPickerFragment(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1
    .param p1    # Lcom/narvii/media/MediaPickerFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method

.method protected showAdvancedEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final showOriginFileMissingDialog()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/scene/BaseSceneListFragment;->getFileMisssingDialog()Lcom/narvii/widget/ACMAlertDialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 18
    :cond_0
    return-void
.end method

.method protected useRoundCornerCover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected warningViewTintColor()I
    .locals 1

    const v0, -0x1dcf52

    return v0
.end method
