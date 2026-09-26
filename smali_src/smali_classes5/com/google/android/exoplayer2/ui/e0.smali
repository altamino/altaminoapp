.class public final synthetic Lcom/google/android/exoplayer2/ui/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/c0$e;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/c0$e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/e0;->a:Lcom/google/android/exoplayer2/ui/c0$e;

    iput p2, p0, Lcom/google/android/exoplayer2/ui/e0;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/e0;->a:Lcom/google/android/exoplayer2/ui/c0$e;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/e0;->b:I

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/c0$e;->g(Lcom/google/android/exoplayer2/ui/c0$e;ILandroid/view/View;)V

    return-void
.end method
