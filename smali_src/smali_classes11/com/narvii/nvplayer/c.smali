.class public final synthetic Lcom/narvii/nvplayer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/nvplayer/VideoLogHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayer/VideoLogHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/c;->a:Lcom/narvii/nvplayer/VideoLogHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/nvplayer/c;->a:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-static {v0}, Lcom/narvii/nvplayer/VideoLogHelper;->a(Lcom/narvii/nvplayer/VideoLogHelper;)V

    return-void
.end method
