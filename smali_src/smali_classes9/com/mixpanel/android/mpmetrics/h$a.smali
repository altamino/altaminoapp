.class Lcom/mixpanel/android/mpmetrics/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/h;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/h;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/h;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/h;->a(Lcom/mixpanel/android/mpmetrics/h;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/h;->c(Lcom/mixpanel/android/mpmetrics/h;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/h;->b(Lcom/mixpanel/android/mpmetrics/h;Z)Z

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v0

    .line 27
    long-to-double v0, v0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/h;->d()Ljava/lang/Double;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 35
    move-result-wide v2

    .line 36
    sub-double/2addr v0, v2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/h;->e(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/d;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/d;->o()I

    .line 46
    move-result v2

    .line 47
    int-to-double v2, v2

    .line 48
    .line 49
    cmpl-double v2, v0, v2

    .line 50
    .line 51
    if-ltz v2, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/h;->e(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/d;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/d;->u()I

    .line 61
    move-result v2

    .line 62
    int-to-double v2, v2

    .line 63
    .line 64
    cmpg-double v2, v0, v2

    .line 65
    .line 66
    if-gez v2, :cond_0

    .line 67
    .line 68
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/h;->f(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/g;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/g;->q()Ljava/lang/Boolean;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    move-result v2

    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 88
    div-double/2addr v0, v2

    .line 89
    .line 90
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 91
    mul-double/2addr v0, v2

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 95
    move-result-wide v0

    .line 96
    long-to-double v0, v0

    .line 97
    div-double/2addr v0, v2

    .line 98
    .line 99
    new-instance v2, Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .line 104
    const-string v3, "$ae_session_length"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/h;->f(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/g;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    const-string v4, "$ae_total_app_sessions"

    .line 120
    .line 121
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 122
    .line 123
    .line 124
    invoke-interface {v3, v4, v5, v6}, Lcom/mixpanel/android/mpmetrics/g$d;->e(Ljava/lang/String;D)V

    .line 125
    .line 126
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/h;->f(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/g;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    const-string v4, "$ae_total_app_session_length"

    .line 137
    .line 138
    .line 139
    invoke-interface {v3, v4, v0, v1}, Lcom/mixpanel/android/mpmetrics/g$d;->e(Ljava/lang/String;D)V

    .line 140
    .line 141
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/h;->f(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/g;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    const-string v1, "$ae_session"

    .line 148
    const/4 v3, 0x1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/g;->H(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/h$a;->this$0:Lcom/mixpanel/android/mpmetrics/h;

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/h;->f(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/g;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/g;->v()V

    .line 166
    :cond_1
    return-void
.end method
