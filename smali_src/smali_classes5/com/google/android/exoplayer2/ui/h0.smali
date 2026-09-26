.class public final synthetic Lcom/google/android/exoplayer2/ui/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/c0$l;

.field public final synthetic b:Lcom/google/android/exoplayer2/d3;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/f1;

.field public final synthetic d:Lcom/google/android/exoplayer2/ui/c0$k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/c0$l;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/ui/c0$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/h0;->a:Lcom/google/android/exoplayer2/ui/c0$l;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/h0;->b:Lcom/google/android/exoplayer2/d3;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/h0;->c:Lcom/google/android/exoplayer2/source/f1;

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/h0;->d:Lcom/google/android/exoplayer2/ui/c0$k;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/h0;->a:Lcom/google/android/exoplayer2/ui/c0$l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/h0;->b:Lcom/google/android/exoplayer2/d3;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/h0;->c:Lcom/google/android/exoplayer2/source/f1;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/h0;->d:Lcom/google/android/exoplayer2/ui/c0$k;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/ui/c0$l;->g(Lcom/google/android/exoplayer2/ui/c0$l;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/source/f1;Lcom/google/android/exoplayer2/ui/c0$k;Landroid/view/View;)V

    return-void
.end method
