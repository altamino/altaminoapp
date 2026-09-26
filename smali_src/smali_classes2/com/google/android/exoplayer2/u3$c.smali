.class final Lcom/google/android/exoplayer2/u3$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/u3;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/u3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/u3$c;->this$0:Lcom/google/android/exoplayer2/u3;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/u3;Lcom/google/android/exoplayer2/u3$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/u3$c;-><init>(Lcom/google/android/exoplayer2/u3;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/u3;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/u3$c;->b(Lcom/google/android/exoplayer2/u3;)V

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/u3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/u3;->b(Lcom/google/android/exoplayer2/u3;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/u3$c;->this$0:Lcom/google/android/exoplayer2/u3;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/u3;->a(Lcom/google/android/exoplayer2/u3;)Landroid/os/Handler;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/u3$c;->this$0:Lcom/google/android/exoplayer2/u3;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/v3;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/v3;-><init>(Lcom/google/android/exoplayer2/u3;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method
