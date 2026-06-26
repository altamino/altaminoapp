.class public Lcom/narvii/chat/detail/BackgroundPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "BackgroundPickerFragment.java"

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

    .line 43
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/detail/BackgroundPickerFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method private getAnimationHeight()I
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 251
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 252
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 253
    iget-object v2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_1
    return v0
.end method

.method private setBackgroundUrl(Lcom/narvii/model/Media;)V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 224
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment$7;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;Lcom/narvii/model/Media;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 235
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "account"

    .line 237
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 238
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v4, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/member/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/background"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 241
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 242
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v3, "media"

    invoke-virtual {v1, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 243
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 p1, 0x7530

    .line 244
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p1, "api"

    .line 245
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 246
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public deleteBackground()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$4;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 150
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "account"

    .line 152
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 153
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v4, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/member/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/background"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 155
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 156
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 278
    iget-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    .line 284
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->getAnimationHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 286
    iget-object v1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$8;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b009f

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/narvii/chat/detail/BackgroundPickerFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$1;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method protected onPostBackground()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->deleteBackground()V

    goto :goto_0

    :cond_0
    const-string v1, "photo"

    .line 125
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 126
    iget-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackground(Lcom/narvii/model/Media;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackgroundUrl(Lcom/narvii/model/Media;)V

    :goto_0
    return-void
.end method

.method public onSelectBackground(Lcom/narvii/model/Media;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method public onStartPick()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09010b

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    const p2, 0x7f0901d3

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    iput-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 80
    iget-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {p2, p0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setOnSelectBackgroundListener(Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;)V

    .line 81
    iget-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    :cond_0
    const p2, 0x7f09036b

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/chat/detail/BackgroundPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$2;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090193

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/detail/BackgroundPickerFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$3;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBackground(Lcom/narvii/model/Media;)V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "photo"

    .line 163
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 164
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v1

    .line 165
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    .line 168
    iget-object v5, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v6, "chat-background"

    invoke-virtual {v0, v5, v6, v1, v3}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 170
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v5

    const-string v6, "mediaType"

    const/16 v7, 0x64

    .line 172
    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v6, "mediaUploadValue"

    .line 173
    invoke-virtual {v5, v6, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v6, "mediaUploadValueContentType"

    .line 174
    aget-object v3, v3, v4

    invoke-virtual {v5, v6, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 175
    sget-object v3, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1, v0, v2}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "out of memory when encode bitmap"

    .line 179
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0f0d14

    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "unable to encode bitmap"

    .line 177
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    return-void

    .line 188
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v1, Lcom/narvii/chat/detail/BackgroundPickerFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment$5;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 194
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "account"

    .line 196
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 197
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v4, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/member/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/background"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 200
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v0, 0x7530

    .line 201
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "api"

    .line 202
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 203
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;-><init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;Ljava/lang/Class;Lcom/narvii/model/Media;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 56
    iput-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 57
    iget-object v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 264
    iget-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->isShown:Z

    .line 270
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 272
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->getAnimationHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 274
    iget-object v1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment;->pickerLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
