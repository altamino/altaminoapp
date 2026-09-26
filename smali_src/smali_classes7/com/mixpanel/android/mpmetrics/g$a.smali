.class Lcom/mixpanel/android/mpmetrics/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/g;->p(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/g;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/g;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/g$a;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/i;->n(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g$a;->this$0:Lcom/mixpanel/android/mpmetrics/g;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/g;->b(Lcom/mixpanel/android/mpmetrics/g;Ljava/lang/String;)V

    .line 12
    :cond_0
    return-void
.end method
