.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;
.super Ljava/lang/Object;
.source "SROverlayMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$1;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
