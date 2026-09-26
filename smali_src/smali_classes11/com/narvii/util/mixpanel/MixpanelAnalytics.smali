.class public final Lcom/narvii/util/mixpanel/MixpanelAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->context:Landroid/content/Context;

    .line 11
    return-void
.end method

.method private final getMixPanel()Lcom/mixpanel/android/mpmetrics/g;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->context:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "99e6aef5fbb1f90f729de7ad7bb6ad61"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/g;->m(Landroid/content/Context;Ljava/lang/String;Z)Lcom/mixpanel/android/mpmetrics/g;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "getInstance(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-object v0
.end method

.method public static synthetic trackEvent$default(Lcom/narvii/util/mixpanel/MixpanelAnalytics;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final identifyUser(Lcom/narvii/util/mixpanel/MixPanelUser;)V
    .locals 4
    .param p1    # Lcom/narvii/util/mixpanel/MixPanelUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "user"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->getMixPanel()Lcom/mixpanel/android/mpmetrics/g;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/mixpanel/MixPanelUser;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/g;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "$name"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/mixpanel/MixPanelUser;->getName()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/g$d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "$email"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/util/mixpanel/MixPanelUser;->getEmail()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/g$d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/util/mixpanel/MixPanelUser;->isPremiumPlan()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const-string p1, "AminoPlus"

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    const-string p1, "Free"

    .line 59
    .line 60
    :goto_0
    const-string v1, "plan"

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1, p1}, Lcom/mixpanel/android/mpmetrics/g$d;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public final increment(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "property"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->getMixPanel()Lcom/mixpanel/android/mpmetrics/g;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 13
    move-result-object v0

    .line 14
    int-to-double v1, p2

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, v1, v2}, Lcom/mixpanel/android/mpmetrics/g$d;->e(Ljava/lang/String;D)V

    .line 18
    return-void
.end method

.method public final logout()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->getMixPanel()Lcom/mixpanel/android/mpmetrics/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->D()V

    .line 8
    return-void
.end method

.method public final registerSuperProperties(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "jsonUid"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->getMixPanel()Lcom/mixpanel/android/mpmetrics/g;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/g;->C(Lorg/json/JSONObject;)V

    .line 13
    return-void
.end method

.method public final trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "eventName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    const-string v1, "page_view"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const-string v1, "counts_as_page_load"

    .line 56
    const/4 v2, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->getMixPanel()Lcom/mixpanel/android/mpmetrics/g;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1, v0}, Lcom/mixpanel/android/mpmetrics/g;->G(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->getMixPanel()Lcom/mixpanel/android/mpmetrics/g;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/mixpanel/android/mpmetrics/g;->F(Ljava/lang/String;)V

    .line 76
    :goto_1
    return-void
.end method
