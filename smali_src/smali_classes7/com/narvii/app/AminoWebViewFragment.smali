.class public Lcom/narvii/app/AminoWebViewFragment;
.super Lcom/narvii/webview/WebViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;,
        Lcom/narvii/app/AminoWebViewFragment$SafeBrowsingResult;
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

    .line 1
    .line 2
    new-instance v0, Landroid/util/LruCache;

    .line 3
    .line 4
    const/16 v1, 0x40

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/app/AminoWebViewFragment;->safeBrowsingCache:Landroid/util/LruCache;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/webview/WebViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/app/AminoWebViewFragment$1;-><init>(Lcom/narvii/app/AminoWebViewFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardCallback:Lcom/narvii/util/Callback;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/AminoWebViewFragment;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 3
    return-object p0
.end method

.method static trimSafeBrowsingUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x23

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/app/AminoWebViewFragment$AminoWebViewClient;-><init>(Lcom/narvii/app/AminoWebViewFragment;)V

    .line 6
    return-object v0
.end method

.method public hideToolbar(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->hideToolbar(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of p1, p1, Lcom/narvii/app/DrawerActivity;

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    instance-of p1, p1, Lcom/narvii/amino/HomeFragment;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/amino/HomeFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/narvii/amino/HomeFragment;->isFragmentSelected(Landroidx/fragment/app/Fragment;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/webview/WebViewFragment;->getPostEntryLift()I

    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/narvii/post/entry/PostEntryView;->setLift1(IZ)V

    .line 53
    .line 54
    :cond_1
    const-string p1, "liveLayerHost"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Lcom/narvii/livelayer/LiveLayerHost;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 74
    .line 75
    :cond_2
    const-string p1, "cbbHost"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Lcom/narvii/community/CBBHost;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    .line 87
    move-result v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/narvii/community/CBBHost;->setLift(I)V

    .line 91
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->blockView:Landroid/view/View;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardCallback:Lcom/narvii/util/Callback;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/AminoWebViewFragment;->setSafeValue(Ljava/lang/Integer;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 36
    .line 37
    :cond_2
    :goto_0
    const-string v0, "loggingObjectId"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    const-string v1, "logging"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    .line 52
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    const-string v3, "objectId"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    const-string v0, "loggingObjectType"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 70
    move-result v0

    .line 71
    .line 72
    const-string v3, "objectType"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v3, 0x1

    .line 84
    .line 85
    if-ne v0, v3, :cond_3

    .line 86
    .line 87
    const-string v0, "blogType"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    const-string v0, "loggingBlogType"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 96
    move-result v0

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    :cond_3
    if-eqz p1, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    move-result-wide v3

    .line 110
    .line 111
    iput-wide v3, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_4
    iget-wide v3, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    .line 115
    .line 116
    const-wide/16 v5, 0x0

    .line 117
    .line 118
    cmp-long v0, v3, v5

    .line 119
    .line 120
    if-lez v0, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 124
    move-result-wide v3

    .line 125
    .line 126
    iget-wide v7, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    .line 127
    sub-long/2addr v3, v7

    .line 128
    .line 129
    iput-wide v5, p0, Lcom/narvii/app/AminoWebViewFragment;->loggingActiveTime:J

    .line 130
    .line 131
    const-string v0, "duration"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 144
    .line 145
    const-string p1, "WebContentEntered"

    .line 146
    goto :goto_2

    .line 147
    .line 148
    :cond_6
    const-string p1, "WebContentQuited"

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-interface {v1, p1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d07b0

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/webview/WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a1028

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment;->blockView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const-string p1, "statistics"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 30
    .line 31
    const-string p2, "Custom Web Page Opened"

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string p2, "Custom Web Page Opened Total"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string p2, "Source"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 51
    :cond_0
    return-void
.end method

.method setSafeValue(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-gez v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    move v1, v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v1

    .line 28
    .line 29
    :goto_0
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/webview/WebViewFragment;->webview:Landroid/webkit/WebView;

    .line 32
    const/4 v2, 0x4

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-ltz v1, :cond_3

    .line 37
    move v3, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v3, v2

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    :cond_4
    if-gez v1, :cond_5

    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_5
    move p1, v0

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/app/AminoWebViewFragment;->hideToolbar(Z)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment;->blockView:Landroid/view/View;

    .line 53
    .line 54
    if-gez v1, :cond_6

    .line 55
    goto :goto_3

    .line 56
    :cond_6
    move v0, v2

    .line 57
    .line 58
    .line 59
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    if-gtz v1, :cond_7

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 75
    .line 76
    :cond_7
    if-gez v1, :cond_8

    .line 77
    const/4 p1, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    :cond_8
    return-void
.end method

.method protected startActivityFromWebView(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/PackageUtils;->isNativeAminoScheme(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Lcom/narvii/webview/WebViewFragment;->startActivityFromWebView(Landroid/content/Intent;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v1, "block native launch in webview "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void
.end method
