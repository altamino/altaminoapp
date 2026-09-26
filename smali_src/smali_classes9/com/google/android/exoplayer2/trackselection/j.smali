.class public final synthetic Lcom/google/android/exoplayer2/trackselection/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/m$h$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/trackselection/m;

.field public final synthetic b:Lcom/google/android/exoplayer2/trackselection/m$d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/trackselection/m$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/j;->a:Lcom/google/android/exoplayer2/trackselection/m;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/j;->b:Lcom/google/android/exoplayer2/trackselection/m$d;

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/j;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/j;->a:Lcom/google/android/exoplayer2/trackselection/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/j;->b:Lcom/google/android/exoplayer2/trackselection/m$d;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/j;->c:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/m;->s(Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/trackselection/m$d;ZILcom/google/android/exoplayer2/source/f1;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
