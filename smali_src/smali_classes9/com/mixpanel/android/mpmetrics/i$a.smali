.class Lcom/mixpanel/android/mpmetrics/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/i;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/i;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/i;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i$a;->this$0:Lcom/mixpanel/android/mpmetrics/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/i;->a()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    monitor-enter p1

    .line 6
    .line 7
    :try_start_0
    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/i$a;->this$0:Lcom/mixpanel/android/mpmetrics/i;

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/mixpanel/android/mpmetrics/i;->b(Lcom/mixpanel/android/mpmetrics/i;)V

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/mixpanel/android/mpmetrics/i;->c(Z)Z

    .line 15
    monitor-exit p1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p2

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p2
.end method
