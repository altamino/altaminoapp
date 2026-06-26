.class public Lcom/narvii/media/YoutubeVideoPicker;
.super Lcom/narvii/webview/WebViewFragment;
.source "YoutubeVideoPicker.java"


# instance fields
.field private final checkUrl:Ljava/lang/Runnable;

.field googleVideoSearch:Z

.field showCheckButton:Z

.field videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/YoutubeVideoPicker$1;-><init>(Lcom/narvii/media/YoutubeVideoPicker;)V

    iput-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/media/YoutubeVideoPicker;)Landroid/webkit/WebView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/media/YoutubeVideoPicker;->callbackPickResult(Lcom/narvii/model/Media;)V

    return-void
.end method

.method private callbackPickResult(Lcom/narvii/model/Media;)V
    .locals 4

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "pickCallback"

    .line 291
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mediaList"

    if-eqz p1, :cond_3

    const-string v2, "mediaPickCallback"

    .line 293
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/media/MediaPickCallbackManager;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v2, p1}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pickCallbackParams"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 300
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 302
    :cond_2
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pickSource"

    const-string v1, "Camera"

    .line 303
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    const/4 v1, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    goto :goto_1

    .line 306
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 307
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 308
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_1
    return-void
.end method


# virtual methods
.method public fillAdditionalMediaInfo(Lcom/narvii/model/Media;)V
    .locals 1

    .line 253
    new-instance v0, Lcom/narvii/media/YoutubeVideoPicker$4;

    invoke-direct {v0, p0, p1}, Lcom/narvii/media/YoutubeVideoPicker$4;-><init>(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V

    .line 283
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->tryGoBack()Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 110
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 111
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 113
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/narvii/media/YoutubeVideoPicker;->verifyAndReturn()V

    const/4 p1, 0x1

    return p1

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 103
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    invoke-super {p0}, Lcom/narvii/webview/WebViewFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x104000a

    .line 118
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/media/YoutubeVideoPicker;->showCheckButton:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/narvii/webview/WebViewFragment;->onResume()V

    .line 97
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->checkUrl:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_2

    const-string p1, "url"

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "googleVideoSearch"

    .line 75
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/media/YoutubeVideoPicker;->googleVideoSearch:Z

    if-nez p1, :cond_1

    const-string p1, "prefs"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    .line 78
    iget-boolean p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->googleVideoSearch:Z

    if-eqz p1, :cond_0

    const-string p1, "http://video.google.com/"

    .line 79
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "http://m.youtube.com/"

    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/webview/WebViewFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "confirmUrl"

    .line 83
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 86
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/narvii/media/YoutubeVideoPicker;->verifyAndReturn()V

    :cond_2
    :goto_0
    return-void
.end method

.method setShowCheckButton(Z)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->showCheckButton:Z

    if-eq v0, p1, :cond_0

    .line 146
    iput-boolean p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->showCheckButton:Z

    .line 147
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    return-void
.end method

.method protected verifyAndReturn()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->media_video_picker_unavailable:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 190
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 193
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/oembed?url=http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&format=json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 196
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 197
    new-instance v3, Lcom/narvii/media/YoutubeVideoPicker$2;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/media/YoutubeVideoPicker$2;-><init>(Lcom/narvii/media/YoutubeVideoPicker;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 243
    new-instance v3, Lcom/narvii/media/YoutubeVideoPicker$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/narvii/media/YoutubeVideoPicker$3;-><init>(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public videoId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker;->videoId:Ljava/lang/String;

    return-object v0
.end method
