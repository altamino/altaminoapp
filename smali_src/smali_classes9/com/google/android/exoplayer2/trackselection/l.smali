.class public final synthetic Lcom/google/android/exoplayer2/trackselection/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/p;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/trackselection/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/l;->a:Lcom/google/android/exoplayer2/trackselection/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/l;->a:Lcom/google/android/exoplayer2/trackselection/m;

    check-cast p1, Lcom/google/android/exoplayer2/a2;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/m;->p(Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/a2;)Z

    move-result p1

    return p1
.end method
