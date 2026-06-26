.class public Lcom/narvii/app/AminoWebViewFragment;
.super Lcom/narvii/webview/WebViewFragment;
.source "AminoWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;,
        Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;
    }
.end annotation


# static fields
.field static final safeBrowsingCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blockView:Landroid/view/View;

.field final keyboardCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

.field loggingActiveTime:J

.field safeValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 314
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/narvii/app/AminoWebViewFragment;->safeBrowsingCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    .line 143
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/AminoWebViewFragment$1;-><init>(Lcom/narvii/app/AminoWebViewFragment;)V

    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/AminoWebViewFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static trimSafeBrowsingUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x23

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 188
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    invoke-direct {v0, p0}, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;-><init>(Lcom/narvii/app/AminoWebViewFragment;)V

    return-object v0
.end method

.method public hideToolbar(Z)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->hideToolbar(Z)V

    .line 119
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/DrawerActivity;

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/amino/HomeFragment;

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/amino/HomeFragment;

    .line 122
    invoke-virtual {p1, p0}, Lcom/narvii/amino/HomeFragment;->isFragmentSelected(Landroid/support/v4/app/Fragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->getPostEntryLift()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/post/entry/PostEntryView;->setLift1(IZ)V

    :cond_1
    const-string p1, "liveLayerHost"

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerHost;

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz p1, :cond_2

    nop

    :cond_2
    const-string p1, "cbbHost"

    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CBBHost;

    if-eqz p1, :cond_3

    nop

    :cond_3
    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 9

    .line 78
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->blockView:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardCallback:Lcom/narvii/util/Callback;

    invoke-static {v0, v1}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    :cond_2
    :goto_0
    const-string v0, "loggingObjectId"

    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "logging"

    .line 93
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "objectId"

    .line 95
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "loggingObjectType"

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v3, "objectType"

    .line 98
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const-string v0, "blogType"

    .line 101
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "loggingBlogType"

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    goto :goto_1

    .line 106
    :cond_4
    iget-wide v3, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    sub-long/2addr v3, v7

    .line 108
    iput-wide v5, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    const-string v0, "duration"

    .line 109
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    const-string p1, "WebContentEntered"

    goto :goto_2

    :cond_6
    const-string p1, "WebContentQuited"

    .line 112
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b06ff

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f090d05

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment;->blockView:Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    return-void
.end method

.method setSafeValue(Ljava/lang/Integer;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 156
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 162
    :goto_0
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    .line 163
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    const/4 v2, 0x4

    if-eqz p1, :cond_4

    if-ltz v1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    .line 164
    :goto_1
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_4
    if-gez v1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 166
    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/app/AminoWebViewFragment;->hideToolbar(Z)V

    .line 167
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment;->blockView:Landroid/view/View;

    if-gez v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-gtz v1, :cond_7

    .line 168
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 169
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    :cond_7
    if-gez v1, :cond_8

    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method protected startActivityFromWebView(Landroid/content/Intent;)V
    .locals 2

    .line 178
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/PackageUtils;->isNativeAminoScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->startActivityFromWebView(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block native launch in webview "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
