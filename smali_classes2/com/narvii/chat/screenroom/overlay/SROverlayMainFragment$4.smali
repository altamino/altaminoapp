.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;
.super Ljava/lang/Object;
.source "SROverlayMainFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Landroid/view/View;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$202(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)Z

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$200(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 169
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$300(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$300(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/input/ChatInputFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->isAllPanelHidden()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 170
    :goto_1
    iget-object v2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$100(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    invoke-static {v2, v1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$202(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;Z)Z

    .line 174
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$200(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 175
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090999

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 177
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 178
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    iget v1, v1, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->chatListMarginEnd:I

    int-to-float v1, v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$400(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070257

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz p1, :cond_7

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    :cond_7
    new-instance p1, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4$1;-><init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$4;)V

    const-wide/16 v1, 0x64

    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return v0
.end method
