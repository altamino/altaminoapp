.class public final synthetic Lcom/narvii/video/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/y;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/y;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-static {v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->z(Lcom/narvii/video/BaseViceTimeLineFragment;)V

    return-void
.end method
