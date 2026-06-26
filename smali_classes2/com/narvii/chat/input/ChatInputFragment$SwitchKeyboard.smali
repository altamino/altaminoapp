.class public Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwitchKeyboard"
.end annotation


# instance fields
.field openKeyboard:Z

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(ZLandroid/view/View;)V
    .locals 0

    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->openKeyboard:Z

    .line 1732
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    return-void
.end method
