.class public final synthetic Lcom/google/android/exoplayer2/drm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/h;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/e;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/e;->a:Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/drm/v$a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/g;->g(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/v$a;)V

    return-void
.end method
