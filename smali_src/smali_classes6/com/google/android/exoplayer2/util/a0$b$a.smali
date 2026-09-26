.class final Lcom/google/android/exoplayer2/util/a0$b$a;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/a0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final instance:Lcom/google/android/exoplayer2/util/a0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/a0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/a0$b$a;->instance:Lcom/google/android/exoplayer2/util/a0;

    .line 6
    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/g;->a(Landroid/telephony/TelephonyDisplayInfo;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x3

    .line 6
    const/4 v1, 0x5

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x4

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 18
    .line 19
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/a0$b$a;->instance:Lcom/google/android/exoplayer2/util/a0;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->c(Lcom/google/android/exoplayer2/util/a0;I)V

    .line 27
    return-void
.end method
