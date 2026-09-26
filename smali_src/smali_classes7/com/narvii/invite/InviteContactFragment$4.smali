.class Lcom/narvii/invite/InviteContactFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteContactFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;

.field final synthetic val$gd:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment;Landroid/view/GestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$4;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment$4;->val$gd:Landroid/view/GestureDetector;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$4;->val$gd:Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method
