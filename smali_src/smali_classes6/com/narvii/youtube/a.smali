.class public final synthetic Lcom/narvii/youtube/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/youtube/YoutubeService;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/collection/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/youtube/YoutubeService;Ljava/util/List;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/youtube/a;->a:Lcom/narvii/youtube/YoutubeService;

    iput-object p2, p0, Lcom/narvii/youtube/a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/youtube/a;->c:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/youtube/a;->a:Lcom/narvii/youtube/YoutubeService;

    iget-object v1, p0, Lcom/narvii/youtube/a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/youtube/a;->c:Landroidx/collection/ArrayMap;

    invoke-static {v0, v1, v2}, Lcom/narvii/youtube/YoutubeService;->a(Lcom/narvii/youtube/YoutubeService;Ljava/util/List;Landroidx/collection/ArrayMap;)V

    return-void
.end method
