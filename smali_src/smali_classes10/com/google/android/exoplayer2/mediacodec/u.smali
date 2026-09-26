.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/mediacodec/v$g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/v$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/u;->a:Lcom/google/android/exoplayer2/mediacodec/v$g;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/u;->a:Lcom/google/android/exoplayer2/mediacodec/v$g;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/v;->d(Lcom/google/android/exoplayer2/mediacodec/v$g;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
