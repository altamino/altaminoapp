.class public final synthetic Lcom/narvii/nvplayer/delegate/-$$Lambda$StoryFeedListVideoDelegate$UQx1MpJtAF5NMhy5_kkXhU7oqH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/widget/NVImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/delegate/-$$Lambda$StoryFeedListVideoDelegate$UQx1MpJtAF5NMhy5_kkXhU7oqH4;->f$0:Lcom/narvii/widget/NVImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/delegate/-$$Lambda$StoryFeedListVideoDelegate$UQx1MpJtAF5NMhy5_kkXhU7oqH4;->f$0:Lcom/narvii/widget/NVImageView;

    invoke-static {v0}, Lcom/narvii/nvplayer/delegate/StoryFeedListVideoDelegate;->lambda$setPlayingGif$0(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
