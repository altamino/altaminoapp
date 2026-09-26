.class public final synthetic Lcom/google/android/exoplayer2/trackselection/p;
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
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/m$i;

    check-cast p2, Lcom/google/android/exoplayer2/trackselection/m$i;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/m$i;->c(Lcom/google/android/exoplayer2/trackselection/m$i;Lcom/google/android/exoplayer2/trackselection/m$i;)I

    move-result p1

    return p1
.end method
