.class public final synthetic Lcom/narvii/video/services/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;

.field public final synthetic b:Lcom/narvii/video/services/VideoManager;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Lcom/narvii/video/services/VideoManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/m;->a:Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;

    iput-object p2, p0, Lcom/narvii/video/services/m;->b:Lcom/narvii/video/services/VideoManager;

    iput-object p3, p0, Lcom/narvii/video/services/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/video/services/m;->a:Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;

    iget-object v1, p0, Lcom/narvii/video/services/m;->b:Lcom/narvii/video/services/VideoManager;

    iget-object v2, p0, Lcom/narvii/video/services/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/narvii/video/services/VideoManager;->a(Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Lcom/narvii/video/services/VideoManager;Ljava/lang/String;)V

    return-void
.end method
