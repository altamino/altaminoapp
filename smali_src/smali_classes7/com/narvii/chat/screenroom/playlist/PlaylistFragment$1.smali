.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutMoved(IIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p3

    .line 2
    const/4 p1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 6
    move-result p2

    .line 7
    int-to-float p2, p2

    .line 8
    .line 9
    const/high16 p3, 0x3f800000    # 1.0f

    .line 10
    mul-float/2addr p2, p3

    .line 11
    .line 12
    iget-object p4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p4}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->D(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    .line 16
    move-result-object p4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p4

    .line 21
    int-to-float p4, p4

    .line 22
    div-float/2addr p2, p4

    .line 23
    sub-float/2addr p3, p2

    .line 24
    .line 25
    const/high16 p2, 0x434c0000    # 204.0f

    .line 26
    mul-float/2addr p3, p2

    .line 27
    float-to-int p2, p3

    .line 28
    .line 29
    iget-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p3}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->u(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Landroid/view/View;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    if-gez p2, :cond_0

    .line 36
    move p2, p1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {p2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    return-void
.end method

.method public onLayoutSwiped()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->y(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->y(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;->onDismiss()V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->removeSelfAndBg()V

    .line 23
    return-void
.end method
