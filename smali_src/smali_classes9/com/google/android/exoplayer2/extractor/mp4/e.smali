.class public final synthetic Lcom/google/android/exoplayer2/extractor/mp4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/extractor/mp4/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mp4/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/e;->a:Lcom/google/android/exoplayer2/extractor/mp4/g;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/e;->a:Lcom/google/android/exoplayer2/extractor/mp4/g;

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/o;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->l(Lcom/google/android/exoplayer2/extractor/mp4/o;)Lcom/google/android/exoplayer2/extractor/mp4/o;

    move-result-object p1

    return-object p1
.end method
