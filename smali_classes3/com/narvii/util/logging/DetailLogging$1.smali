.class final Lcom/narvii/util/logging/DetailLogging$1;
.super Ljava/lang/Object;
.source "DetailLogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/logging/DetailLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->flush()V

    const-wide/16 v0, 0x7530

    .line 47
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
