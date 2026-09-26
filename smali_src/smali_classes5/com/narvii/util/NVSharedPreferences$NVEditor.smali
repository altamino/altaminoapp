.class Lcom/narvii/util/NVSharedPreferences$NVEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/NVSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NVEditor"
.end annotation


# instance fields
.field clear:Z

.field final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/util/NVSharedPreferences;


# direct methods
.method private constructor <init>(Lcom/narvii/util/NVSharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/util/NVSharedPreferences;Lcom/narvii/util/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/NVSharedPreferences$NVEditor;-><init>(Lcom/narvii/util/NVSharedPreferences;)V

    return-void
.end method

.method private clearSchedule()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    .line 16
    return-void
.end method

.method private scheduleFlush()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/NVSharedPreferences;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    const-wide/16 v2, 0x190

    .line 17
    .line 18
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    .line 25
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->done(Z)Z

    .line 5
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clear:Z

    return-object p0
.end method

.method public commit()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->done(Z)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method done(Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clear:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    .line 13
    monitor-enter p1

    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->scheduleFlush()V

    .line 26
    monitor-exit p1

    .line 27
    goto :goto_2

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    .line 35
    monitor-enter p1

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-direct {p0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clearSchedule()V

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clear:Z

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/NVSharedPreferences;->flush(ZLjava/util/HashMap;)Z

    .line 58
    move-result v1

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    goto :goto_4

    .line 62
    .line 63
    :cond_2
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 73
    .line 74
    iget-object v3, v1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/NVSharedPreferences;->flush(ZLjava/util/HashMap;)Z

    .line 78
    move-result v1

    .line 79
    .line 80
    iget-object v3, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 86
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    return v2

    .line 90
    .line 91
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v1

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    check-cast v1, Ljava/lang/String;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 114
    .line 115
    iget-object v2, v2, Lcom/narvii/util/NVSharedPreferences;->listeners:Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v3

    .line 124
    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 132
    .line 133
    iget-object v4, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    .line 134
    .line 135
    .line 136
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    return v0

    .line 139
    :goto_4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p2, Lcom/narvii/util/NVSharedPreferences;->REMOVE:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p2, Lcom/narvii/util/NVSharedPreferences;->REMOVE:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/util/NVSharedPreferences;->REMOVE:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-object p0
.end method
