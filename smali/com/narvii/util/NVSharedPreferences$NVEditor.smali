.class Lcom/narvii/util/NVSharedPreferences$NVEditor;
.super Ljava/lang/Object;
.source "NVSharedPreferences.java"

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

    .line 129
    iput-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/util/NVSharedPreferences;Lcom/narvii/util/NVSharedPreferences$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/narvii/util/NVSharedPreferences$NVEditor;-><init>(Lcom/narvii/util/NVSharedPreferences;)V

    return-void
.end method

.method private clearSchedule()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v0, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 225
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private scheduleFlush()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v0, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 232
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    sget-object v1, Lcom/narvii/util/NVSharedPreferences;->SCHEDULED_EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x190

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/util/NVSharedPreferences;->sf:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->done(Z)Z

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clear:Z

    return-object p0
.end method

.method public commit()Z
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, v0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->done(Z)Z

    move-result v0

    return v0
.end method

.method done(Z)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 193
    iget-boolean p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clear:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object p1, p1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    monitor-enter p1

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v1, v1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 212
    invoke-direct {p0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->scheduleFlush()V

    .line 213
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 195
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object p1, p1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    monitor-enter p1

    .line 196
    :try_start_1
    invoke-direct {p0}, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clearSchedule()V

    .line 197
    iget-boolean v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->clear:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v1, v1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 199
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v3, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/NVSharedPreferences;->flush(ZLjava/util/HashMap;)Z

    move-result v1

    goto :goto_1

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v1, v1, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 202
    iget-object v1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v3, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v3, v3, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/NVSharedPreferences;->flush(ZLjava/util/HashMap;)Z

    move-result v1

    .line 203
    iget-object v3, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v3, v3, Lcom/narvii/util/NVSharedPreferences;->pendingWrites:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 205
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    return v2

    .line 215
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    iget-object v2, v2, Lcom/narvii/util/NVSharedPreferences;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 217
    iget-object v4, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->this$0:Lcom/narvii/util/NVSharedPreferences;

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return v0

    :catchall_1
    move-exception v0

    .line 205
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    if-nez p2, :cond_0

    sget-object p2, Lcom/narvii/util/NVSharedPreferences;->REMOVE:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 142
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    if-nez p2, :cond_0

    sget-object p2, Lcom/narvii/util/NVSharedPreferences;->REMOVE:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/narvii/util/NVSharedPreferences$NVEditor;->map:Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/util/NVSharedPreferences;->REMOVE:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
