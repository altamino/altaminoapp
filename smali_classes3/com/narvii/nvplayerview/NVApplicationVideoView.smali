.class public Lcom/narvii/nvplayerview/NVApplicationVideoView;
.super Lcom/narvii/nvplayerview/NVVideoView;
.source "NVApplicationVideoView.java"


# static fields
.field private static videoView:Lcom/narvii/nvplayerview/NVApplicationVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nvplayerview/NVVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/narvii/nvplayerview/NVApplicationVideoView;
    .locals 1

    .line 12
    sget-object v0, Lcom/narvii/nvplayerview/NVApplicationVideoView;->videoView:Lcom/narvii/nvplayerview/NVApplicationVideoView;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/narvii/nvplayerview/NVApplicationVideoView;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/NVApplicationVideoView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/narvii/nvplayerview/NVApplicationVideoView;->videoView:Lcom/narvii/nvplayerview/NVApplicationVideoView;

    .line 15
    :cond_0
    sget-object p0, Lcom/narvii/nvplayerview/NVApplicationVideoView;->videoView:Lcom/narvii/nvplayerview/NVApplicationVideoView;

    return-object p0
.end method
