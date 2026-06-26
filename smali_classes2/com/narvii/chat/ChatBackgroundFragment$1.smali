.class Lcom/narvii/chat/ChatBackgroundFragment$1;
.super Ljava/lang/Object;
.source "ChatBackgroundFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatBackgroundFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatBackgroundFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatBackgroundFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 56
    new-instance v0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatBackgroundFragment$1$1;-><init>(Lcom/narvii/chat/ChatBackgroundFragment$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
