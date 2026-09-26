.class public Lcom/narvii/services/AminoFragmentRegisterProvider;
.super Lcom/narvii/app/BaseFragmentRegisterProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/BaseFragmentRegisterProvider;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected registerFragment(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "mediaEditor"

    .line 3
    .line 4
    const-class v1, Lcom/narvii/video/MediaTrimmingFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    const-string v0, "accountWebView"

    .line 10
    .line 11
    const-class v1, Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    const-string v0, "captionEditText"

    .line 17
    .line 18
    const-class v1, Lcom/narvii/video/attachment/caption/CaptionEditTextFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "captionTab"

    .line 24
    .line 25
    const-class v1, Lcom/narvii/video/attachment/caption/CaptionTabFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    const-string v0, "attachmentEditor"

    .line 31
    .line 32
    const-class v1, Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    const-string v0, "audioEditor"

    .line 38
    .line 39
    const-class v1, Lcom/narvii/video/AudioEditorFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    const-string v0, "splitEditor"

    .line 45
    .line 46
    const-class v1, Lcom/narvii/video/MediaSplitFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    const-string v0, "sceneQuiz"

    .line 52
    .line 53
    const-class v1, Lcom/narvii/scene/quiz/SceneQuizPostFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    const-string v0, "stickerEditorTab"

    .line 59
    .line 60
    const-class v1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    const-string v0, "pipEditor"

    .line 66
    .line 67
    const-class v1, Lcom/narvii/pip/PipEditorFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    const-string v0, "mediaSpeed"

    .line 73
    .line 74
    const-class v1, Lcom/narvii/video/MediaSpeedFragment;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
