.class public Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->openKeyboard:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$SwitchKeyboard;->view:Landroid/view/View;

    .line 8
    return-void
.end method
