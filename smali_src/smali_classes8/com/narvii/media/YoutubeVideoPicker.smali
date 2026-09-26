.class public Lcom/narvii/media/YoutubeVideoPicker;
.super Lcom/narvii/webview/WebViewFragment;
.source "SourceFile"


# instance fields
.field private final checkUrl:Ljava/lang/Runnable;

.field googleVideoSearch:Z

.field showCheckButton:Z

.field videoId:Ljava/lang/String;

.field youtubeService:Lcom/narvii/youtube/YoutubeService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubeVideoPicker$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    return-object p0
.end method

.method private callbackPickResult(Lcom/narvii/model/Media;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    const-string p1, "pickCallback"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v1, "mediaList"

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    const-string v2, "mediaPickCallback"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/media/MediaPickCallbackManager;

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v2, p1}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    :goto_0
    if-nez p1, :cond_1

    .line 37
    return-void

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    const-string v3, "pickCallbackParams"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Ljava/util/HashMap;

    .line 58
    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    new-instance v2, Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    const-string v0, "pickSource"

    .line 74
    .line 75
    const-string v1, "Camera"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 85
    const/4 v1, 0x1

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v2, v0, v1}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/4 v0, -0x1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 109
    :goto_1
    return-void
.end method

.method private static synthetic lambda$verifyAndReturn$0(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 4
    return-void
.end method

.method public static synthetic v(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/media/YoutubeVideoPicker;->lambda$verifyAndReturn$0(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/YoutubeVideoPicker;->callbackPickResult(Lcom/narvii/model/Media;)V

    return-void
.end method


# virtual methods
.method public fillAdditionalMediaInfo(Lcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/media/YoutubeVideoPicker$3;-><init>(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->tryGoBack()Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    const-string p1, "youtube"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/youtube/YoutubeService;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->youtubeService:Lcom/narvii/youtube/YoutubeService;

    .line 18
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x2

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 31
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/media/YoutubeVideoPicker;->verifyAndReturn()V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/webview/WebViewFragment;->onPause()V

    .line 11
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x104000a

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/media/YoutubeVideoPicker;->showCheckButton:Z

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 16
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/webview/WebViewFragment;->onResume()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p2, :cond_2

    .line 6
    .line 7
    const-string p1, "url"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string p2, "googleVideoSearch"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 17
    move-result p2

    .line 18
    .line 19
    iput-boolean p2, p0, Lcom/narvii/media/YoutubeVideoPicker;->googleVideoSearch:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const-string p1, "prefs"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Landroid/content/SharedPreferences;

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->googleVideoSearch:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const-string p1, "http://video.google.com/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const-string p1, "http://m.youtube.com/"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    const-string p2, "confirmUrl"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 51
    move-result p2

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/media/YoutubeVideoPicker;->verifyAndReturn()V

    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method setShowCheckButton(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->showCheckButton:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->showCheckButton:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 10
    :cond_0
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    return-void
.end method

.method protected verifyAndReturn()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$string;->media_video_picker_unavailable:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v3, "https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v="

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "&format=json"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    const-string v2, "api"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 76
    .line 77
    new-instance v3, Lcom/narvii/media/YoutubeVideoPicker$2;

    .line 78
    .line 79
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/media/YoutubeVideoPicker$2;-><init>(Lcom/narvii/media/YoutubeVideoPicker;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 86
    .line 87
    new-instance v3, Lcom/narvii/media/l;

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v2, v1}, Lcom/narvii/media/l;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 94
    return-void
.end method

.method public videoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    return-object v0
.end method
