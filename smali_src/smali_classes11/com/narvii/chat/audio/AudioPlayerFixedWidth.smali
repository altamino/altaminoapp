.class public Lcom/narvii/chat/audio/AudioPlayerFixedWidth;
.super Lcom/narvii/chat/audio/AudioPlayer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/audio/AudioPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected fixedWidth()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
