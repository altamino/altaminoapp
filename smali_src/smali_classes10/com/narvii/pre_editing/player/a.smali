.class public final synthetic Lcom/narvii/pre_editing/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/player/a;->a:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/pre_editing/player/a;->a:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v0, p1, p2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->a(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
