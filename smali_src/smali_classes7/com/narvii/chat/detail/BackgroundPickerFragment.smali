.class public Lcom/narvii/chat/detail/BackgroundPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;


# instance fields
.field private chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private isShown:Z

.field private pickerLayout:Landroid/view/View;


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

.method private getAnimationHeight()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v0

    .line 45
    :cond_1
    return v0
.end method

.method static bridge synthetic n(Lcom/narvii/chat/detail/BackgroundPickerFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method private setBackgroundUrl(Lcom/narvii/model/Media;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;Lcom/narvii/model/Media;)V

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    const-string v1, "account"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v4, "/chat/thread/"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 56
    .line 57
    iget-object v4, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "/member/"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "/background"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    const-string v3, "media"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    .line 108
    const/16 p1, 0x7530

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 112
    .line 113
    const-string p1, "api"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 129
    return-void
.end method


# virtual methods
.method public deleteBackground()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$4;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$4;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    const-string v1, "account"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v4, "/chat/thread/"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "/member/"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "/background"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    const-string v2, "api"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 104
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    .line 9
    .line 10
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->getAnimationHeight()I

    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 20
    .line 21
    const-wide/16 v1, 0xc8

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$8;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$8;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 38
    return-void
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
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
    .line 3
    const p3, 0x7f0d00b5

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    new-instance p2, Lcom/narvii/chat/detail/BackgroundPickerFragment$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$1;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    .line 18
    :cond_0
    return-void
.end method

.method protected onPostBackground()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->deleteBackground()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-string v1, "photo"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackground(Lcom/narvii/model/Media;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackgroundUrl(Lcom/narvii/model/Media;)V

    .line 36
    :goto_0
    return-void
.end method

.method public onSelectBackground(Lcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onStartPick()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    const p2, 0x7f0a019d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a028a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setOnSelectBackgroundListener(Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;)V

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const p2, 0x7f0a0454

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/chat/detail/BackgroundPickerFragment$2;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$2;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a0247

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    new-instance p2, Lcom/narvii/chat/detail/BackgroundPickerFragment$3;

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$3;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public setBackground(Lcom/narvii/model/Media;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "photo"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "chat-background"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v5, v6, v1, v3}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    const-string v6, "mediaType"

    .line 47
    .line 48
    const/16 v7, 0x64

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 52
    .line 53
    const-string v6, "mediaUploadValue"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 57
    .line 58
    const-string v6, "mediaUploadValueContentType"

    .line 59
    .line 60
    aget-object v3, v3, v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v6, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 64
    .line 65
    sget-object v3, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v5, v1, v0, v2}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :goto_0
    const-string v3, "out of memory when encode bitmap"

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    const v3, 0x7f120e3a

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v3, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :goto_1
    const-string v3, "unable to encode bitmap"

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 113
    move-result-wide v0

    .line 114
    .line 115
    const-wide/16 v3, 0x0

    .line 116
    .line 117
    cmp-long v0, v0, v3

    .line 118
    .line 119
    if-nez v0, :cond_1

    .line 120
    return-void

    .line 121
    .line 122
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$5;

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$5;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    .line 135
    .line 136
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 140
    .line 141
    const-string v0, "account"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    const-string v4, "/chat/thread/"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    iget-object v4, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 171
    .line 172
    iget-object v4, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v4, "/member/"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v0, "/background"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 207
    .line 208
    const/16 v0, 0x7530

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 212
    .line 213
    const-string v0, "api"

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    new-instance v2, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;

    .line 226
    .line 227
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 228
    .line 229
    .line 230
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;Ljava/lang/Class;Lcom/narvii/model/Media;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 234
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 24
    .line 25
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->getAnimationHeight()I

    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 35
    .line 36
    const-wide/16 v1, 0xc8

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    return-void
.end method
