.class Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/post/CommentPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
    iput-boolean p1, p0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;->openKeyboard:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$SwitchKeyboard;->view:Landroid/view/View;

    .line 8
    return-void
.end method
