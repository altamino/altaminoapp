.class final Lcom/google/android/exoplayer2/util/a0$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/util/a0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/a0$d;->this$0:Lcom/google/android/exoplayer2/util/a0;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/a0;Lcom/google/android/exoplayer2/util/a0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/a0$d;-><init>(Lcom/google/android/exoplayer2/util/a0;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a0;->b(Landroid/content/Context;)I

    .line 4
    move-result p2

    .line 5
    .line 6
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1f

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    const/4 v0, 0x5

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/exoplayer2/util/a0$d;->this$0:Lcom/google/android/exoplayer2/util/a0;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/a0$b;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/util/a0;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/a0$d;->this$0:Lcom/google/android/exoplayer2/util/a0;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/a0;->c(Lcom/google/android/exoplayer2/util/a0;I)V

    .line 25
    :goto_0
    return-void
.end method
