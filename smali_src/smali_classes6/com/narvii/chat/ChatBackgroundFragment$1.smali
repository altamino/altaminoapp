.class Lcom/narvii/chat/ChatBackgroundFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundFragment$1;->this$0:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatBackgroundFragment$1$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatBackgroundFragment$1$1;-><init>(Lcom/narvii/chat/ChatBackgroundFragment$1;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
