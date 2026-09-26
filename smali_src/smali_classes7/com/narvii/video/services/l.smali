.class public final synthetic Lcom/narvii/video/services/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/l;->a:Lcom/narvii/video/services/VideoManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/services/l;->a:Lcom/narvii/video/services/VideoManager;

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;->a(Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method
