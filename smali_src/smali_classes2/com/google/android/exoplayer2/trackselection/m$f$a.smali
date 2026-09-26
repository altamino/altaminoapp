.class Lcom/google/android/exoplayer2/trackselection/m$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/trackselection/m$f;->b(Lcom/google/android/exoplayer2/trackselection/m;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/m;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/m$f;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$f$a;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$f$a;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/m;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m;->z(Lcom/google/android/exoplayer2/trackselection/m;)V

    .line 6
    return-void
.end method

.method public onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$f$a;->val$defaultTrackSelector:Lcom/google/android/exoplayer2/trackselection/m;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/m;->z(Lcom/google/android/exoplayer2/trackselection/m;)V

    .line 6
    return-void
.end method
