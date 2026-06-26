.class public final synthetic Lcom/narvii/nvplayer/-$$Lambda$VideoLogHelper$7wLhg1GX_z7M-Fwz6dQ1Bl8Ldgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/nvplayer/VideoLogHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayer/VideoLogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/-$$Lambda$VideoLogHelper$7wLhg1GX_z7M-Fwz6dQ1Bl8Ldgk;->f$0:Lcom/narvii/nvplayer/VideoLogHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/-$$Lambda$VideoLogHelper$7wLhg1GX_z7M-Fwz6dQ1Bl8Ldgk;->f$0:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/VideoLogHelper;->lambda$playAnotherVideo$0$VideoLogHelper()V

    return-void
.end method
