.class public final Lcom/google/android/exoplayer2/i2$e;
.super Lcom/google/android/exoplayer2/i2$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/i2$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$d$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$d$a;->g()Lcom/google/android/exoplayer2/i2$e;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/i2$e;->UNSET:Lcom/google/android/exoplayer2/i2$e;

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2$d$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/i2$d;-><init>(Lcom/google/android/exoplayer2/i2$d$a;Lcom/google/android/exoplayer2/i2$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$d$a;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$e;-><init>(Lcom/google/android/exoplayer2/i2$d$a;)V

    return-void
.end method
