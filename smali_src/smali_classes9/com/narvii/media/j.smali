.class public final synthetic Lcom/narvii/media/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/media/YoutubePlaylistLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/YoutubePlaylistLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/j;->a:Lcom/narvii/media/YoutubePlaylistLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/media/j;->a:Lcom/narvii/media/YoutubePlaylistLayout;

    invoke-static {v0, p1}, Lcom/narvii/media/YoutubePlaylistLayout;->d(Lcom/narvii/media/YoutubePlaylistLayout;Landroid/view/View;)V

    return-void
.end method
