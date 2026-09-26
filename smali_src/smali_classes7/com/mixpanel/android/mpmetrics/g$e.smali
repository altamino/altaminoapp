.class Lcom/mixpanel/android/mpmetrics/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/g;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/mpmetrics/g;Lcom/mixpanel/android/mpmetrics/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/g$e;-><init>(Lcom/mixpanel/android/mpmetrics/g;)V

    return-void
.end method

.method static synthetic f(Lcom/mixpanel/android/mpmetrics/g$e;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/g$e;->h(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/g;->c(Lcom/mixpanel/android/mpmetrics/g;)Lcom/mixpanel/android/mpmetrics/i;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/g;->c(Lcom/mixpanel/android/mpmetrics/g;)Lcom/mixpanel/android/mpmetrics/i;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/mixpanel/android/mpmetrics/i;->F(Ljava/lang/String;)V

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/g;->b(Lcom/mixpanel/android/mpmetrics/g;Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method private k(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g$e;->g()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/g;->k()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/g;->f(Lcom/mixpanel/android/mpmetrics/g;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string p2, "$token"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    const-string p1, "$time"

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/g;->c(Lcom/mixpanel/android/mpmetrics/g;)Lcom/mixpanel/android/mpmetrics/i;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/i;->k()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    const-string p2, "$had_persisted_distinct_id"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    const-string p1, "$device_id"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    :cond_0
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const-string p1, "$distinct_id"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    const-string p1, "$user_id"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    :cond_1
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/g;->a(Lcom/mixpanel/android/mpmetrics/g;)Lcom/mixpanel/android/mpmetrics/j;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/j;->b()Lorg/json/JSONObject;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string p2, "$mp_metadata"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$transactions"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/g$e;->l(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    const-string v0, "$delete"

    .line 3
    .line 4
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/g$e;->k(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/g;->e(Lcom/mixpanel/android/mpmetrics/g;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :catch_0
    const-string v0, "MixpanelAPI.API"

    .line 17
    .line 18
    const-string v1, "Exception deleting a user"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g$e;->g()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

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

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/g$e;->j(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    .line 25
    const-string p2, "MixpanelAPI.API"

    .line 26
    .line 27
    const-string v0, "set"

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v0, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;D)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/g$e;->i(Ljava/util/Map;)V

    .line 25
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/g;->c(Lcom/mixpanel/android/mpmetrics/g;)Lcom/mixpanel/android/mpmetrics/i;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->m()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public i(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    :try_start_0
    const-string p1, "$add"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/g$e;->k(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/g;->e(Lcom/mixpanel/android/mpmetrics/g;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    .line 29
    const-string v0, "MixpanelAPI.API"

    .line 30
    .line 31
    const-string v1, "Exception incrementing properties"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    return-void
.end method

.method public j(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/g;->d(Lcom/mixpanel/android/mpmetrics/g;)Ljava/util/Map;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    const-string p1, "$set"

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/g$e;->k(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/g;->e(Lcom/mixpanel/android/mpmetrics/g;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :goto_1
    const-string v0, "MixpanelAPI.API"

    .line 61
    .line 62
    const-string v1, "Exception setting people properties"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :goto_2
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18
    .line 19
    const-string p1, "$unset"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/g$e;->k(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$e;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/g;->e(Lcom/mixpanel/android/mpmetrics/g;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    .line 32
    const-string v0, "MixpanelAPI.API"

    .line 33
    .line 34
    const-string v1, "Exception unsetting a property"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_0
    return-void
.end method
