.class public final synthetic Lcom/narvii/video/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/MediaSpeedFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/f0;->a:Lcom/narvii/video/MediaSpeedFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/f0;->a:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {v0}, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$3;->a(Lcom/narvii/video/MediaSpeedFragment;)V

    return-void
.end method
