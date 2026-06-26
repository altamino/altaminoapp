.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/narvii/widget/SwipeableLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutMoved(IIII)V
    .locals 0

    sub-int/2addr p4, p3

    const/4 p1, 0x0

    .line 208
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iget-object p4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p4}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    sub-float/2addr p3, p2

    const/high16 p2, 0x434c0000    # 204.0f

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 209
    iget-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$200(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Landroid/view/View;

    move-result-object p3

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onLayoutSwiped()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$000(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$000(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;->onDismiss()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->removeSelfAndBg()V

    return-void
.end method
