.class public final synthetic Lcom/narvii/story/detail/-$$Lambda$StoryUserView$1CNYw2z6ljrKd4XrCk2Rs7mvqMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/detail/StoryUserView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/detail/StoryUserView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$1CNYw2z6ljrKd4XrCk2Rs7mvqMo;->f$0:Lcom/narvii/story/detail/StoryUserView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/detail/-$$Lambda$StoryUserView$1CNYw2z6ljrKd4XrCk2Rs7mvqMo;->f$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-virtual {v0}, Lcom/narvii/story/detail/StoryUserView;->lambda$showTooltip$2$StoryUserView()V

    return-void
.end method
