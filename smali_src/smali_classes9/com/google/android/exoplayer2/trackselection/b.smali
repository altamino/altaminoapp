.class public final synthetic Lcom/google/android/exoplayer2/trackselection/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/a2;

    check-cast p2, Lcom/google/android/exoplayer2/a2;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/c;->d(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;)I

    move-result p1

    return p1
.end method
