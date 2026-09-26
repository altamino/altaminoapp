.class public final synthetic Lp2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a$d;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/extractor/v;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/a;->a:Lcom/google/android/exoplayer2/extractor/v;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/a;->a:Lcom/google/android/exoplayer2/extractor/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/v;->j(J)J

    move-result-wide p1

    return-wide p1
.end method
