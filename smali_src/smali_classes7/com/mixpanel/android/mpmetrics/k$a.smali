.class Lcom/mixpanel/android/mpmetrics/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/mixpanel/android/mpmetrics/k$b;

.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/k$b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/k$a;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/k$a;->mPrefsName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/k$a;->mListener:Lcom/mixpanel/android/mpmetrics/k$b;

    .line 10
    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/k$a;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/k$a;->mPrefsName:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/k$a;->mListener:Lcom/mixpanel/android/mpmetrics/k$b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Lcom/mixpanel/android/mpmetrics/k$b;->a(Landroid/content/SharedPreferences;)V

    .line 17
    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/k$a;->a()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
