.class public final synthetic Lcom/google/android/exoplayer2/trackselection/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/m$h$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/trackselection/m$d;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/d;->a:Lcom/google/android/exoplayer2/trackselection/m$d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/d;->a:Lcom/google/android/exoplayer2/trackselection/m$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/m;->r(Lcom/google/android/exoplayer2/trackselection/m$d;Ljava/lang/String;ILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
