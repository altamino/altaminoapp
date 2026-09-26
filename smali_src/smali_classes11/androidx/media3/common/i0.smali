.class public final synthetic Landroidx/media3/common/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic b:Lcom/google/common/util/concurrent/k;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Lcom/google/common/util/concurrent/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/i0;->a:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/i0;->b:Lcom/google/common/util/concurrent/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/i0;->a:Landroidx/media3/common/SimpleBasePlayer;

    iget-object v1, p0, Landroidx/media3/common/i0;->b:Lcom/google/common/util/concurrent/k;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->t0(Landroidx/media3/common/SimpleBasePlayer;Lcom/google/common/util/concurrent/k;)V

    return-void
.end method
