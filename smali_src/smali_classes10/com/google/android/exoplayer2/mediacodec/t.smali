.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/v$g;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/a2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/t;->a:Lcom/google/android/exoplayer2/a2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/t;->a:Lcom/google/android/exoplayer2/a2;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/n;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/v;->c(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/mediacodec/n;)I

    move-result p1

    return p1
.end method
